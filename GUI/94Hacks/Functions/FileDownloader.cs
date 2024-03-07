using System;
using System.IO;
using System.Net.Http;
using System.Threading.Tasks;

namespace Snes94Hacks
{
    public class FileDownloader
    {
        public static async Task DownloadFileAsync(string url, string outputPath)
        {
            using (var httpClient = new HttpClient())
            {
                using (var response = await httpClient.GetAsync(url))
                {
                    if (response.IsSuccessStatusCode)
                    {
                        using (var stream = await response.Content.ReadAsStreamAsync())
                        using (var fileStream = new FileStream(outputPath, FileMode.Create))
                        {
                            await stream.CopyToAsync(fileStream);
                        }
                    }
                    else
                    {
                        Console.WriteLine("Error downloading file. Status code: " + response.StatusCode);
                    }
                }
            }
        }
    }
}
