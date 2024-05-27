-------------------------------------------------------------------------------
-- English localization (Default)
-------------------------------------------------------------------------------
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Disabled: Conflict with %s";

l.SUBTITLE      = "Nameplates coloring";
l.DESC          = "Color nameplates / names\n\n"
.." - Allies and Enemies\n\n"
.." - Manages the name, but also the colors of the bars (Classic)\n\n"
.." - By default, by class, or a color of your choice";
l.OPTIONS_TITLE = format("%s - Options", l.VERS_TITLE);

l.MSG_LOADED         = format("%s loaded and active", l.VERS_TITLE);

l.INIT_FAILED = format("%s not initialized correctly (conflict?)!", l.VERS_TITLE);

l.OPTION_OTHERS_HEADER = "Nameplates";
l.OPTION_NAMEPLATES_USECOLOR_BLIZZARD = l.RDL.."Blizzard default colors";
l.OPTION_NAMEPLATES_USECOLOR_CLASS ="Use class color";
l.OPTION_NAMEPLATES_USECOLOR_CUSTOM ="Your color choice: ";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR = "Allied names coloration";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Text color of the name above allied nameplates (outside instances)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR = "Allied bars coloration"..l.GYL.." (Classic)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Color of allied nameplates (outside instances)";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR = "Enemy names coloration";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Text color of the name above enemy nameplates (outside instances)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR = "Enemy bars coloration"..l.GYL.." (Classic)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Color of enemy nameplates (outside instances)";
l.OPTION_SHOWPVPICONS = "Show PvP icons";
l.OPTION_SHOWPVPICONS_TOOLTIP = "Displays PvP icons on info bars, both friendly and enemy.";

l.OPTION_RESET_OPTIONS = "Reset options";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Display messages";
l.OPTION_SHOWMSGWARNING = l.GYL.."Display warnings";
l.OPTION_SHOWMSGERR = l.GYL.."Display errors";
l.OPTION_WHATSNEW = "What's new";