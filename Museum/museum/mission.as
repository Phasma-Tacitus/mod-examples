// DESCRIPTION:
//      Museum
// 
// This is a demonstration mission, highlighting the engine's features of System Shock.
// This mission is the byproduct of a YouTube series describing various elements of modding the game.
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
    RestabSetBase("mission", "museum-data/archive.dat");

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

    // This mission does not include localized data, so it defaults to the English variants

    RestabAddPatch("mfdart", "museum-data/mfdart.res");

    if (lang == "french")
    {
        RestabSetBase("svga_death", "svgadeth.res");
        RestabSetBase("svga_intro", "svfrintr.res");
        RestabSetBase("svga_end", "svgaend.res");
        RestabSetBase("lowres_death", "lowdeath.res");
        RestabSetBase("lowres_intro", "lofrintr.res");
        RestabSetBase("lowres_end", "lowend.res");
        RestabSetBase("strings", "museum-data/cybstrng.res");
        RestabSetBase("alog", "museum-data/citalog.res");
        RestabSetBase("bark", "frnbark.res");
    }
    else if (lang == "german")
    {
        RestabSetBase("svga_death", "svgadeth.res");
        RestabSetBase("svga_intro", "svgeintr.res");
        RestabSetBase("svga_end", "svgaend.res");
        RestabSetBase("lowres_death", "lowdeath.res");
        RestabSetBase("lowres_intro", "logeintr.res");
        RestabSetBase("lowres_end", "lowend.res");
        RestabSetBase("strings", "museum-data/cybstrng.res");
        RestabSetBase("alog", "museum-data/citalog.res");
        RestabSetBase("bark", "gerbark.res");
    }
    else // default to english
    {
        RestabSetBase("svga_death", "svgadeth.res");
        RestabSetBase("svga_intro", "svgaintr.res");
        RestabSetBase("svga_end", "svgaend.res");
        RestabSetBase("lowres_death", "lowdeath.res");
        RestabSetBase("lowres_intro", "lowintr.res");
        RestabSetBase("lowres_end", "lowend.res");
        RestabSetBase("strings", "museum-data/cybstrng.res");
        RestabSetBase("alog", "museum-data/citalog.res");
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
    	SetTitle("Museum");
        SetDescription("A museum of engine features.\nShowcase for modders, and the result of a YouTube series.\nEnglish only.");
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
