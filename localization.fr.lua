-------------------------------------------------------------------------------
-- French localization
-------------------------------------------------------------------------------

if (GetLocale() == "frFR") then

KNC_VERS_TITLE    = format("%s %s", KNC_TITLE, KNC_VERSION);

KNC_CONFLICT_MESSAGE = "D\195\169sactiv\195\169 : Conflit avec %s";
KNC_MSG_LOADED         = format("%s lanc\195\169 et actif", KNC_VERS_TITLE);

KNC_INIT_FAILED = format("%s pas charg\195\169 correctement (conflit ?) !", KNC_VERS_TITLE);

--@do-not-package@
-- https://code.google.com/archive/p/mangadmin/wikis/SpecialCharacters.wiki
-- https://wowwiki.fandom.com/wiki/Localizing_an_addon
--@end-do-not-package@
end
