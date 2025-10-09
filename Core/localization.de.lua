-------------------------------------------------------------------------------
-- German localization (ChatGPT)
-------------------------------------------------------------------------------
if (GetLocale() ~= "deDE") then return end
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Deaktiviert: Konflikt mit %s";

l.SUBTITLE      = "Farbgebung der Infobalken";
l.DESC          = "F\195\164rbt Namensplaketten / Namen "..l.YL.."(au\195\159erhalb von Instanzen)|r\n\n"
.." - Verb\195\188ndete und Feinde\n\n"
.." - Verwaltet Namen- und Balkenfarbe\n\n"
.." - Standardm\195\164\195\159ig, nach Klasse oder eine Farbe Ihrer Wahl\n\n"
.." - PvP-Symbole hinzuf\195\188gen |TInterface/PVPFrame/PVP-Currency-Alliance:16|t|TInterface/PVPFrame/PVP-Currency-Horde:16|t, und weitere Optionen...\n\n"
.." - Zeigt Spielerlevel an\n\n"
l.OPTIONS_TITLE = format("%s - Optionen", l.VERS_TITLE);

l.MSG_LOADED         = format("%s geladen und aktiv", l.VERS_TITLE);

l.INIT_FAILED = format("%s nicht korrekt initialisiert (Konflikt?)!", l.VERS_TITLE);

-- KNC START
l.OPTION_OTHERS_HEADER = "Infobalken";
l.OPTION_NAMEPLATES_USECOLOR_BLIZZARD = l.DEFAULT.."Standard";
l.OPTION_NAMEPLATES_USECOLOR_CLASS = "Klassenfarben";
l.OPTION_NAMEPLATES_USECOLOR_CUSTOM = "Ihre Farbauswahl: ";
l.OPTION_NAMEPLATES_SHOWPVPICONS_BLIZZARD = l.DEFAULT.."Kein Symbol";
l.OPTION_NAMEPLATES_SHOWPVPICONS_FACTION = "Fraktionssymbol |TInterface/PVPFrame/PVP-Currency-Alliance:16|t - |TInterface/PVPFrame/PVP-Currency-Horde:16|t";
l.OPTION_NAMEPLATES_COLOR_UNDER = "Farbe, wenn niedriger";
l.OPTION_NAMEPLATES_COLOR_UNDER_TOOLTIP = "W\195\164hlen Sie die Farbe des Levels, wenn es niedriger ist als Ihres";
l.OPTION_NAMEPLATES_COLOR_OVER = "Farbe, wenn h\195\182her";
l.OPTION_NAMEPLATES_COLOR_OVER_TOOLTIP = "W\195\164hlen Sie die Farbe des Levels, wenn es h\195\182her ist als Ihres";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER = l.DEFAULT.."Nie";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER_TOOLTIP = "Zeigt niemals das Level auf Infobalken an.";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT = "Wenn anders als Ihres";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT_COLORED = "Wenn anders als Ihres, farbig";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS = "Immer";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS_COLORED = "Immer, farbig";

l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR = "Verb\195\188ndete Namen";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Farbe des Namens auf verb\195\188ndeten Infobalken (au\195\159erhalb von Instanzen)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR = "Verb\195\188ndete Balken";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Farbe der verb\195\188ndeten Infobalken (au\195\159erhalb von Instanzen)"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE = "Textur verb\195\188ndeter Balken"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Textur der verb\195\188ndeten Infobalken (au\195\159erhalb von Instanzen)"
l.OPTION_FRIENDSNAMEPLATES_PVPICONS = "Verb\195\188ndete PvP-Symbole";
l.OPTION_FRIENDSNAMEPLATES_PVPICONS_TOOLTIP = "Zeigt PvP-Symbole auf verb\195\188ndeten Namen an.";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL = "Verb\195\188ndete Level";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Zeigt das Level auf verb\195\188ndeten Infobalken an.";

l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR = "Feindliche Namen";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Farbe des Namens auf feindlichen Infobalken (au\195\159erhalb von Instanzen)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR = "Feindliche Balken";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Farbe der feindlichen Infobalken (au\195\159erhalb von Instanzen)";
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE = "Textur feindlicher Balken"
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Textur der feindlichen Infobalken (au\195\159erhalb von Instanzen)"
l.OPTION_ENEMIESNAMEPLATES_PVPICONS = "Feindliche PvP-Symbole";
l.OPTION_ENEMIESNAMEPLATES_PVPICONS_TOOLTIP = "Zeigt PvP-Symbole auf feindlichen Namen an.";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL = "Feindliche Level";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Zeigt das Level auf feindlichen Infobalken an.";
-- KNC END

l.OPTION_RESET_OPTIONS = "Optionen zur\195\188cksetzen";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Nachrichten anzeigen";
l.OPTION_SHOWMSGWARNING = l.GYL.."Warnungen anzeigen";
l.OPTION_SHOWMSGERR = l.GYL.."Fehler anzeigen";
l.OPTION_WHATSNEW = "Neuigkeiten";
