-------------------------------------------------------------------------------
-- Chinese localization (ChatGPT)
-------------------------------------------------------------------------------
if (GetLocale() ~= "zhCN" and GetLocale() ~= "zhTW") then return end
local _, ns = ...
local l = ns.I18N;
l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "已禁用：与 %s 冲突";

l.SUBTITLE      = "姓名板着色";
l.DESC          = "为姓名板/名称着色 "..l.YL.."(副本外)|r\n\n"
.." - 友方和敌方\n\n"
.." - 管理名称和血条颜色\n\n"
.." - 默认、按职业或您选择的颜色\n\n"
.." - 添加PvP图标 |TInterface/PVPFrame/PVP-Currency-Alliance:16|t|TInterface/PVPFrame/PVP-Currency-Horde:16|t，以及其他选择...\n\n"
.." - 显示玩家等级\n\n"
l.OPTIONS_TITLE = format("%s - 选项", l.VERS_TITLE);

l.MSG_LOADED         = format("%s 已加载并激活", l.VERS_TITLE);

l.INIT_FAILED = format("%s 未正确初始化（冲突？）！", l.VERS_TITLE);

-- KNC START
l.OPTION_OTHERS_HEADER = "信息条";
l.OPTION_NAMEPLATES_USECOLOR_BLIZZARD = l.DEFAULT.."默认";
l.OPTION_NAMEPLATES_USECOLOR_CLASS = "职业颜色";
l.OPTION_NAMEPLATES_USECOLOR_CUSTOM = "您的自定义颜色：";
l.OPTION_NAMEPLATES_SHOWPVPICONS_BLIZZARD = l.DEFAULT.."无图标";
l.OPTION_NAMEPLATES_SHOWPVPICONS_FACTION = "阵营图标 |TInterface/PVPFrame/PVP-Currency-Alliance:16|t - |TInterface/PVPFrame/PVP-Currency-Horde:16|t";
l.OPTION_NAMEPLATES_COLOR_UNDER = "低于时颜色";
l.OPTION_NAMEPLATES_COLOR_UNDER_TOOLTIP = "选择当等级低于您时显示的颜色";
l.OPTION_NAMEPLATES_COLOR_OVER = "高于时颜色";
l.OPTION_NAMEPLATES_COLOR_OVER_TOOLTIP = "选择当等级高于您时显示的颜色";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER = l.DEFAULT.."从不";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER_TOOLTIP = "从不在信息条上显示等级。";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT = "如果与您不同";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT_COLORED = "如果与您不同，则着色";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS = "总是";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS_COLORED = "总是，并着色";

l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR = "友方名称";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR_TOOLTIP = "友方信息条上的名称颜色 (副本外)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR = "友方血条";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR_TOOLTIP = "友方信息条的颜色 (副本外)"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE = "友方血条材质"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE_TOOLTIP = "友方信息条的材质 (副本外)"
l.OPTION_FRIENDSNAMEPLATES_PVPICONS = "友方PvP图标";
l.OPTION_FRIENDSNAMEPLATES_PVPICONS_TOOLTIP = "在友方名称上显示PvP图标。";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL = "友方等级";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "在友方信息条上显示等级。";

l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR = "敌方名称";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR_TOOLTIP = "敌方信息条上的名称颜色 (副本外)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR = "敌方血条";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR_TOOLTIP = "敌方信息条的颜色 (副本外)";
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE = "敌方血条材质"
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE_TOOLTIP = "敌方信息条的材质 (副本外)"
l.OPTION_ENEMIESNAMEPLATES_PVPICONS = "敌方PvP图标";
l.OPTION_ENEMIESNAMEPLATES_PVPICONS_TOOLTIP = "在敌方名称上显示PvP图标。";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL = "敌方等级";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "在敌方信息条上显示等级。";
-- KNC END

l.OPTION_RESET_OPTIONS = "重置选项";
l.OPTION_SHOWMSGNORMAL = l.GYL.."显示消息";
l.OPTION_SHOWMSGWARNING = l.GYL.."显示警告";
l.OPTION_SHOWMSGERR = l.GYL.."显示错误";
l.OPTION_WHATSNEW = "新功能";
