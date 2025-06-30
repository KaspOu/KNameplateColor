-------------------------------------------------------------------------------
-- Russian localization ZamestoTV
-------------------------------------------------------------------------------
if (GetLocale() ~= "ruRU") then return;   end
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Отключено: Конфликт с %s";

l.SUBTITLE      = "Окраска табличек с именами";
l.DESC          = "Окраска табличек с именами / имен "..l.YL.."(вне подземелий)|r\n\n"
.." - Союзники и враги\n\n"
.." - Управление цветом имени и полосы\n\n"
.." - По умолчанию, по классу или выбранный вами цвет\n\n"
.." - Добавление PvP-иконок |TInterface/PVPFrame/PVP-Currency-Alliance:16|t|TInterface/PVPFrame/PVP-Currency-Horde:16|t и другие варианты...\n\n"
.." - Отображение уровней игроков\n\n"
l.OPTIONS_TITLE = format("%s - Настройки", l.VERS_TITLE);

l.MSG_LOADED         = format("%s загружен и активен", l.VERS_TITLE);

l.INIT_FAILED = format("%s не инициализирован корректно (конфликт?)!", l.VERS_TITLE);

-- KNC START
l.OPTION_OTHERS_HEADER = "Таблички с именами";
l.OPTION_NAMEPLATES_USECOLOR_BLIZZARD = l.DEFAULT.."Цвета Blizzard по умолчанию";
l.OPTION_NAMEPLATES_USECOLOR_CLASS ="Использовать цвет класса";
l.OPTION_NAMEPLATES_USECOLOR_CUSTOM ="Ваш выбор цвета: ";
l.OPTION_NAMEPLATES_SHOWPVPICONS_BLIZZARD = l.DEFAULT.."Без иконки";
l.OPTION_NAMEPLATES_SHOWPVPICONS_FACTION = "Иконка фракции |TInterface/PVPFrame/PVP-Currency-Alliance:16|t - |TInterface/PVPFrame/PVP-Currency-Horde:16|t"
l.OPTION_NAMEPLATES_COLOR_UNDER = "Цвет, если ниже";
l.OPTION_NAMEPLATES_COLOR_UNDER_TOOLTIP = "Выберите цвет уровня, если он ниже вашего";
l.OPTION_NAMEPLATES_COLOR_OVER = "Цвет, если выше";
l.OPTION_NAMEPLATES_COLOR_OVER_TOOLTIP = "Выберите цвет уровня, если он выше вашего";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER = l.DEFAULT.."Никогда";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER_TOOLTIP = "Никогда не показывать уровень на информационных полосах.";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT = "Если отличается от вашего";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT_COLORED = "Если отличается от вашего, с цветом";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS = "Всегда";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS_COLORED = "Всегда, с цветом";

l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR = "Имена союзников";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Цвет текста имени над табличками союзников (вне подземелий)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR = "Полосы союзников";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Цвет табличек союзников (вне подземелий)";
-- l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE = "Allied bars texture"
-- l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Texture of allied nameplates (outside instances)"
l.OPTION_FRIENDSNAMEPLATES_PVPICONS = "PvP-иконки союзников";
l.OPTION_FRIENDSNAMEPLATES_PVPICONS_TOOLTIP = "Отображает PvP-иконки на именах союзников.";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL = "Уровень союзников";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Отображает уровень на информационных полосах союзников.";

l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR = "Имена врагов";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Цвет текста имени над табличками врагов (вне подземелий)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR = "Полосы врагов";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Цвет табличек врагов (вне подземелий)";
-- l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE = "Enemy bars texture"
-- l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Texture of enemy nameplates (outside instances)"
l.OPTION_ENEMIESNAMEPLATES_PVPICONS = "PvP-иконки врагов";
l.OPTION_ENEMIESNAMEPLATES_PVPICONS_TOOLTIP = "Отображает PvP-иконки на именах врагов.";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL = "Уровень врагов";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Отображает уровень на информационных полосах врагов.";
-- KNC END

l.OPTION_RESET_OPTIONS = "Сброс настроек";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Отображать сообщения";
l.OPTION_SHOWMSGWARNING = l.GYL.."Отображать предупреждения";
l.OPTION_SHOWMSGERR = l.GYL.."Отображать ошибки";
l.OPTION_WHATSNEW = "Что нового";
