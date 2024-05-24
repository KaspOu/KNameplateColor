local _, ns = ...
local l = ns.I18N

if ns.CONFLICT then
	return
end

local function FrameIsCompact(frame)
	local getName = frame:GetName();
	return getName ~=nil and strsub(getName, 0, 7) == "Compact"
end

local function KNC_GetClassColors()
	return CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS;
end


--[[
! Manage player name colors (partyframes & nameplates)
- Class Color for Nameplates
]]
function ns.Hook_UpdateName_Color(frame)
	if not frame:IsForbidden() and UnitPlayerControlled(frame.displayedUnit) then
		local name = frame.name;
		local r, g, b, a = UnitSelectionColor(frame.displayedUnit);
		-- pet default color, or player class color
		local allowClassColor = frame.optionTable.allowClassColorsForNPCs or UnitIsPlayer(frame.displayedUnit) or (UnitTreatAsPlayerForDisplay and UnitTreatAsPlayerForDisplay(frame.displayedUnit));
		local c = not allowClassColor and {r= r, g= g, b=b, a=a} or KNC_GetClassColors()[select(2,UnitClass(frame.displayedUnit))];
		if not FrameIsCompact(frame) then
			-- Nameplates: change color (works outside instances)
			if c and UnitIsFriend(frame.displayedUnit,"player") then
				if allowClassColor then
					-- change nameplate text color only for players, not pets
					name:SetVertexColor(c.r, c.g, c.b);
					name:SetShadowColor(c.r, c.g, c.b, 0.2);
				end
				-- colorNameBySelection: nameplates already colored, Since BfA (7)
				if (not ns.HAS_colorNameBySelection) then
					-- on every refresh, it will avoid misscolorations on updates
					local healthBar = frame.healthBar;
					healthBar:SetStatusBarColor(c.r, c.g, c.b);
				end
			end
		end
	end
end



--@do-not-package@
-- hooksecurefunc(NamePlateDriverFrame,"OnNamePlateCreated", ??
-- Blizzard nameplates color test: local allowClassColor = frame.optionTable.allowClassColorsForNPCs or UnitIsPlayer(frame.unit) or (UnitTreatAsPlayerForDisplay and UnitTreatAsPlayerForDisplay(frame.unit));
--@end-do-not-package@