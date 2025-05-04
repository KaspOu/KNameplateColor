-------------------------------------------------------------------------------
-- English localization (Default)
-------------------------------------------------------------------------------
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Disabled: Conflict with %s";

l.SUBTITLE      = "Nameplates coloring";
l.DESC          = "Color nameplates / names "..l.YL.."(outside instances)|r\n\n"
.." - Allies and Enemies\n\n"
.." - Manages name and bar color\n\n"
.." - By default, by class, or a color of your choice\n\n"
.." - Add PvP icons |TInterface/PVPFrame/PVP-Currency-Alliance:16|t|TInterface/PVPFrame/PVP-Currency-Horde:16|t, and other choices...\n\n"
.." - Display player levels\n\n"
l.OPTIONS_TITLE = format("%s - Options", l.VERS_TITLE);

l.MSG_LOADED         = format("%s loaded and active", l.VERS_TITLE);

l.INIT_FAILED = format("%s not initialized correctly (conflict?)!", l.VERS_TITLE);

l.OPTION_OTHERS_HEADER = "Nameplates";
l.OPTION_NAMEPLATES_USECOLOR_BLIZZARD = l.DEFAULT.."Blizzard default colors";
l.OPTION_NAMEPLATES_USECOLOR_CLASS ="Use class color";
l.OPTION_NAMEPLATES_USECOLOR_CUSTOM ="Your color choice: ";
l.OPTION_NAMEPLATES_SHOWPVPICONS_BLIZZARD = l.DEFAULT.."No icon";
l.OPTION_NAMEPLATES_SHOWPVPICONS_FACTION = "Faction icon |TInterface/PVPFrame/PVP-Currency-Alliance:16|t - |TInterface/PVPFrame/PVP-Currency-Horde:16|t"
l.OPTION_NAMEPLATES_COLOR_UNDER = "Color if lower";
l.OPTION_NAMEPLATES_COLOR_UNDER_TOOLTIP = "Select the color of the level if it is lower than yours";
l.OPTION_NAMEPLATES_COLOR_OVER = "Color if higher";
l.OPTION_NAMEPLATES_COLOR_OVER_TOOLTIP = "Select the color of the level if it is higher than yours";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER = l.DEFAULT.."Never";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER_TOOLTIP = "Never show the level on the info bars.";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT = "If different from yours";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT_COLORED = "If different from yours, colored";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS = "Always";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS_COLORED = "Always, colored";

l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR = "Allied names";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Text color of the name above allied nameplates (outside instances)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR = "Allied bars";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Color of allied nameplates (outside instances)";
l.OPTION_FRIENDSNAMEPLATES_PVPICONS = "Allied PvP icons";
l.OPTION_FRIENDSNAMEPLATES_PVPICONS_TOOLTIP = "Displays PvP icons on allied names.";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL = "Allied level";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Displays the level on allied info bars.";

l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR = "Enemy names";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Text color of the name above enemy nameplates (outside instances)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR = "Enemy bars";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Color of enemy nameplates (outside instances)";
l.OPTION_ENEMIESNAMEPLATES_PVPICONS = "Enemy PvP icons";
l.OPTION_ENEMIESNAMEPLATES_PVPICONS_TOOLTIP = "Displays PvP icons on enemy names.";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL = "Enemy level";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Displays the level on enemy info bars.";

l.OPTION_RESET_OPTIONS = "Reset options";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Display messages";
l.OPTION_SHOWMSGWARNING = l.GYL.."Display warnings";
l.OPTION_SHOWMSGERR = l.GYL.."Display errors";
l.OPTION_WHATSNEW = "What's new";