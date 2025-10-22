-------------------------------------------------------------------------------
-- Korean localization (ChatGPT)
-------------------------------------------------------------------------------

local _, ns = ...
local l = ns.I18N;
l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "비활성화됨: %s와 충돌";

l.SUBTITLE      = "이름표 색상 지정";
l.DESC          = "이름표/이름 색상 지정 "..l.YL.."(인스턴스 외부)|r\n\n"
.." - 아군 및 적군\n\n"
.." - 이름 및 바 색상 관리\n\n"
.." - 기본, 직업별 또는 원하는 색상 선택\n\n"
.." - PvP 아이콘 추가 |TInterface/PVPFrame/PVP-Currency-Alliance:16|t|TInterface/PVPFrame/PVP-Currency-Horde:16|t 및 기타 선택 사항...\n\n"
.." - 플레이어 레벨 표시\n\n"
l.OPTIONS_TITLE = format("%s - 설정", l.VERS_TITLE);

l.MSG_LOADED         = format("%s 로드 및 활성화됨", l.VERS_TITLE);

l.INIT_FAILED = format("%s가 올바르게 초기화되지 않았습니다 (충돌?).", l.VERS_TITLE);

-- KNC START
l.OPTION_OTHERS_HEADER = "정보 바";
l.OPTION_NAMEPLATES_USECOLOR_BLIZZARD = l.DEFAULT.."기본값";
l.OPTION_NAMEPLATES_USECOLOR_CLASS = "직업 색상";
l.OPTION_NAMEPLATES_USECOLOR_CUSTOM = "선택한 색상: ";
l.OPTION_NAMEPLATES_SHOWPVPICONS_BLIZZARD = l.DEFAULT.."아이콘 없음";
l.OPTION_NAMEPLATES_SHOWPVPICONS_FACTION = "진영 아이콘 |TInterface/PVPFrame/PVP-Currency-Alliance:16|t - |TInterface/PVPFrame/PVP-Currency-Horde:16|t";
l.OPTION_NAMEPLATES_COLOR_UNDER = "레벨이 낮을 때 색상";
l.OPTION_NAMEPLATES_COLOR_UNDER_TOOLTIP = "자신보다 레벨이 낮을 때의 색상을 선택하세요.";
l.OPTION_NAMEPLATES_COLOR_OVER = "레벨이 높을 때 색상";
l.OPTION_NAMEPLATES_COLOR_OVER_TOOLTIP = "자신보다 레벨이 높을 때의 색상을 선택하세요.";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER = l.DEFAULT.."절대 안 함";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER_TOOLTIP = "정보 바에 레벨을 절대 표시하지 않습니다.";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT = "자신과 다를 경우";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT_COLORED = "자신과 다를 경우, 색상화";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS = "항상";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS_COLORED = "항상, 색상화";

l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR = "아군 이름";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR_TOOLTIP = "아군 정보 바의 이름 색상 (인스턴스 외부)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR = "아군 바";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR_TOOLTIP = "아군 정보 바의 색상 (인스턴스 외부)"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE = "아군 바 텍스처"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE_TOOLTIP = "아군 정보 바의 텍스처 (인스턴스 외부)"
l.OPTION_FRIENDSNAMEPLATES_PVPICONS = "아군 PvP 아이콘";
l.OPTION_FRIENDSNAMEPLATES_PVPICONS_TOOLTIP = "아군 이름에 PvP 아이콘을 표시합니다.";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL = "아군 레벨";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "아군 정보 바에 레벨을 표시합니다.";

l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR = "적 이름";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR_TOOLTIP = "적 정보 바의 이름 색상 (인스턴스 외부)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR = "적 바";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR_TOOLTIP = "적 정보 바의 색상 (인스턴스 외부)";
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE = "적 바 텍스처"
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE_TOOLTIP = "적 정보 바의 텍스처 (인스턴스 외부)"
l.OPTION_ENEMIESNAMEPLATES_PVPICONS = "적 PvP 아이콘";
l.OPTION_ENEMIESNAMEPLATES_PVPICONS_TOOLTIP = "적 이름에 PvP 아이콘을 표시합니다.";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL = "적 레벨";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "적 정보 바에 레벨을 표시합니다.";
-- KNC END

l.OPTION_RESET_OPTIONS = "설정 초기화";
l.OPTION_SHOWMSGNORMAL = l.GYL.."메시지 표시";
l.OPTION_SHOWMSGWARNING = l.GYL.."경고 표시";
l.OPTION_SHOWMSGERR = l.GYL.."오류 표시";
l.OPTION_WHATSNEW = "새로운 기능";
