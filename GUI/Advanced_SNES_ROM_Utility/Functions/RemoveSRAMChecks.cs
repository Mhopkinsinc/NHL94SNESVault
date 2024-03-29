﻿using System.Collections.Generic;
using Advanced_SNES_ROM_Utility.Helper;

namespace Advanced_SNES_ROM_Utility.Functions
{
    public static partial class SNESROMFunction
    {
        public static bool RemoveSRAMChecks(this SNESROM sourceROM, bool unlock = true)
        {
            IDictionary<string, string> lockingCodeDictionary = new Dictionary<string, string>();

            if (sourceROM.ByteSRAMSize > 0x00)
            {
                if (sourceROM.StringMapMode.Contains("LoROM"))
                {
                    List<string> excludedTitles = new List<string> { "OHCHAN NO LOGIC" };

                    if (sourceROM.ByteSRAMSize == 0x03 || excludedTitles.Contains(sourceROM.StringTitle.Trim()))
                    {
                        lockingCodeDictionary.Add(@"(8F|9F)(\w{4})(70)(CF|DF)(\w{4})(70)(D0)", "$1 $2 $3 $4 $5 $6 EA EA");
                        lockingCodeDictionary.Add(@"(8F|9F)(\w{4})(70)(CF|DF)(\w{4})(70)(F0)", "$1 $2 $3 $4 $5 $6 80");
                    }

                    else
                    {
                        lockingCodeDictionary.Add(@"(8F|9F)(\w{4})(70)(CF|DF)(\w{4})(70)(D0)", "$1 $2 $3 $4 $5 $6 80");
                        lockingCodeDictionary.Add(@"(8F|9F)(\w{4})(70)(CF|DF)(\w{4})(70)(F0)", "$1 $2 $3 $4 $5 $6 EA EA");
                    }

                    lockingCodeDictionary.Add(@"(A90000A2FE1FDF000070)(D0)", "$1 EA EA");                                                   // Super Metroid
                    lockingCodeDictionary.Add(@"(8F)(\w{4})(77E2)(\w{2})(AF)(\w{4})(77C9)(\w{2})(F0)", "$1 $2 $3 $4 $5 $6 $7 $8 80");       // Uniracers / Unirally
                    lockingCodeDictionary.Add(@"(CA10F838EF1A8081)(8D)", "$1 9C");                                                          // Kirby's Dream Course
                    lockingCodeDictionary.Add(@"(81CA10F8CF398087)(F0)", "$1 80");                                                          // Kirby's Dream Course

                    return SNESROMHelper.FindAndReplaceByRegEx(sourceROM, lockingCodeDictionary, unlock);
                }

                else if (sourceROM.StringMapMode.Contains("HiROM"))
                {
                    if (sourceROM.StringTitle.Contains("DONKEY KONG COUNTRY") || sourceROM.StringTitle.Contains("SUPER DONKEY KONG")) { lockingCodeDictionary.Add(@"(8F|9F)(57|59)(60|68)(30|31|32|33)(CF|DF)(57|59)(60)(30|31|32|33)(D0)", "$1 $2 $3 $4 $5 $6 $7 $8 EA EA"); }    // Donkey Kong Country

                    if (sourceROM.StringTitle.Contains("DONKEY KONG COUNTRY")) { lockingCodeDictionary.Add(@"(8F|9F)(\w{4})(30|31|32|33)(CF|DF)(\w{4})(30|31|32|33)(D0)", "$1 $2 $3 $4 $5 $6 EA EA"); }
                    else { lockingCodeDictionary.Add(@"(8F|9F)(\w{4})(30|31|32|33)(CF|DF)(\w{4})(30|31|32|33)(D0)", "$1 $2 $3 $4 $5 $6 80"); }

                    if (!sourceROM.StringTitle.Contains("EARTH BOUND")) { lockingCodeDictionary.Add(@"(8F|9F)(\w{4})(30|31|32|33)(CF|DF)(\w{4})(30|31|32|33)(F0)", "$1 $2 $3 $4 $5 $6 EA EA"); }

                    lockingCodeDictionary.Add(@"(8F|9F)(\w{4})(30|31|32|33)(AF)(\w{4})(30|31|32|33)(C9)(\w{4})(D0)", "$1 $2 $3 $4 $5 $6 $7 $8 80");

                    lockingCodeDictionary.Add(@"(AF|BF)(\w{2})(FF)(80|C0)(CF|DF)(\w{2})(FF40)(F0)", "$1 $2 $3 $4 $5 $6 $7 80");                    // Breath of Fire II
                    lockingCodeDictionary.Add(@"(AF|BF)(\w{4})(30|31|32|33)(CF|DF)(\w{4})(30|31|32|33)(F0)", "$1 $2 $3 $4 $5 $6 80");              // Breath of Fire II
                    lockingCodeDictionary.Add(@"(8F|AF)(\w{4})(B0CF)(\w{4})(B1)(D0)", "$1 $2 $3 $4 $5 EA EA");                                     // Mario no Super Picross
                    lockingCodeDictionary.Add(@"(2638E94812C9AF71)(F0)", "$1 80");                                                                 // Donkey Kong Country 2 - Diddy's Kong Quest
                    lockingCodeDictionary.Add(@"(A05C2F7732E9C704)(F0)", "$1 80");                                                                 // Donkey Kong Country 2 - Diddy's Kong Quest
                    lockingCodeDictionary.Add(@"(4B4F4E4700F8)(F7)", "$1 F8");                                                                     // Donkey Kong Country 2 - Diddy's Kong Quest
                    lockingCodeDictionary.Add(@"(A9C3)(80DD)(FFFF)(F06C)", "$1 F0 CC $3 80 7D");                                                   // Donkey Kong Country 3 - Dixie Kong's Double Trouble
                    lockingCodeDictionary.Add(@"(D0F4ABCFAEFF00D0)(01)", "$1 00");                                                                 // Front Mission - Gun Hazard
                    lockingCodeDictionary.Add(@"(1A8FF07F)(31|32)(CFF0)", "$1 30 $3");                                                             // Earthbound

                    return SNESROMHelper.FindAndReplaceByRegEx(sourceROM, lockingCodeDictionary, unlock);
                }
            }

            else
            {
                if (sourceROM.StringMapMode.Contains("LoROM"))
                {
                    lockingCodeDictionary.Add(@"(8F|9F)(\w{4})(70)(CF|DF)(\w{4})(70)(F0)", "$1 $2 $3 $4 $5 $6 EA EA");                                                          // Mega Man X
                    lockingCodeDictionary.Add(@"(AF|BF)(\w{2})(8000)(CF|DF)(\w{2})(8040)(F0)", "$1 $2 $3 $4 $5 $6 80");                                                         // Mega Man X
                    lockingCodeDictionary.Add(@"(AF|BF)(\w{2})(FF)(80|C0)(CF|DF)(\w{2})(FF40)(F0)", "$1 $2 $3 $4 $5 $6 $7 80");                                                 // Demon's Crest
                    lockingCodeDictionary.Add(@"(8F)(\w{4})(70AF)(\w{4})(70C9)(\w{4})(D0)", "$1 $2 $3 $4 $5 $6 80");                                                            // Tetris Attack
                    lockingCodeDictionary.Add(@"(C230)(ADCF1F)(C95044D0)", "$1 4C D1 80 $3");                                                                                   // Tetris Attack
                    lockingCodeDictionary.Add(@"(AF481F00F00CC220B9081C49FFFF1A99081C6BDA5A8D0002)(78F8)(AD220238ED00028D2202)(D858)(22629600)", "$1 80 00 $3 80 00 $5");       // Beavis & Butthead

                    return SNESROMHelper.FindAndReplaceByRegEx(sourceROM, lockingCodeDictionary, unlock);
                }

                else if (sourceROM.StringMapMode.Contains("HiROM"))
                {
                    lockingCodeDictionary.Add(@"(5C7FD08318FB78C230)", "EAEAEAEAEAEAEAEAEA");           // Killer Instinct
                    lockingCodeDictionary.Add(@"(22085C10B028)", "EAEAEAEAEAEA");                       // BS The Legend of Zelda Remix
                    lockingCodeDictionary.Add(@"(DAE230C9)(01)(F018C9)(02)", "$1 09 $3 07");            // BS The Legend of Zelda Remix
                    lockingCodeDictionary.Add(@"(29FF00C9)(07)(009016)", "$1 00 $3");                   // BS The Legend of Zelda Remix

                    return SNESROMHelper.FindAndReplaceByRegEx(sourceROM, lockingCodeDictionary, unlock);
                }
            }

            return false;
        }
    }
}