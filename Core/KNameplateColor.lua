--[[
	Hello to K Nameplate Color
	Last version: @project-version@ (@project-date-iso@)
]]

local isInit = false;
local isLoaded = false;


function KNC_OnLoad(self)

	SlashCmdList["KNC"] = SLASH_KNC_command;
	SLASH_KNC1 = "/knc";
	SLASH_KNC2 = "/kn";

	if (KNC_CONFLICT) then
		KNC_AddMsgErr(format(KNC_CONFLICT_MESSAGE, KNC_CONFLICT_WITH));
		return;
	end

	SlashCmdList["CLEAR"] = SLASH_CLEAR_command;
	SLASH_CLEAR1 = "/clear";

	if (isInit or InCombatLockdown()) then return; end

	isInit = true;
	self:SetScript("OnEvent",
		function(self, event, ...)
			KNC_OnEvent(self, event, ...);
		end
	);
	self:RegisterEvent("ADDON_LOADED");
end -- END KNC_OnLoad

-- KNC_OnEvent
function KNC_OnEvent(self, event, ...)
	local arg1 = select(1, ...);
	if (event == "ADDON_LOADED" and arg1 == KNC_ADDON_NAME) then
		self:UnregisterEvent("ADDON_LOADED");
		isLoaded = true;

		-- ! Hooks
		_G.hooksecurefunc("CompactUnitFrame_UpdateName", KNC_Hook_UpdateName_Color);
	end
end -- END KNC_OnEvent

function SLASH_KNC_command(msgIn)
	if (not isLoaded) then
		KNC_AddMsgWarn(KNC_INIT_FAILED);
		return;
	end
	
	KNC_AddMsg(KNC_MSG_LOADED);
end

function SLASH_CLEAR_command()
	SELECTED_CHAT_FRAME:Clear()
end