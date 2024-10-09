using System;
using System.IO;
using System.IO.Compression;
using System.Threading.Tasks;

namespace Snes94Hacks
{
    public static class FileExtractor
    {
        public static async Task ExtractZipFileAsync(string sourceZipFilePath, string extractionPath, bool overwrite = true)
        {
            try
            {
                // Ensure the extraction directory exists
                Directory.CreateDirectory(extractionPath);

                using (var archive = ZipFile.OpenRead(sourceZipFilePath))
                {
                    foreach (var entry in archive.Entries)
                    {
                        var destinationPath = Path.Combine(extractionPath, entry.FullName);

                        if (entry.FullName.StartsWith("Src/", StringComparison.OrdinalIgnoreCase) ||
                            entry.FullName.StartsWith("ASAR/", StringComparison.OrdinalIgnoreCase))
                        {

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
                                using (var fileStream = new FileStream(destinationPath, FileMode.CreateNew, FileAccess.Write, FileShare.None, 4096, true))
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
                // Handle any errors that might occur during extraction
                Console.WriteLine($"An error occurred during file extraction: {ex.Message}");
                throw; // Optional: re-throw if you want calling code to handle the exception as well
            }
        }
    }
}
