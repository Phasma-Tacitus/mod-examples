// DESCRIPTION:
//      Cortex Reaver Challenge
// 
// This was the "original" first fan mission for System Shock.
// Though not as fancy as the one hitting the news, it was at least a milestone and
// proof-of-concept for the editor of InkyBlackness.
//

//
// LoadMission()
//
// Event:   User loads a new mission
// Subject: Current mission only
//
void LoadMission(void)
{
    kStr scriptDir;    
    Sys.GetCvarValue("script_dir", scriptDir);
	DatapathAdd("savegame", scriptDir);

    DatapathAdd("res", scriptDir);
    RestabSetBase("mission", "crc-data/archive.dat");

    RestabSetBase("gamescr", "mac_gamescr.res");
    RestabSetBase("objart", "objart.res");
    RestabSetBase("objart2", "objart2.res");
    RestabSetBase("objart3", "objart3.res");
    RestabSetBase("obj3d", "obj3d.res");
    RestabSetBase("citmat", "citmat.res");
    RestabSetBase("digifx", "digifx.res");
    RestabSetBase("texture", "texture.res");
    RestabSetBase("vidmail", "vidmail.res");
    RestabSetBase("objprop", "objprop.dat");
    RestabSetBase("textprop", "textprop.dat");
    RestabSetBase("digiparm", "digiparm.bin");
    RestabSetBase("handart", "mac_handart.res");
    RestabAddPatch("handart", "mac_handart.patch.res");
}

//
// ChangeLanguage()
//
// Event:   User changes language or loads a new mission
// Subject: Current mission only
//
void ChangeLanguage(void)
{
    kStr lang;
    Sys.GetCvarValue("language", lang);

    if (lang == "french")
    {
        RestabSetBase("svga_death", "svgadeth.res");
        RestabSetBase("svga_intro", "svfrintr.res");
        RestabSetBase("svga_end", "svgaend.res");
        RestabSetBase("lowres_death", "lowdeath.res");
        RestabSetBase("lowres_intro", "lofrintr.res");
        RestabSetBase("lowres_end", "lowend.res");
        RestabSetBase("strings", "frnstrng.res");
        //RestabSetBase("strings", "frnstrng.cp1252.res");
        RestabAddPatch("strings", "frnstrng.patch.res");
        RestabSetBase("bark", "frnbark.res");
        RestabSetBase("alog", "frnalog.res");    
    }
    else if (lang == "german")
    {
        RestabSetBase("svga_death", "svgadeth.res");
        RestabSetBase("svga_intro", "svgeintr.res");
        RestabSetBase("svga_end", "svgaend.res");
        RestabSetBase("lowres_death", "lowdeath.res");
        RestabSetBase("lowres_intro", "logeintr.res");
        RestabSetBase("lowres_end", "lowend.res");
        RestabSetBase("strings", "gerstrng.res");
        //RestabSetBase("strings", "gerstrng.cp1252.res");
        RestabAddPatch("strings", "gerstrng.patch.res");
        RestabSetBase("bark", "gerbark.res");
        RestabSetBase("alog", "geralog.res");
    }
    else // default to english
    {
        RestabSetBase("svga_death", "svgadeth.res");
        RestabSetBase("svga_intro", "svgaintr.res");
        RestabSetBase("svga_end", "svgaend.res");
        RestabSetBase("lowres_death", "lowdeath.res");
        RestabSetBase("lowres_intro", "lowintr.res");
        RestabSetBase("lowres_end", "lowend.res");
        RestabSetBase("strings", "cybstrng.res");
        RestabAddPatch("strings", "cybstrng.patch.res");
        RestabSetBase("alog", "citalog.res");
        RestabSetBase("bark", "citbark.res");
    }
}

//
// OfflineChangeLanguage()
//
// Event:   User changes language or loads a new mission
// Subject: Every mission detected in "missions" folder
//
void OfflineChangeLanguage(void)
{
    kStr lang;
    Sys.GetCvarValue("language", lang);

    {
    	SetTitle("Cortex Reaver Challenge");
        SetDescription("You start in a big room with an endless stream\nof Cortex Reavers spawning in.\nHow long can you survive?");
    }
}

//
// Register()
//
// Event:   Game startup
// Subject: Every mission detected in "missions" folder
//
void Register(void)
{
}
