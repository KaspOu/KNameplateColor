
KNC_VERSION       = C_AddOns.GetAddOnMetadata("KNameplateColor", "Version");
KNC_VERSIONNR     = tonumber(gsub(KNC_VERSION, "%D", ""), 10);
if (C_AddOns.GetAddOnInfo) then
  KNC_ADDON_NAME,KNC_TITLE, KNC_NOTES = C_AddOns.GetAddOnInfo("KNameplateColor");
else
  KNC_ADDON_NAME,KNC_TITLE, KNC_NOTES = GetAddOnInfo("KNameplateColor");
end

if (C_AddOns.GetAddOnInfo and C_AddOns.IsAddOnLoaded) then
  KNC_CONFLICT_WITH, KNC_CONFLICT = select(2, C_AddOns.GetAddOnInfo("KallyeRaidFrames")), C_AddOns.IsAddOnLoaded("KallyeRaidFrames");
else
  _, KNC_CONFLICT_WITH, _, KNC_CONFLICT = GetAddOnInfo("KallyeRaidFrames");
end

KNC_IS_RETAIL = (WOW_PROJECT_ID == WOW_PROJECT_MAINLINE);

KNC_HAS_colorNameBySelection = KNC_IS_RETAIL; -- colorNameBySelection, Since BfA (7)
