// ProcessLauncher.cs
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Threading.Tasks;

namespace Snes94Hacks
{
    public class ProcessLauncher
    {
        public static async Task StartProcessAsync(string InputFile, String OutputFileName)
        {
            await Task.Run(() =>
            {
                using (Process process = new Process())
                {
                    //run external process and capture output from that process                    
                    string asarPath = "";
                    string mainASMPath = "";                    
                    var os = RuntimeInformation.IsOSPlatform(OSPlatform.OSX);
                    var filepath = "";
                    var exportPath = Path.Combine(AppContext.BaseDirectory, OutputFileName);
                    

                    if (System.OperatingSystem.IsWindows())
                    {
                        asarPath = "ExtractedFiles\\ASAR\\windows\\asar.exe";
                        filepath = Path.Combine(AppContext.BaseDirectory, asarPath);
                        mainASMPath = Path.Combine(AppContext.BaseDirectory, $"ExtractedFiles\\Src\\{InputFile}");
                    }
                    else if (System.OperatingSystem.IsLinux())
                    {
                        asarPath = "ExtractedFiles/ASAR/linux/asar";
                        filepath = Path.Combine(AppContext.BaseDirectory, asarPath);
                        mainASMPath = Path.Combine(AppContext.BaseDirectory, $"ExtractedFiles/Src/{InputFile}");
                    }
                    else if (System.OperatingSystem.IsMacOS())
                    {
                        asarPath = "ExtractedFiles/ASAR/osx/asar";
                        filepath = Path.Combine(AppContext.BaseDirectory, asarPath);
                        mainASMPath = Path.Combine(AppContext.BaseDirectory, $"ExtractedFiles/Src/{InputFile}");                        
                        File.SetUnixFileMode(filepath,UnixFileMode.UserExecute); //Sets asar file to be executable on MAC
                    }                   

                    process.StartInfo.FileName = filepath;
                    process.StartInfo.Arguments = $"--fix-checksum=off \"{mainASMPath}\" \"{exportPath}\""; //arguments to pass to the exe
                    process.StartInfo.RedirectStandardOutput = true;
                    process.StartInfo.UseShellExecute = false;
                    process.Start();
                    var output = process.StandardOutput.ReadToEnd();
                    process.WaitForExit();
                }
            });
        }
    }
}