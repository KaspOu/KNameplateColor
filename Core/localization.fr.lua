-------------------------------------------------------------------------------
-- French localization
-------------------------------------------------------------------------------
if (GetLocale() ~= "frFR") then return;   end
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "D\195\169sactiv\195\169 : Conflit avec %s";

l.SUBTITLE      = "Coloration des barres d'infos";
l.DESC          = "Colore les barres d'infos "..l.YL.."(hors instances)|r\n\n"
.." - Alli\195\169es et Ennemies\n\n"
.." - G\195\168re la couleur du nom et de la barre\n\n"
.." - Par d\195\169faut, par classe, ou une couleur au choix\n\n"
.." - Ic\195\180nes JcJ |TInterface/PVPFrame/PVP-Currency-Alliance:16|t|TInterface/PVPFrame/PVP-Currency-Horde:16|t, ou au choix...\n\n"
.." - Affiche le niveau des joueurs\n\n"
l.OPTIONS_TITLE = format("%s - Options", l.VERS_TITLE);

l.MSG_LOADED         = format("%s lanc\195\169 et actif", l.VERS_TITLE);

l.INIT_FAILED = format("%s pas charg\195\169 correctement (conflit ?) !", l.VERS_TITLE);

l.OPTION_OTHERS_HEADER = "Barres d'infos";
l.OPTION_NAMEPLATES_USECOLOR_BLIZZARD = l.DEFAULT.."Par d\195\169faut";
l.OPTION_NAMEPLATES_USECOLOR_CLASS = "Couleurs de classe";
l.OPTION_NAMEPLATES_USECOLOR_CUSTOM = "Votre choix de couleur : ";
l.OPTION_NAMEPLATES_SHOWPVPICONS_BLIZZARD = l.DEFAULT.."Pas d'ic\195\180ne";
l.OPTION_NAMEPLATES_SHOWPVPICONS_FACTION = "Ic\195\180ne de faction |TInterface/PVPFrame/PVP-Currency-Alliance:16|t - |TInterface/PVPFrame/PVP-Currency-Horde:16|t";
l.OPTION_NAMEPLATES_COLOR_UNDER = "Couleur si inf\195\169rieur";
l.OPTION_NAMEPLATES_COLOR_UNDER_TOOLTIP = "S\195\169lectionnez la couleur du niveau s'il est inf\195\169rieur au votre";
l.OPTION_NAMEPLATES_COLOR_OVER = "Couleur si sup\195\169rieur";
l.OPTION_NAMEPLATES_COLOR_OVER_TOOLTIP = "S\195\169lectionnez la couleur du niveau s'il est sup\195\169rieur au votre";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER = l.DEFAULT.."Jamais";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER_TOOLTIP = "Ne montre jamais le niveau sur les barres d'info.";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT = "Si diff\195\169rent du votre";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT_COLORED = "Si diff\195\169rent du votre, color\195\169";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS = "Toujours";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS_COLORED = "Toujours, color\195\169";

l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR = "Noms alli\195\169s";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Couleur du nom sur les barres d'info alli\195\169es (hors instances)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR = "Barres alli\195\169es";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Couleur des barres d'info alli\195\169es (hors instances)";
l.OPTION_FRIENDSNAMEPLATES_PVPICONS = "Ic\195\180nes JcJ alli\195\169es";
l.OPTION_FRIENDSNAMEPLATES_PVPICONS_TOOLTIP = "Affiche les ic\195\180nes JcJ sur les noms alli\195\169s.";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL = "Niveaux alli\195\169s";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Affiche le niveau sur les barres d'info alli\195\169es.";

l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR = "Noms ennemis";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Couleur du nom sur les barres d'info ennemies (hors instances)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR = "Barres ennemies";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Couleur des barres d'info ennemies (hors instances)";
l.OPTION_ENEMIESNAMEPLATES_PVPICONS = "Ic\195\180nes JcJ ennemies";
l.OPTION_ENEMIESNAMEPLATES_PVPICONS_TOOLTIP = "Affiche les ic\195\180nes JcJ sur les noms ennemis.";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL = "Niveaux ennemis";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Affiche le niveau sur les barres d'info ennemies.";

l.OPTION_RESET_OPTIONS = "R\195\169initialiser le profil";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Afficher les messages";
l.OPTION_SHOWMSGWARNING = l.GYL.."Afficher les alertes";
l.OPTION_SHOWMSGERR = l.GYL.."Afficher les erreurs";
l.OPTION_WHATSNEW = "Nouveaut\195\169s";

--@do-not-package@
-- https://code.google.com/archive/p/mangadmin/wikis/SpecialCharacters.wiki
-- https://wowwiki.fandom.com/wiki/Localizing_an_addon
--@end-do-not-package@
