
using System.Runtime.CompilerServices;

namespace Snes94Hacks
{
    internal class FileModifier
    {
        internal static async Task UpdateFileAsync(string[] ConfigASMPath, string HackVariable, string HackValue)
        {
            var ConfigPath = Path.Combine(ConfigASMPath);
            var filepath = Path.Combine(AppContext.BaseDirectory,ConfigPath);
            string[] lines = await File.ReadAllLinesAsync(filepath);
            for (int i = 0; i < lines.Length; i++)
            {
                if (lines[i].Contains(HackVariable))
                {
                    lines[i] = $"{HackVariable} = {HackValue};";
                    break;
                }
            }
            await File.WriteAllLinesAsync(filepath, lines);
        }
    }
}