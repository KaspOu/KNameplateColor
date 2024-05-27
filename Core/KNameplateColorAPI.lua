local _, ns = ...
local l = ns.I18N

if ns.CONFLICT then
	return
end

function ns.SetDefaultOptions(DefaultOptions, reset)
	if reset or KNameplateColorOptions == nil then
		KNameplateColorOptions = CopyTable(DefaultOptions)
	else
		foreach(DefaultOptions,
			function (k, v)
				if KNameplateColorOptions[k] == nil then
					KNameplateColorOptions[k] = v;
				end
			end
		);
	end
end

function ns.OptionsEnable(FrameObject, isEnabled, disabledAlpha)
	if isEnabled then
		FrameObject:Enable();
		FrameObject:SetAlpha(1);
	else
		FrameObject:Disable();
		FrameObject:SetAlpha(disabledAlpha or .6);
	end
end
function ns.OptionsSetShownAndEnable(FrameObject, isShowned, isEnabled)
	FrameObject:SetShown(isShowned);
	if (isShowned) then
		ns.OptionsEnable(FrameObject, isEnabled);
	end
end



--@do-not-package@
-- hooksecurefunc(NamePlateDriverFrame,"OnNamePlateCreated", ??
-- Blizzard nameplates color test: local allowClassColor = frame.optionTable.allowClassColorsForNPCs or UnitIsPlayer(frame.unit) or (UnitTreatAsPlayerForDisplay and UnitTreatAsPlayerForDisplay(frame.unit));
--@end-do-not-package@