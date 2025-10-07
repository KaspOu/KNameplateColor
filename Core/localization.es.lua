-------------------------------------------------------------------------------
-- Spanish localization (ChatGPT)
-------------------------------------------------------------------------------

if (GetLocale() ~= "esES" and GetLocale() ~= "esMX") then return end
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Desactivado: Conflicto con %s";

l.SUBTITLE      = "Coloreado de placas de nombre";
l.DESC          = "Colorea las placas de nombre / nombres "..l.YL.."(fuera de las instancias)|r\n\n"
.." - Aliados y Enemigos\n\n"
.." - Gestiona el color del nombre y de la barra\n\n"
.." - Por defecto, por clase, o un color de tu elección\n\n"
.." - Añade iconos PvP |TInterface/PVPFrame/PVP-Currency-Alliance:16|t|TInterface/PVPFrame/PVP-Currency-Horde:16|t, y otras opciones...\n\n"
.." - Muestra los niveles de los jugadores\n\n"
l.OPTIONS_TITLE = format("%s - Opciones", l.VERS_TITLE);

l.MSG_LOADED         = format("%s cargado y activo", l.VERS_TITLE);

l.INIT_FAILED = format("%s no se inicializó correctamente (¿conflicto?)!", l.VERS_TITLE);

-- KNC START
l.OPTION_OTHERS_HEADER = "Barras de información";
l.OPTION_NAMEPLATES_USECOLOR_BLIZZARD = l.DEFAULT.."Por defecto";
l.OPTION_NAMEPLATES_USECOLOR_CLASS = "Colores de clase";
l.OPTION_NAMEPLATES_USECOLOR_CUSTOM = "Tu elección de color: ";
l.OPTION_NAMEPLATES_SHOWPVPICONS_BLIZZARD = l.DEFAULT.."Sin icono";
l.OPTION_NAMEPLATES_SHOWPVPICONS_FACTION = "Icono de facción |TInterface/PVPFrame/PVP-Currency-Alliance:16|t - |TInterface/PVPFrame/PVP-Currency-Horde:16|t";
l.OPTION_NAMEPLATES_COLOR_UNDER = "Color si es inferior";
l.OPTION_NAMEPLATES_COLOR_UNDER_TOOLTIP = "Selecciona el color del nivel si es inferior al tuyo";
l.OPTION_NAMEPLATES_COLOR_OVER = "Color si es superior";
l.OPTION_NAMEPLATES_COLOR_OVER_TOOLTIP = "Selecciona el color del nivel si es superior al tuyo";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER = l.DEFAULT.."Nunca";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER_TOOLTIP = "Nunca muestra el nivel en las barras de información.";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT = "Si es diferente al tuyo";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT_COLORED = "Si es diferente al tuyo, coloreado";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS = "Siempre";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS_COLORED = "Siempre, coloreado";

l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR = "Nombres aliados";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Color del nombre en las barras de información aliadas (fuera de instancias)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR = "Barras aliadas";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Color de las barras de información aliadas (fuera de instancias)"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE = "Textura Barras aliadas"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Textura de las barras de información aliadas (fuera de instancias)"
l.OPTION_FRIENDSNAMEPLATES_PVPICONS = "Iconos JcJ aliados";
l.OPTION_FRIENDSNAMEPLATES_PVPICONS_TOOLTIP = "Muestra los iconos JcJ en los nombres aliados.";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL = "Niveles aliados";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Muestra el nivel en las barras de información aliadas.";

l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR = "Nombres enemigos";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Color del nombre en las barras de información enemigas (fuera de instancias)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR = "Barras enemigas";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Color de las barras de información enemigas (fuera de instancias)";
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE = "Textura Barras enemigas"
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Textura de las barras de información enemigas (fuera de instancias)"
l.OPTION_ENEMIESNAMEPLATES_PVPICONS = "Iconos JcJ enemigos";
l.OPTION_ENEMIESNAMEPLATES_PVPICONS_TOOLTIP = "Muestra los iconos JcJ en los nombres enemigos.";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL = "Niveles enemigos";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Muestra el nivel en las barras de información enemigas.";
-- KNC END

l.OPTION_RESET_OPTIONS = "Restablecer opciones";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Mostrar mensajes";
l.OPTION_SHOWMSGWARNING = l.GYL.."Mostrar advertencias";
l.OPTION_SHOWMSGERR = l.GYL.."Mostrar errores";
l.OPTION_WHATSNEW = "Novedades";