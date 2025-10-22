-------------------------------------------------------------------------------
-- Portuguese localization (ChatGPT)
-------------------------------------------------------------------------------

local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "Desativado: Conflito com %s";

l.SUBTITLE      = "Colora\195\167\195\163o das barras de informa\195\167\195\182es";
l.DESC          = "Colore as barras de informa\195\167\195\182es "..l.YL.."(fora de inst\195\162ncias)|r\n\n"
.." - Aliados e Inimigos\n\n"
.." - Gerencia a cor do nome e da barra\n\n"
.." - Por padr\195\163o, por classe, ou uma cor \195\160 escolha\n\n"
.." - \195\174cones JxJ |TInterface/PVPFrame/PVP-Currency-Alliance:16|t|TInterface/PVPFrame/PVP-Currency-Horde:16|t, ou \195\160 escolha...\n\n"
.." - Exibe o n\195\173vel dos jogadores\n\n"
l.OPTIONS_TITLE = format("%s - Options", l.VERS_TITLE);

l.MSG_LOADED         = format("%s iniciado e ativo", l.VERS_TITLE);

l.INIT_FAILED = format("%s n\195\163o carregado corretamente (conflito ?) !", l.VERS_TITLE);

-- KNC START
l.OPTION_OTHERS_HEADER = "Barras de informa\195\167\195\182es";
l.OPTION_NAMEPLATES_USECOLOR_BLIZZARD = l.DEFAULT.."Padr\195\163o";
l.OPTION_NAMEPLATES_USECOLOR_CLASS = "Cores de classe";
l.OPTION_NAMEPLATES_USECOLOR_CUSTOM = "Sua escolha de cor: ";
l.OPTION_NAMEPLATES_SHOWPVPICONS_BLIZZARD = l.DEFAULT.."Sem \195\174cone";
l.OPTION_NAMEPLATES_SHOWPVPICONS_FACTION = "\195\174cone de fac\195\167\195\163o |TInterface/PVPFrame/PVP-Currency-Alliance:16|t - |TInterface/PVPFrame/PVP-Currency-Horde:16|t";
l.OPTION_NAMEPLATES_COLOR_UNDER = "Cor se inferior";
l.OPTION_NAMEPLATES_COLOR_UNDER_TOOLTIP = "Selecione a cor do n\195\173vel se for inferior ao seu";
l.OPTION_NAMEPLATES_COLOR_OVER = "Cor se superior";
l.OPTION_NAMEPLATES_COLOR_OVER_TOOLTIP = "Selecione a cor do n\195\173vel se for superior ao seu";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER = l.DEFAULT.."Nunca";
l.OPTION_NAMEPLATES_SHOWLEVEL_NEVER_TOOLTIP = "Nunca mostra o n\195\173vel nas barras de informa\195\167\195\182es.";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT = "Se diferente do seu";
l.OPTION_NAMEPLATES_SHOWLEVEL_DIFFERENT_COLORED = "Se diferente do seu, colorido";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS = "Sempre";
l.OPTION_NAMEPLATES_SHOWLEVEL_ALWAYS_COLORED = "Sempre, colorido";

l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR = "Nomes aliados";
l.OPTION_FRIENDSNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Cor do nome nas barras de informa\195\167\195\182es aliadas (fora de inst\195\162ncias)";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR = "Barras aliadas";
l.OPTION_FRIENDSNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Cor das barras de informa\195\167\195\182es aliadas (fora de inst\195\162ncias)"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE = "Textura Barras aliadas"
l.OPTION_FRIENDSNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Textura das barras de informa\195\167\195\182es aliadas (fora de inst\195\162ncias)"
l.OPTION_FRIENDSNAMEPLATES_PVPICONS = "\195\174cones JxJ aliados";
l.OPTION_FRIENDSNAMEPLATES_PVPICONS_TOOLTIP = "Exibe os \195\174cones JxJ nos nomes aliados.";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL = "N\195\173veis aliados";
l.OPTION_FRIENDSNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Exibe o n\195\173vel nas barras de informa\195\167\195\182es aliadas.";

l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR = "Nomes inimigos";
l.OPTION_ENEMIESNAMEPLATES_TXT_USECOLOR_TOOLTIP = "Cor do nome nas barras de informa\195\167\195\182es inimigas (fora de inst\195\162ncias)";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR = "Barras inimigas";
l.OPTION_ENEMIESNAMEPLATES_BAR_USECOLOR_TOOLTIP = "Cor das barras de informa\195\167\195\182es inimigas (fora de inst\195\162ncias)";
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE = "Textura Barras inimigas"
l.OPTION_ENEMIESNAMEPLATES_BAR_TEXTURE_TOOLTIP = "Textura das barras de informa\195\167\195\182es inimigas (fora de inst\195\162ncias)"
l.OPTION_ENEMIESNAMEPLATES_PVPICONS = "\195\174cones JxJ inimigos";
l.OPTION_ENEMIESNAMEPLATES_PVPICONS_TOOLTIP = "Exibe os \195\174cones JxJ nos nomes inimigos.";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL = "N\195\173veis inimigos";
l.OPTION_ENEMIESNAMEPLATES_TXT_SHOWLEVEL_TOOLTIP = "Exibe o n\195\173vel nas barras de informa\195\167\195\182es inimigas.";
-- KNC END

l.OPTION_RESET_OPTIONS = "Redefinir o perfil";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Exibir mensagens";
l.OPTION_SHOWMSGWARNING = l.GYL.."Exibir alertas";
l.OPTION_SHOWMSGERR = l.GYL.."Exibir erros";
l.OPTION_WHATSNEW = "Novidades";
