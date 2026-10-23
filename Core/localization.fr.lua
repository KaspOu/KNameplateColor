-------------------------------------------------------------------------------
-- French localization
-------------------------------------------------------------------------------

local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Désactivé : Conflit avec %s";

l.SUBTITLE      = "Coloration des barres d'infos";
l.DESC          = "Colore les barres d'infos "..l.YL.."(hors instances)|r\n\n"
.." - Alliées et Ennemies\n\n"
.." - Gère la couleur du nom et de la barre\n\n"
.." - Par défaut, par classe, ou une couleur au choix\n\n"
.." - Icônes JcJ |TInterface/PVPFrame/PVP-Currency-Alliance:16|t|TInterface/PVPFrame/PVP-Currency-Horde:16|t, ou au choix...\n\n"
.." - Affiche le niveau des joueurs\n\n"
l.OPTIONS_TITLE = format("%s - Options", l.VERS_TITLE);

l.MSG_LOADED         = format("%s lancé et actif", l.VERS_TITLE);

l.INIT_FAILED = format("%s pas chargé correctement (conflit ?) !", l.VERS_TITLE);

local required = l.YL.."*";
-- KNC START
l.OPTION_OTHERS_HEADER = "Barres d'infos";
l.OPTION_NAMEPLATES_USECOLOR_BLIZZARD = l.DEFAULT.."Par défaut";
l.OPTION_NAMEPLATES_USECOLOR_CLASS = "Couleurs de classe";
l.OPTION_NAMEPLATES_USECOLOR_CUSTOM = "Votre choix de couleur : ";
l.OPTION_NAMEPLATES_SHOWPVPICONS_BLIZZARD = l.DEFAULT.."Pas d'icône";
l.OPTION_NAMEPLATES_SHOWPVPICONS_FACTION = "Icône de faction |TInterface/PVPFrame/PVP-Currency-Alliance:16|t - |TInterface/PVPFrame/PVP-Currency-Horde:16|t";
l.OPTION_NAMEPLATES_COLOR_UNDER = "Couleur si inférieur";
l.OPTION_NAMEPLATES_COLOR_UNDER_TOOLTIP = "Sélectionnez la couleur du niveau s'il est inférieur au vôtre";
l.OPTION_NAMEPLATES_COLOR_OVER = "Couleur si supérieur";
l.OPTION_NAMEPLATES_COLOR_OVER_TOOLTIP = "Sélectionnez la couleur du niveau s'il est supérieur au vôtre";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER = l.DEFAULT.."Jamais";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER_TOOLTIP = "Ne montre jamais le niveau sur les barres d'info.";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT = "Si différent du vôtre";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT_COLORED = "Si différent du vôtre, coloré";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS = "Toujours";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS_COLORED = "Toujours, coloré";

l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR = "Noms alliés";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Couleur du nom sur les barres d'info alliées (hors instances)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR = "Barres alliées";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Couleur des barres d'info alliées (hors instances)"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE = "Texture Barres alliées"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Texture des barres d'info alliées (hors instances)"
l.OPTION_FRIENDSNAMEPLATES_PVPICONS = "Icônes JcJ alliées";
l.OPTION_FRIENDSNAMEPLATES_PVPICONS_TOOLTIP = "Affiche les icônes JcJ sur les noms alliés.";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL = "Niveaux alliés";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Affiche le niveau sur les barres d'info alliées.";

l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR = "Noms ennemis";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Couleur du nom sur les barres d'info ennemies (hors instances)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR = "Barres ennemies";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Couleur des barres d'info ennemies (hors instances)";
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE = "Texture Barres ennemies"
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Texture des barres d'info ennemies (hors instances)"
l.OPTION_ENEMIESNAMEPLATES_PVPICONS = "Icônes JcJ ennemies";
l.OPTION_ENEMIESNAMEPLATES_PVPICONS_TOOLTIP = "Affiche les icônes JcJ sur les noms ennemis.";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL = "Niveaux ennemis";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Affiche le niveau sur les barres d'info ennemies.";
-- KNC END

l.OPTION_RESET_OPTIONS = "Réinitialiser le profil";
l.OPTION_RELOAD_REQUIRED = "Certains changements nécessitent un rechargement (écrivez : "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": Options nécessitant un rechargement";

l.OPTION_SHOWMSGNORMAL = l.GYL.."Afficher les messages";
l.OPTION_SHOWMSGWARNING = l.GYL.."Afficher les alertes";
l.OPTION_SHOWMSGERR = l.GYL.."Afficher les erreurs";
l.OPTION_COMPARTMENT_FILTER = "Afficher dans le Compartment Filter"..required;
l.OPTION_COMPARTMENT_FILTER_TOOLTIP = "Dans la liste des addons en haut à droite";
l.OPTION_WHATSNEW = "Nouveautés";

--@do-not-package@
-- https://code.google.com/archive/p/mangadmin/wikis/SpecialCharacters.wiki
-- https://wowwiki.fandom.com/wiki/Localizing_an_addon
--@end-do-not-package@