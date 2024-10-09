using System;
using System.Threading.Tasks;
using Advanced_SNES_ROM_Utility;
using Advanced_SNES_ROM_Utility.Helper;
using Advanced_SNES_ROM_Utility.Functions;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Serilog;
using Spectre.Console;
using System.IO;
using System.Runtime.InteropServices;
using System.Reflection;

namespace Snes94Hacks
{
    class Program
    {

        static async Task Main(string[] args)
        {

            #region GlobalVariables
            string romPath = "";
            string cleanedromPath = "";
            bool patchExisting = false;            
            string ASARInputFile = "main.asm";
            string ASAROutputFile = "nhl94.sfc";
            var MacOS = RuntimeInformation.IsOSPlatform(OSPlatform.OSX);
            var Linux = RuntimeInformation.IsOSPlatform(OSPlatform.Linux);
            var branchName = "";
            SNESROM _sourceROM = null;
            bool isDebug = args.Contains("--debug");
            #endregion

            #region SerilogSetup
            // Configure Serilog for file logging
            Log.Logger = new LoggerConfiguration()
                .MinimumLevel.Debug()                
                .WriteTo.File(Path.Combine(AppContext.BaseDirectory,"logs/SNES94Vault.log"), rollingInterval: RollingInterval.Day)
                .CreateLogger();

            // Set up the DI container directly in the Main method
            var serviceCollection = new ServiceCollection();
            serviceCollection.AddLogging(configure => configure.AddSerilog());
            var serviceProvider = serviceCollection.BuildServiceProvider();

            // Get the logger
            var logger = serviceProvider.GetService<ILogger<Program>>();
            #endregion

            #region DragDropFileOnStartupWinOnly            
            //This works on Windows, but you can't drag a file on terminal on MacOS on startup.
            //See AskToPatchFile for the the cross platform solution or if the user doesn't want to drag and dropo on startup
            if (args.Length > 0)
            {
                romPath = args[0];
                var mu = "[red]Rom To Be Patched! " + string.Join(" ", args) + "[/]";
                try
                {
                    AnsiConsole.MarkupLine(mu);
                    patchExisting = true;
                }
                catch (Exception ex)
                {

                    logger.LogError(ex, " ARGS Error - ");
                    logger.LogInformation(args.Length > 0 ? "Arguments: {args}" : "No arguments", args);
                    GracefulShutdown(true);
                }
                
            }
            #endregion

            #region MultiSelectHacks            
            var hacks = AnsiConsole.Prompt(
                new MultiSelectionPrompt<string>()
                    .Title("Select the hacks to enable")
                    .NotRequired() // Not required to have a hack This will build a clean ROM
                    .PageSize(20)
                    .HighlightStyle(Style.Parse("purple"))
                    .MoreChoicesText("[grey](Move up and down with arrow keys to reveal more hacks)[/]")
                    .InstructionsText(
                        "[grey](Press [blue]<space>[/] to enable/disable a hack, " +
                        "[green]<enter>[/] to build the rom)[/]")
                    .AddChoiceGroup("Penalties", new[]
                    {
                            "1 Minute Penalties", "Disable Interference Penalty","Disable Penalty Shots"
                    })
                    .AddChoiceGroup("Time / Clock", new[]
                    {
                            "Show 30 Second Periods", "Real Time Clock",
                    })
                    .AddChoiceGroup("General / Misc", new[]
                    {
                            "Def. Control ON", "Skip EA Intro", "Skip Flying Pucks Intro", "Disable Goal Posts"                            
                    })
                    .AddChoiceGroup("New Functionality", new[]
                    {
                            "Edit Lines All Positions Hack", "Pull Goalie with L+R Triggers"
                    })
                    .AddChoiceGroup("Bug Fixes", new[]
                    {
                            "Y Button Bug Fix", "Hot Cold Bonus Bug Fix", "Extra Attacker Missing Bug Fix"
                    })
                    .AddChoiceGroup("Stats", new[]
                    {
                            "Enable Body Checks For/Against", "Show Body Checks in Player Stats Page"
                    })
                    ) ;

            var selectedItemsFormatted = string.Join("\n", hacks.Select(hack => $"[blue]{hack}[/]"));

            // Show the selected hacks only if there are any selected
            if (!string.IsNullOrEmpty(selectedItemsFormatted))
            {
                var panel = new Panel(new Markup(selectedItemsFormatted))
                .Header("Selected Hacks")
                .Border(BoxBorder.Rounded);
                AnsiConsole.Write(panel);
            } 
            else 
            { AnsiConsole.MarkupLine("[bold red]No hacks selected![/]"); }
            #endregion

            #region SingleSelectHacks
            //Set time when CPU Pulls Goalie in the 3rd Period         
            var CPUPullGoalieTime = AnsiConsole.Prompt(
              new TextPrompt<int>("Set time (Seconds) for CPU's goalie pull in 3rd period:")
                  .PromptStyle("green")
                  .DefaultValue(61)
                  .ValidationErrorMessage("[red]Not a valid entry[/]")
                  .Validate(time =>
                  {
                      return time switch
                      {
                          <= 0 => ValidationResult.Error("[red]Must be at least 1 second[/]"),
                          _ => ValidationResult.Success(),
                      };
                  }));

            //Set Max Goalie Goals for CPU before pulling goalie in 3rd Period
            var CPUGoalieGoals = AnsiConsole.Prompt(
             new TextPrompt<int>("CPU's MAX deficit for goalie pull in 3rd period:")
                 .PromptStyle("green")
                 .DefaultValue(2)
                 .ValidationErrorMessage("[red]Not a valid entry[/]")
                 .Validate(time =>
                 {
                     return time switch
                     {
                         < 0 => ValidationResult.Error("[red]Cant be negative[/]"),
                         _ => ValidationResult.Success(),
                     };
                 }));
            #endregion

            #region AskToPatchROMYesNo
            // Ask the user if they want to patch an existing ROM, if the user selects yes then ask for the file path.
            // This is also used to handle cross platform where you can't drag and drop on startup. 
            if (string.IsNullOrEmpty(romPath))
            {
                try
                {
                    patchExisting = AnsiConsole.Confirm("[red]DO YOU WANT TO PATCH AN EXISTING ROM?[/]");
                    if (patchExisting)
                    {
                        romPath = AnsiConsole.Prompt(
                        new TextPrompt<string>("Drag the Rom onto this window; or enter the path:")
                        .PromptStyle("green")
                        //.DefaultValue("C:\\path\\to\\rom.smc")
                        .ValidationErrorMessage("[red]Not a valid entry[/]")
                        .Validate(path =>
                        {
                            if (string.IsNullOrWhiteSpace(path))
                           {
                               return ValidationResult.Error("[red]Path cannot be empty[/]");
                           }
                          
                           string filename = Path.GetFileName(path).TrimEnd();                          
                           string filepath = Path.GetDirectoryName(path);
                           string[] ConfigPaths = { @filepath,filename };
                           string newpath = Path.Combine(ConfigPaths);                           
                           if (MacOS || Linux) { cleanedromPath = newpath.Replace("\\", "").Replace("\\\\", "").Replace("\"", ""); } else { cleanedromPath = newpath.Replace("\"", "").Trim(); }
                           return System.IO.File.Exists(cleanedromPath) ? ValidationResult.Success() : ValidationResult.Error("[red]File does not exist[/]");                           
                           //return System.IO.File.Exists(path.Replace("\"", "").Trim()) ? ValidationResult.Success() : ValidationResult.Error("[red]File does not exist[/]");
                       }));
                        
                        romPath = cleanedromPath;
                    }                  

                }
                catch (Exception ex)
                {
                    // Inform the user about the error                
                    AnsiConsole.MarkupLine("[bold RED]Error Getting Rom Path[/]");
                    //log to File using microsoft.extensions.logging
                    logger.LogError(ex, "ROM Path Error");
                    GracefulShutdown(true);
                }
            }
            #endregion            

            #region DownloadGithubRepo
            // Download the latest version of Github Repo
            try
            {
                 // Retrieve the branch name from the assembly metadata
                branchName = Assembly.GetExecutingAssembly()
                                 .GetCustomAttributes<AssemblyMetadataAttribute>()
                                 .FirstOrDefault(attr => attr.Key == "BranchName")?
                                 .Value ?? "main";
                
                string fileUrl = $"https://github.com/Mhopkinsinc/NHL94SNESVault/archive/refs/heads/{branchName}.zip";
                string fileName = "Nhl94SnesValut.zip";
                string filePath = Path.Combine(AppContext.BaseDirectory, fileName);

                // Show a status spinner while downloading
                await AnsiConsole.Status()
                    .StartAsync("Downloading Latest Version...", async ctx =>
                    {
                        // Update the status
                        ctx.Spinner(Spectre.Console.Spinner.Known.Clock);
                        ctx.SpinnerStyle(Style.Parse("green"));

                        await FileDownloader.DownloadFileAsync(fileUrl, filePath);
                        //await FileDownloaderThrottle.DownloadFileAsync(fileUrl, filePath, 10 * 1024); // 10kb/s Used for Testing Async Throttling

                        // Download completed
                        ctx.Status("Download Completed Successfully!");
                        ctx.Spinner(Spectre.Console.Spinner.Known.Star);
                        ctx.SpinnerStyle(Style.Parse("green"));
                    });

                // Inform the user
                AnsiConsole.MarkupLine("[bold green]Download completed successfully![/]");

            }
            catch (Exception ex)
            {
                // Inform the user about the error                
                AnsiConsole.MarkupLine("[bold RED]Error Downloading Project[/]");
                //log to File using microsoft.extensions.logging
                logger.LogError(ex, "GITHUB Download Error ");
                GracefulShutdown(true);
            }
            #endregion

            #region UnzipGithubRepo
            //Unzip the Github Repo            
            try
            {
                string fileName = "Nhl94SnesValut.zip";
                string filePath = Path.Combine(AppContext.BaseDirectory, fileName);

                await AnsiConsole.Status()
                   .StartAsync("UnZipping Assembly Files...", async ctx =>
                   {
                       // Update the status
                       ctx.Spinner(Spectre.Console.Spinner.Known.Star);
                       ctx.SpinnerStyle(Style.Parse("green"));

                       var extractionPath = Path.Combine(AppContext.BaseDirectory, "ExtractedFiles");
                       await FileExtractor.ExtractZipFileAsync(filePath, extractionPath, logger, isDebug);

                       // Download completed
                       ctx.Status("Unzip Completed Successfully!");
                       ctx.Spinner(Spectre.Console.Spinner.Known.Star);
                       ctx.SpinnerStyle(Style.Parse("green"));
                   });

                // Inform the user
                AnsiConsole.MarkupLine("[bold green]Unzip completed successfully![/]");

            }
            catch (Exception ex)
            {
                // Inform the user about the error                
                AnsiConsole.MarkupLine("[bold RED]Error Extracting Project[/]");
                //log to File using microsoft.extensions.logging
                logger.LogError(ex, "Unzip Error ");
                GracefulShutdown(true);
            }
            #endregion

            #region EditRomConfigFileMultiHacks
            //Apply the Hacks to the configuration file based on the user selection
            foreach (var hack in hacks)
            {
                try
                {
                    string[] ConfigPaths = {@"ExtractedFiles", "Src", "Config.asm"};
                    //Update the ExtractedFiles\\NHL94SNESVault-main\\Src\\Config.asm file and set the variables
                    if (hack == "Def. Control ON")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!Defense_Control", "1");  //Enables Defense Control
                    }
                    else if (hack == "Show 30 Second Periods")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!Thirty_Second_Period", "1"); //Enables 30 Second Periods
                    }
                    else if (hack == "Real Time Clock")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!Real_Time_Clock", "1"); //Enables the Real Time Clock
                    }
                    else if (hack == "Pull Goalie with L+R Triggers")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!Manual_Pull_Goalie", "1"); //Enables the Manual Pull Goalie
                    }
                    else if (hack == "1 Minute Penalties")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!One_Minute_Penalties", "1"); //Enables 1 Minute Penalties
                    }
                    else if (hack == "Disable Interference Penalty")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!Interference_Penalty", "0"); //Disables the Interference Penalty
                    }
                    else if (hack == "Disable Penalty Shots")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!PenaltyShot", "0"); //Disables the Penalty Shots
                    }
                    else if (hack == "Disable Goal Posts")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!GoalPosts", "0"); //Disables the Goal Posts
                    }
                    else if (hack == "Y Button Bug Fix")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!Y_Button_Bugfix", "1"); //Enables the Y Button Bug Fix
                    }
                    else if (hack == "Skip EA Intro")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!EA_Intro", "0"); //Disables the EA Intro
                    }
                    else if (hack == "Skip Flying Pucks Intro")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!FlyingPucks_Intro", "0"); //Disables the Flying Pucks Intro
                    }
                    else if (hack == "Hot Cold Bonus Bug Fix")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!HotCold_Bugfix", "1"); //Enables the Hot Cold Bonus Bug Fix
                    }
                    else if (hack == "Extra Attacker Missing Bug Fix")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!ExtraAttacker_Bugfix", "1"); //Enables the Extra Attacker Bug Fix
                    }
                    else if (hack == "Edit Lines All Positions Hack")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!ExtraAttacker_Bugfix", "1"); //Enables the Extra Attacker Bug Fix
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!ForwardsAndDefense_Hack", "1"); //Enables the Forwards and Defense Hack
                    }
                    else if (hack == "Enable Body Checks For/Against")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!PlayerStat_BodyChecks", "1"); //Enables BodyCheck Stats in RAM                        
                    }
                    else if (hack == "Show Body Checks in Player Stats Page")
                    {
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!PlayerStat_BodyChecks", "1"); //Enables BodyCheck Stats in RAM
                        await FileModifier.UpdateFileAsync(ConfigPaths, "!PlayerStat_BodyChecks_Display", "1"); //Enables the Display of BodyCheck For Stats in UI
                    }

                }
                catch (Exception ex)
                {
                    // Inform the user about the error                
                    AnsiConsole.MarkupLine("[bold RED]Error Modifying Config.ASM File[/]");
                    //log to File using microsoft.extensions.logging
                    logger.LogError(ex, "Config.ASM CPU Goalie Update Error");
                    GracefulShutdown(true);
                }
            }
            #endregion

            #region EditRomConfigFileIndividualHacks
            //Set the CPU Pull Goalie Time and CPU Goalie Goals
            try
            {
                string[] ConfigPaths = { @"ExtractedFiles", "Src", "Config.asm" };
                await FileModifier.UpdateFileAsync(ConfigPaths, "!CPU_Pull_Goalie_Time_Left", CPUPullGoalieTime.ToString());
                await FileModifier.UpdateFileAsync(ConfigPaths, "!CPU_Pull_Goalie_Goal_Diff", CPUGoalieGoals.ToString());
            }
            catch (Exception ex)
            {
                // Inform the user about the error                
                AnsiConsole.MarkupLine("[bold RED]Error Modifying Config.ASM for CPU Pull Goalie hack[/]");
                //log to File using microsoft.extensions.logging
                logger.LogError(ex, "Config.ASM Update Error");
                GracefulShutdown(true);
            }
            #endregion

            #region EditDizSettings            
            {
                //Set the PatchROM variable in the DizSettings.asm file                
                try
                {
                    string[] ConfigPaths = { @"ExtractedFiles", "Src", "DizSettings.asm" };
                    await FileModifier.UpdateFileAsync(ConfigPaths, "!PatchROM", patchExisting ? "1" : "0");
                }
                catch (Exception ex)
                {
                    // Inform the user about the error                
                    AnsiConsole.MarkupLine("[bold RED]Error Modifying Config.ASM for CPU Pull Goalie hack[/]");
                    //log to File using microsoft.extensions.logging
                    logger.LogError(ex, "DizSettings.ASM Update Error");
                    GracefulShutdown(true);
                }
            }
            #endregion

            #region PatchExistingRom
            if (patchExisting)
            {
                try
                {
                    bool _hadHeader = false;
                    string romPathextension = Path.GetExtension(romPath);
                    string _origRomPathExtension = romPathextension;
                    _sourceROM = new SNESROM(romPath);                    

                    if (_sourceROM.SourceROM == null) { return; }
                    if (_sourceROM.SourceROMSMCHeader != null) { _sourceROM.RemoveHeader(); _hadHeader = true; }
                    if (romPathextension != ".sfc") { romPathextension = ".sfc"; }
                    var patchedRomPath = romPath.Replace(_origRomPathExtension, $"_Patched{romPathextension}");
                    var patchedRomFileName = Path.GetFileName(patchedRomPath);
                    var outputPath = Path.Combine(AppContext.BaseDirectory, patchedRomFileName);                    
                    System.IO.File.WriteAllBytes(outputPath, _sourceROM.SourceROM);                    
                    ASAROutputFile = patchedRomFileName;
                    
                }
                catch (Exception ex)
                {
                    // Inform the user about the error                
                    AnsiConsole.MarkupLine("[bold RED]Error Copying Rom[/]");
                    //log to File using microsoft.extensions.logging
                    logger.LogError(ex, "ROM Copy Error");
                    GracefulShutdown(true);
                }
            }
            #endregion

            #region BuildRomASAR
            //Build the Rom
            try
            {               
                
                // Asynchronous
                await AnsiConsole.Progress()
                     .AutoClear(false)
                        .Columns(new ProgressColumn[]
                        {
                                new TaskDescriptionColumn(),    // Task description
                                new ProgressBarColumn(),        // Progress bar
                                new PercentageColumn(),         // Percentage
                                new RemainingTimeColumn(),      // Remaining time
                                new SpinnerColumn(),            // Spinner
                        })
                    .StartAsync(async ctx =>
                    {
                        // Define tasks
                        var task1 = ctx.AddTask("[green]Building Rom[/]");

                        while (!ctx.IsFinished)
                        {
                            // Simulate some work
                            await ProcessLauncher.StartProcessAsync(ASARInputFile,ASAROutputFile);

                            // Increment
                            task1.Increment(50);
                        }                        
                    });                

                // Inform the user                
                AnsiConsole.MarkupLine($"[bold Green]Successfully Created Headerdless Version (SFC): {ASAROutputFile}[/]");

            }
            catch (Exception ex)
            {

                // Inform the user about the error                
                AnsiConsole.MarkupLine("[bold RED]Error Building the ROM[/]");
                //log to File using microsoft.extensions.logging
                logger.LogError(ex, " ASAR Error - ");
                GracefulShutdown(true);
            }
            #endregion

            #region PostBuildCleanup
            //Create a Headerd Version of the ROM If it was patched
            if (_sourceROM != null)
            {
                try
                {
                    _sourceROM = new SNESROM(Path.Combine(AppContext.BaseDirectory, ASAROutputFile));
                    _sourceROM.AddHeader();
                    string romPathextension = ".smc";
                    var patchedRomFileName = Path.GetFileNameWithoutExtension(romPath);
                    string FileNameAndExtension = "";
                    if (patchedRomFileName.Contains(".")) { FileNameAndExtension = patchedRomFileName + "_Patched.smc"; } else {  FileNameAndExtension = Path.ChangeExtension(patchedRomFileName + "_Patched", romPathextension); }                    
                    byte[] haderedROM = new byte[_sourceROM.SourceROMSMCHeader.Length + _sourceROM.SourceROM.Length];
                    Buffer.BlockCopy(_sourceROM.SourceROMSMCHeader, 0, haderedROM, 0, _sourceROM.SourceROMSMCHeader.Length);
                    Buffer.BlockCopy(_sourceROM.SourceROM, 0, haderedROM, _sourceROM.SourceROMSMCHeader.Length, _sourceROM.SourceROM.Length);
                    System.IO.File.WriteAllBytes(Path.Combine(AppContext.BaseDirectory, FileNameAndExtension), haderedROM);
                    AnsiConsole.MarkupLine($"[bold Green]Successfully Created Headerd Version (SMC) Required for Statto's editor: {FileNameAndExtension}[/]");
                }
                catch (Exception ex)
                {
                    // Inform the user about the error                
                    AnsiConsole.MarkupLine("[bold RED]Error Adding Header to ROM[/]");
                    //log to File using microsoft.extensions.logging
                    logger.LogError(ex, "Header Error - ");
                    GracefulShutdown(true);
                }
            }

            //Clean up the files
            try
            {
                string fileName = "Nhl94SnesValut.zip";
                string filePath = Path.Combine(AppContext.BaseDirectory, fileName);
                string extractionPath = Path.Combine(AppContext.BaseDirectory, "ExtractedFiles");                

                AnsiConsole.MarkupLine("[bold Green]Cleaning Up Files[/]");
                if (File.Exists(filePath))
                {
                    File.Delete(filePath);
                }
                if (Directory.Exists(extractionPath))
                {
                    Directory.Delete(extractionPath, true);
                }                
            }
            catch (Exception ex)
            {
                // Inform the user about the error                
                AnsiConsole.MarkupLine("[bold RED]Error Cleaning Up Files[/]");
                //log to File using microsoft.extensions.logging
                logger.LogError(ex, "Cleanup Error - ");
                GracefulShutdown(true);
            }
            #endregion

            GracefulShutdown(false);

            #region GracefulShutdown
            static void GracefulShutdown(bool hasErrorOccured)
            { 
                if (hasErrorOccured) {
                    AnsiConsole.MarkupLine("[bold red]Error Log Created, Please review and create a bug report. Press any key to exit[/]");
                }
                // Perform cleanup actions here
                AnsiConsole.MarkupLine("[bold red]Press any key to exit![/]");
                Log.CloseAndFlush();
                Console.ReadKey(true);                    
                Environment.Exit(0);
            }
            #endregion

        }
    }
}