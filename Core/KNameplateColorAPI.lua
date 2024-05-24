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
function KNC_Hook_UpdateName_Color(frame)
	if not frame:IsForbidden() and UnitPlayerControlled(frame.displayedUnit) then
		local name = frame.name;
		local r, g, b, a = UnitSelectionColor(frame.displayedUnit);
		-- pet default color, or player class color
		local c = not UnitIsPlayer(frame.displayedUnit) and {r= r, g= g, b=b, a=a} or KNC_GetClassColors()[select(2,UnitClass(frame.displayedUnit))];
		if not FrameIsCompact(frame) then
			-- Nameplates: change color (works outside instances)
			if c and UnitIsFriend(frame.displayedUnit,"player") then
				if UnitIsPlayer(frame.displayedUnit) then
					-- change nameplate text color only for players, not pets
					name:SetVertexColor(c.r, c.g, c.b);
					name:SetShadowColor(c.r, c.g, c.b, 0.2);
				end
				-- colorNameBySelection: nameplates already colored, Since BfA (7)
				if (not KNC_HAS_colorNameBySelection) then
					local healthBar = frame.healthBar;
					healthBar:SetStatusBarColor(c.r, c.g, c.b);
				end
			end
		end
	end
end


-- Returns a chat color code string
local function BCC(r, g, b)
	return string.format("|cff%02x%02x%02x", (r*255), (g*255), (b*255));
end

local RDL = BCC(1.0, 0.3, 0.3);
local YLL = BCC(1.0, 1.0, 0.5);
local CY  = BCC(0.5, 1.0, 1.0);

--[[
!  Default chat
]]
function KNC_AddMsg(msg)
	if (DEFAULT_CHAT_FRAME) then
		DEFAULT_CHAT_FRAME:AddMessage(format("%s%s|r", YLL, msg or ""));
	end
end
--[[
!  Warning chat
]]
function KNC_AddMsgWarn(msg)
	if (DEFAULT_CHAT_FRAME) then
		DEFAULT_CHAT_FRAME:AddMessage(format("%s%s|r", CY, msg or ""));
	end
end

--[[
!  Error chat
]]
function KNC_AddMsgErr(msg)
	if (DEFAULT_CHAT_FRAME) then
		DEFAULT_CHAT_FRAME:AddMessage(format("%s%s: %s|r", RDL, KNC_TITLE, msg or ""));
	end
end



--@do-not-package@
-- hooksecurefunc(NamePlateDriverFrame,"OnNamePlateCreated", ??
--@end-do-not-package@