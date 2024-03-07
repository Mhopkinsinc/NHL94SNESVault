using System;
using System.IO;
using System.Net.Http;
using System.Threading.Tasks;

namespace Snes94Hacks
{
    public class FileDownloaderThrottle
    {
        // Download file with simulated slower speed
        public static async Task DownloadFileAsync(string url, string outputPath, int bytesPerSecond)
        {
            using (var httpClient = new HttpClient())
            {
                using (var response = await httpClient.GetAsync(url, HttpCompletionOption.ResponseHeadersRead))
                {
                    if (response.IsSuccessStatusCode)
                    {
                        // Ensure directory exists
                        var fileInfo = new FileInfo(outputPath);                        
                        Directory.CreateDirectory(fileInfo.Directory.FullName);

                        using (var stream = await response.Content.ReadAsStreamAsync())
                        using (var fileStream = new FileStream(outputPath, FileMode.Create))
                        {
                            var buffer = new byte[4096]; // Adjust buffer size as needed
                            int bytesRead;
                            var watch = System.Diagnostics.Stopwatch.StartNew();
                            while ((bytesRead = await stream.ReadAsync(buffer, 0, buffer.Length)) > 0)
                            {
                                await fileStream.WriteAsync(buffer, 0, bytesRead);
                                watch.Stop();
                                var elapsedMilliseconds = watch.ElapsedMilliseconds;
                                var requiredDelay = CalculateDelay(bytesRead, bytesPerSecond, elapsedMilliseconds);
                                if (requiredDelay > 0)
                                {
                                    await Task.Delay(requiredDelay);
                                }
                                watch.Restart();
                            }
                        }
                    }
                    else
                    {
                        Console.WriteLine("Error downloading file. Status code: " + response.StatusCode);
                    }
                }
            }
        }

        // Calculate the delay needed to match the desired bytesPerSecond
        private static int CalculateDelay(int bytesRead, int bytesPerSecond, long elapsedMilliseconds)
        {
            if (bytesPerSecond <= 0) return 0; // No throttling

            var targetTime = (bytesRead / (double)bytesPerSecond) * 1000; // Calculate target time in milliseconds
            var delay = (int)(targetTime - elapsedMilliseconds); // Calculate required delay

            return delay > 0 ? delay : 0;
        }
    }
}
