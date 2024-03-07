using System.IO;

namespace Advanced_SNES_ROM_Utility.Patcher
{
    class BDFPatch
    {
        public static byte[] Apply(byte[] mergedSourceROM, string bdfFilePath)
        {
            try
            {
                byte[] byteArrayBDFPatch = File.ReadAllBytes(bdfFilePath);
                MemoryStream patchedSourceROMStream = new MemoryStream();
                //DeltaQ.BsDiff.Patch(mergedSourceROM, byteArrayBDFPatch, patchedSourceROMStream);
                return patchedSourceROMStream.ToArray();
            }

            catch
            {
                return null;
            }
        }
    }
}