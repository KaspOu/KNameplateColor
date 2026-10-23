-------------------------------------------------------------------------------
-- German localization (ChatGPT)
-------------------------------------------------------------------------------

local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Deaktiviert: Konflikt mit %s";

l.SUBTITLE      = "Farbgebung der Infobalken";
l.DESC          = "Färbt Namensplaketten / Namen "..l.YL.."(außerhalb von Instanzen)|r\n\n"
.." - Verbündete und Feinde\n\n"
.." - Verwaltet Namen- und Balkenfarbe\n\n"
.." - Standardmäßig, nach Klasse oder eine Farbe Ihrer Wahl\n\n"
.." - PvP-Symbole hinzufügen |TInterface/PVPFrame/PVP-Currency-Alliance:16|t|TInterface/PVPFrame/PVP-Currency-Horde:16|t, und weitere Optionen...\n\n"
.." - Zeigt Spielerlevel an\n\n"
l.OPTIONS_TITLE = format("%s - Optionen", l.VERS_TITLE);

l.MSG_LOADED         = format("%s geladen und aktiv", l.VERS_TITLE);

l.INIT_FAILED = format("%s nicht korrekt initialisiert (Konflikt?)!", l.VERS_TITLE);

local required = l.YL.."*";
-- KNC START
l.OPTION_OTHERS_HEADER = "Infobalken";
l.OPTION_NAMEPLATES_USECOLOR_BLIZZARD = l.DEFAULT.."Standard";
l.OPTION_NAMEPLATES_USECOLOR_CLASS = "Klassenfarben";
l.OPTION_NAMEPLATES_USECOLOR_CUSTOM = "Ihre Farbauswahl: ";
l.OPTION_NAMEPLATES_SHOWPVPICONS_BLIZZARD = l.DEFAULT.."Kein Symbol";
l.OPTION_NAMEPLATES_SHOWPVPICONS_FACTION = "Fraktionssymbol |TInterface/PVPFrame/PVP-Currency-Alliance:16|t - |TInterface/PVPFrame/PVP-Currency-Horde:16|t";
l.OPTION_NAMEPLATES_COLOR_UNDER = "Farbe, wenn niedriger";
l.OPTION_NAMEPLATES_COLOR_UNDER_TOOLTIP = "Wählen Sie die Farbe des Levels, wenn es niedriger ist als Ihres";
l.OPTION_NAMEPLATES_COLOR_OVER = "Farbe, wenn höher";
l.OPTION_NAMEPLATES_COLOR_OVER_TOOLTIP = "Wählen Sie die Farbe des Levels, wenn es höher ist als Ihres";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER = l.DEFAULT.."Nie";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER_TOOLTIP = "Zeigt niemals das Level auf Infobalken an.";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT = "Wenn anders als Ihres";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT_COLORED = "Wenn anders als Ihres, farbig";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS = "Immer";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS_COLORED = "Immer, farbig";

l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR = "Verbündete Namen";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Farbe des Namens auf verbündeten Infobalken (außerhalb von Instanzen)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR = "Verbündete Balken";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Farbe der verbündeten Infobalken (außerhalb von Instanzen)"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE = "Textur verbündeter Balken"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Textur der verbündeten Infobalken (außerhalb von Instanzen)"
l.OPTION_FRIENDSNAMEPLATES_PVPICONS = "Verbündete PvP-Symbole";
l.OPTION_FRIENDSNAMEPLATES_PVPICONS_TOOLTIP = "Zeigt PvP-Symbole auf verbündeten Namen an.";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL = "Verbündete Level";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Zeigt das Level auf verbündeten Infobalken an.";

l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR = "Feindliche Namen";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Farbe des Namens auf feindlichen Infobalken (außerhalb von Instanzen)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR = "Feindliche Balken";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Farbe der feindlichen Infobalken (außerhalb von Instanzen)";
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE = "Textur feindlicher Balken"
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Textur der feindlichen Infobalken (außerhalb von Instanzen)"
l.OPTION_ENEMIESNAMEPLATES_PVPICONS = "Feindliche PvP-Symbole";
l.OPTION_ENEMIESNAMEPLATES_PVPICONS_TOOLTIP = "Zeigt PvP-Symbole auf feindlichen Namen an.";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL = "Feindliche Level";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Zeigt das Level auf feindlichen Infobalken an.";
-- KNC END

l.OPTION_RESET_OPTIONS = "Optionen zurücksetzen";
l.OPTION_RELOAD_REQUIRED = "Einige änderungen erfordern einen Neuladen (tippen Sie: "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": Optionen, die einen Neuladen erfordern";

l.OPTION_SHOWMSGNORMAL = l.GYL.."Nachrichten anzeigen";
l.OPTION_SHOWMSGWARNING = l.GYL.."Warnungen anzeigen";
l.OPTION_SHOWMSGERR = l.GYL.."Fehler anzeigen";
l.OPTION_COMPARTMENT_FILTER = "Im Fachfilter anzeigen"..required;
l.OPTION_COMPARTMENT_FILTER_TOOLTIP = "In der Addon-Liste oben rechts";
l.OPTION_WHATSNEW = "Neuigkeiten";
