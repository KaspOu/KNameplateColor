-------------------------------------------------------------------------------
-- French localization
-------------------------------------------------------------------------------
if (GetLocale() == "frFR") then    
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "D\195\169sactiv\195\169 : Conflit avec %s";

l.SUBTITLE      = "Coloration des barres d'infos";
l.DESC          = "Colore les barres d'infos "..l.YL.."(hors instances)|r\n\n"
.." - Alli\195\169es et Ennemies\n\n"
.." - G\195\168re le nom, mais aussi les couleurs des barres (Classic)\n\n"
.." - Par d\195\169faut, par classe, ou une couleur au choix";
l.OPTIONS_TITLE = format("%s - Options", l.VERS_TITLE);

l.MSG_LOADED         = format("%s lanc\195\169 et actif", l.VERS_TITLE);

l.INIT_FAILED = format("%s pas charg\195\169 correctement (conflit ?) !", l.VERS_TITLE);

l.OPTION_OTHERS_HEADER = "Barres d'infos";
l.OPTION_NAMEPLATES_USECOLOR_BLIZZARD = l.RDL.."Par d\195\169faut";
l.OPTION_NAMEPLATES_USECOLOR_CLASS = "Couleurs de classe";
l.OPTION_NAMEPLATES_USECOLOR_CUSTOM = "Votre choix de couleur : ";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR = "Coloration des noms alli\195\169s";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Couleur du nom sur les barres d'info alli\195\169es (hors instances)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR = "Coloration des barres alli\195\169es"..l.GYL.." (Classic)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Couleur des barres d'info alli\195\169es (hors instances)";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR = "Coloration des noms ennemis";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Couleur du nom sur les barres d'info ennemies (hors instances)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR = "Coloration des barres ennemies"..l.GYL.." (Classic)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Couleur des barres d'info ennemies (hors instances)";
l.OPTION_SHOWPVPICONS = "Afficher les ic\195\180nes JcJ";
l.OPTION_SHOWPVPICONS_TOOLTIP = "Affiche les ic\195\180nes JcJ sur les barres d'info, amies comme ennemies.";

l.OPTION_RESET_OPTIONS = "R\195\169initialiser le profil";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Afficher les messages";
l.OPTION_SHOWMSGWARNING = l.GYL.."Afficher les alertes";
l.OPTION_SHOWMSGERR = l.GYL.."Afficher les erreurs";
l.OPTION_WHATSNEW = "Nouveaut\195\169s";

--@do-not-package@
-- https://code.google.com/archive/p/mangadmin/wikis/SpecialCharacters.wiki
-- https://wowwiki.fandom.com/wiki/Localizing_an_addon
--@end-do-not-package@
end
