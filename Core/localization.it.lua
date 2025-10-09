-------------------------------------------------------------------------------
-- Italian localization (ChatGPT)
-------------------------------------------------------------------------------
if (GetLocale() ~= "itIT") then return end
local _, ns = ...
local l = ns.I18N;
l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Disattivato: Conflitto con %s";

l.SUBTITLE      = "Colorazione delle targhette";
l.DESC          = "Colora le targhette / nomi "..l.YL.."(fuori istanze)|r\n\n"
.." - Alleati e Nemici\n\n"
.." - Gestisce il colore del nome e della barra\n\n"
.." - Per impostazione predefinita, per classe, o un colore a tua scelta\n\n"
.." - Aggiungi icone PvP |TInterface/PVPFrame/PVP-Currency-Alliance:16|t|TInterface/PVPFrame/PVP-Currency-Horde:16|t, e altre opzioni...\n\n"
.." - Mostra i livelli dei giocatori\n\n"
l.OPTIONS_TITLE = format("%s - Opzioni", l.VERS_TITLE);

l.MSG_LOADED         = format("%s caricato e attivo", l.VERS_TITLE);

l.INIT_FAILED = format("%s non inizializzato correttamente (conflitto?) !", l.VERS_TITLE);

-- KNC START
l.OPTION_OTHERS_HEADER = "Barre informative";
l.OPTION_NAMEPLATES_USECOLOR_BLIZZARD = l.DEFAULT.."Predefinito";
l.OPTION_NAMEPLATES_USECOLOR_CLASS = "Colori di classe";
l.OPTION_NAMEPLATES_USECOLOR_CUSTOM = "La tua scelta di colore: ";
l.OPTION_NAMEPLATES_SHOWPVPICONS_BLIZZARD = l.DEFAULT.."Nessuna icona";
l.OPTION_NAMEPLATES_SHOWPVPICONS_FACTION = "Icona della fazione |TInterface/PVPFrame/PVP-Currency-Alliance:16|t - |TInterface/PVPFrame/PVP-Currency-Horde:16|t";
l.OPTION_NAMEPLATES_COLOR_UNDER = "Colore se inferiore";
l.OPTION_NAMEPLATES_COLOR_UNDER_TOOLTIP = "Seleziona il colore del livello se \195\168 inferiore al tuo";
l.OPTION_NAMEPLATES_COLOR_OVER = "Colore se superiore";
l.OPTION_NAMEPLATES_COLOR_OVER_TOOLTIP = "Seleziona il colore del livello se \195\168 superiore al tuo";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER = l.DEFAULT.."Mai";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER_TOOLTIP = "Non mostra mai il livello sulle barre informative.";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT = "Se diverso dal tuo";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT_COLORED = "Se diverso dal tuo, colorato";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS = "Sempre";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS_COLORED = "Sempre, colorato";

l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR = "Nomi alleati";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Colore del nome sulle barre informative alleate (fuori istanze)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR = "Barre alleate";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Colore delle barre informative alleate (fuori istanze)"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE = "Texture Barre alleate"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Texture delle barre informative alleate (fuori istanze)"
l.OPTION_FRIENDSNAMEPLATES_PVPICONS = "Icone PvP alleate";
l.OPTION_FRIENDSNAMEPLATES_PVPICONS_TOOLTIP = "Mostra le icone PvP sui nomi alleati.";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL = "Livelli alleati";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Mostra il livello sulle barre informative alleate.";

l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR = "Nomi nemici";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Colore del nome sulle barre informative nemiche (fuori istanze)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR = "Barre nemiche";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Colore delle barre informative nemiche (fuori istanze)";
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE = "Texture Barre nemiche"
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Texture delle barre informative nemiche (fuori istanze)"
l.OPTION_ENEMIESNAMEPLATES_PVPICONS = "Icone PvP nemiche";
l.OPTION_ENEMIESNAMEPLATES_PVPICONS_TOOLTIP = "Mostra le icone PvP sui nomi nemici.";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL = "Livelli nemici";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Mostra il livello sulle barre informative nemiche.";
-- KNC END

l.OPTION_RESET_OPTIONS = "Reimposta opzioni";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Mostra messaggi";
l.OPTION_SHOWMSGWARNING = l.GYL.."Mostra avvisi";
l.OPTION_SHOWMSGERR = l.GYL.."Mostra errori";
l.OPTION_WHATSNEW = "Novit\195\160";
