using System;
using System.IO;
using System.IO.Compression;
using System.Threading.Tasks;
using Microsoft.Extensions.Logging;

namespace Snes94Hacks
{
    public static class FileExtractor
{
    public static async Task ExtractZipFileAsync(string sourceZipFilePath, string extractionPath, ILogger logger, bool isDebug, bool overwrite = true)
    {
        try
        {
            // Ensure the extraction directory exists
            Directory.CreateDirectory(extractionPath);

            using (var archive = ZipFile.OpenRead(sourceZipFilePath))
            {
                foreach (var entry in archive.Entries)
                {
                    logger.LogInformation($"Processing entry: {entry.FullName}");

                    // Check if the entry is in the 'Src/' or 'ASAR/' folder at any depth
                    if (entry.FullName.Contains("/Src/", StringComparison.OrdinalIgnoreCase) ||
                        entry.FullName.Contains("/ASAR/", StringComparison.OrdinalIgnoreCase))
                    {
                        // Determine the relative path within the extraction directory
                        string relativePath;
                        if (entry.FullName.Contains("/Src/", StringComparison.OrdinalIgnoreCase))
                        {
                            relativePath = entry.FullName.Substring(entry.FullName.IndexOf("/Src/", StringComparison.OrdinalIgnoreCase) + 1);
                        }
                        else
                        {
                            relativePath = entry.FullName.Substring(entry.FullName.IndexOf("/ASAR/", StringComparison.OrdinalIgnoreCase) + 1);
                        }

                        var destinationPath = Path.Combine(extractionPath, relativePath);

                        // Log the destination path                        
                        if (isDebug) logger.LogInformation($"Extracting to: {destinationPath}");

                        // Overwrite existing files if needed
                        if (overwrite && File.Exists(destinationPath))
                        {
                            File.Delete(destinationPath);
                        }

                        // Ensure the directory of the entry exists
                        Directory.CreateDirectory(Path.GetDirectoryName(destinationPath));

                        // Extract the entry if it is not a directory
                        if (!String.IsNullOrEmpty(entry.Name))
                        {
                            using (var entryStream = entry.Open())
                            using (var fileStream = new FileStream(destinationPath, FileMode.Create, FileAccess.Write, FileShare.None, 4096, true))
                            {
                                await entryStream.CopyToAsync(fileStream);
                            }
                        }
                    }
                }
            }
        }
        catch (Exception ex)
        {
             if (isDebug) logger.LogError(ex, "An error occurred while extracting files");
        }
    }
}
}
