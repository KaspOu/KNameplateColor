-------------------------------------------------------------------------------
-- Portuguese localization (ChatGPT)
-------------------------------------------------------------------------------

local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Desativado: Conflito com %s";

l.SUBTITLE      = "Coloração das barras de informaçöes";
l.DESC          = "Colore as barras de informaçöes "..l.YL.."(fora de instâncias)|r\n\n"
.." - Aliados e Inimigos\n\n"
.." - Gerencia a cor do nome e da barra\n\n"
.." - Por padrão, por classe, ou uma cor à escolha\n\n"
.." - îcones JxJ |TInterface/PVPFrame/PVP-Currency-Alliance:16|t|TInterface/PVPFrame/PVP-Currency-Horde:16|t, ou à escolha...\n\n"
.." - Exibe o nível dos jogadores\n\n"
l.OPTIONS_TITLE = format("%s - Options", l.VERS_TITLE);

l.MSG_LOADED         = format("%s iniciado e ativo", l.VERS_TITLE);

l.INIT_FAILED = format("%s não carregado corretamente (conflito ?) !", l.VERS_TITLE);

local required = l.YL.."*";
-- KNC START
l.OPTION_OTHERS_HEADER = "Barras de informaçöes";
l.OPTION_NAMEPLATES_USECOLOR_BLIZZARD = l.DEFAULT.."Padrão";
l.OPTION_NAMEPLATES_USECOLOR_CLASS = "Cores de classe";
l.OPTION_NAMEPLATES_USECOLOR_CUSTOM = "Sua escolha de cor: ";
l.OPTION_NAMEPLATES_SHOWPVPICONS_BLIZZARD = l.DEFAULT.."Sem îcone";
l.OPTION_NAMEPLATES_SHOWPVPICONS_FACTION = "îcone de facção |TInterface/PVPFrame/PVP-Currency-Alliance:16|t - |TInterface/PVPFrame/PVP-Currency-Horde:16|t";
l.OPTION_NAMEPLATES_COLOR_UNDER = "Cor se inferior";
l.OPTION_NAMEPLATES_COLOR_UNDER_TOOLTIP = "Selecione a cor do nível se for inferior ao seu";
l.OPTION_NAMEPLATES_COLOR_OVER = "Cor se superior";
l.OPTION_NAMEPLATES_COLOR_OVER_TOOLTIP = "Selecione a cor do nível se for superior ao seu";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER = l.DEFAULT.."Nunca";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER_TOOLTIP = "Nunca mostra o nível nas barras de informaçöes.";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT = "Se diferente do seu";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT_COLORED = "Se diferente do seu, colorido";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS = "Sempre";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS_COLORED = "Sempre, colorido";

l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR = "Nomes aliados";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Cor do nome nas barras de informaçöes aliadas (fora de instâncias)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR = "Barras aliadas";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Cor das barras de informaçöes aliadas (fora de instâncias)"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE = "Textura Barras aliadas"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Textura das barras de informaçöes aliadas (fora de instâncias)"
l.OPTION_FRIENDSNAMEPLATES_PVPICONS = "îcones JxJ aliados";
l.OPTION_FRIENDSNAMEPLATES_PVPICONS_TOOLTIP = "Exibe os îcones JxJ nos nomes aliados.";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL = "Níveis aliados";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Exibe o nível nas barras de informaçöes aliadas.";

l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR = "Nomes inimigos";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Cor do nome nas barras de informaçöes inimigas (fora de instâncias)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR = "Barras inimigas";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Cor das barras de informaçöes inimigas (fora de instâncias)";
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE = "Textura Barras inimigas"
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Textura das barras de informaçöes inimigas (fora de instâncias)"
l.OPTION_ENEMIESNAMEPLATES_PVPICONS = "îcones JxJ inimigos";
l.OPTION_ENEMIESNAMEPLATES_PVPICONS_TOOLTIP = "Exibe os îcones JxJ nos nomes inimigos.";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL = "Níveis inimigos";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Exibe o nível nas barras de informaçöes inimigas.";
-- KNC END

l.OPTION_RESET_OPTIONS = "Redefinir o perfil";
l.OPTION_RELOAD_REQUIRED = "Algumas alteraçöes exigem um recarregamento (digite: "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": Opçöes que exigem um recarregamento";

l.OPTION_SHOWMSGNORMAL = l.GYL.."Exibir mensagens";
l.OPTION_SHOWMSGWARNING = l.GYL.."Exibir alertas";
l.OPTION_SHOWMSGERR = l.GYL.."Exibir erros";
l.OPTION_COMPARTMENT_FILTER = "Exibir no Filtro de Compartimento"..required;
l.OPTION_COMPARTMENT_FILTER_TOOLTIP = "Na lista de addons no canto superior direito";
l.OPTION_WHATSNEW = "Novidades";
