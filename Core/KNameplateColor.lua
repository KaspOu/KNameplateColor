--[[
	Hello to K Nameplate Color
	Last version: @project-version@ (@project-date-iso@)
]]

local _, ns = ...
local l = ns.I18N;
local isInit = false;
local isLoaded = false;

local defaultOptions = {
	Version = ns.VERSION,

	FriendsNameplates_Txt_UseColor = "1",
	FriendsNameplates_Txt_Color = { r= .235, g= .941, b= 1, a = 1 },
	FriendsNameplates_Bar_UseColor = ns.HAS_colorNameBySelection and "0" or "1",
	FriendsNameplates_Bar_Color = { r= .235, g= .941, b= 1, a = 1 },

	EnemiesNameplates_Txt_UseColor = "1",
	EnemiesNameplates_Txt_Color = { r= .87, g= 0, b= .05, a = 1 },
	EnemiesNameplates_Bar_UseColor = "0",
	EnemiesNameplates_Bar_Color = { r= .87, g= 0, b= .05, a = 1 },

	Nameplates_ShowJcJ = false,

	ShowMsgNormal = true,
	ShowMsgWarning = true,
	ShowMsgError = false,
};
if not ns.CONFLICT then
	-- if no conflict
	ns.SetDefaultOptions(defaultOptions);
end

local function SLASH_command(msgIn)
	if (not isLoaded) then
		ns.AddMsgWarn(l.INIT_FAILED);
		return;
	end

	if msgIn == "reset" then
		StaticPopup_Show(ns.ADDON_NAME.."_CONFIRM_RESET")
	else
		if Settings then
			Settings.OpenToCategory(ns.TITLE);
		else
			InterfaceOptionsFrame_OpenToCategory(ns.TITLE);
		end
	end
end

local function SLASH_CLEAR_command()
	SELECTED_CHAT_FRAME:Clear()
end

local function OnEvent(self, event, ...)
	local arg1 = select(1, ...);
	if (event == "ADDON_LOADED" and arg1 == ns.ADDON_NAME) then
		self:UnregisterEvent("ADDON_LOADED");
		isLoaded = true;

		-- Load Module (standalone addon)
		ns.MODULES[1]:Init(KNameplateColorOptions);
	end
end

local function InitAddon(frame)
	SlashCmdList["KNC"] = SLASH_command;
	SLASH_KNC1 = "/knc";
	SLASH_KNC2 = "/kn";

	if (ns.CONFLICT) then
		ns.AddMsgErr(format(l.CONFLICT_MESSAGE, ns.CONFLICT_WITH));
		return;
	end

	SlashCmdList["CLEAR"] = SLASH_CLEAR_command;
	SLASH_KNC_CLEAR1 = "/clear";

	if (isInit or InCombatLockdown()) then return; end

	isInit = true;
	frame:SetScript("OnEvent",
		function(self, event, ...)
			OnEvent(self, event, ...);
		end
	);
	frame:RegisterEvent("ADDON_LOADED");
end

do
	local eventsFrame = CreateFrame("Frame", nil, UIParent)
	InitAddon(eventsFrame);
end


local function SaveOptions()
	-- Auto detect options controls and save them
	foreach(defaultOptions,
		function (k, v)
			local optionsObject = ns.FindControl(k);
			if (optionsObject ~= nil) then
				local control = optionsObject;
				local previousValue = KNameplateColorOptions[k] or v;
				local value = nil;

				if control.type == "color" then
					value = control:GetColor();
				elseif control.type == "dropdown" then
					value = control:GetValue();
				elseif control.type == CONTROLTYPE_SLIDER then
					value = control:GetValue();
				elseif type(previousValue) == "boolean" then
					value = control:GetChecked();
				end
				if value == nil then
					ns.AddMsgErr(format("Incorrect field value, loading default value for %s...", k));
					value = v;
				end;
				KNameplateColorOptions[k] = value;
			end
		end
	);
	
	-- OnSave: Modules
	foreach(ns.MODULES,
		function(k, v)
			ns.MODULES[k]:OnSaveOptions(KNameplateColorOptions);
		end
	);
	if ns.optionsFrame ~= nil and ns.optionsFrame.HandleVis ~= nil then
		ns.optionsFrame:Hide();
	end
end

local function RefreshOptions()
	if ns.optionsFrame ~= nil then
		ns.optionsFrame:Show();
		ns.optionsFrame.HandleVis = true;
	end
	-- Auto detect options controls and load them
	foreach(defaultOptions,
		function (k, v)
			local optionsObject = ns.FindControl(k);
			if (optionsObject ~= nil) then
				local control = optionsObject;
				local value = KNameplateColorOptions[k];
				if value == nil then
					value = v;
					ns.AddMsgErr(format("Option not found ("..l.YLD.."%s|r), loading default value...", k));
				end;

				if control.type == "color" then
					control:SetColor(value);
				elseif control.type == "dropdown" then
					control:SetValue(value);
				elseif control.type == CONTROLTYPE_SLIDER then
					control:SetValue(value);
				elseif type(value) == "boolean" then
					control:SetChecked(value);
				else
					ns.AddMsgDebug(format("Type non prevu pour %s - %s, type de valeur: %s", k, control.type or "unknown", type(value)));
				end
			end
		end
	);
end

function ns.FindControl(ControlName)
	if ns.optionsFrame[ControlName] then
		return ns.optionsFrame[ControlName];
	else
		local i = 1
		while(ns.optionsFrame["Options"..i])
		do
			if (ns.optionsFrame["Options"..i][ControlName]) then
				return ns.optionsFrame["Options"..i][ControlName];
			end
			i=i+1;
		end
	end
end

StaticPopupDialogs[ns.ADDON_NAME.."_CONFIRM_RESET"] = {
	showAlert = true,
	text = CONFIRM_RESET_SETTINGS,
	button1 = ALL_SETTINGS,
	-- button3 = CURRENT_SETTINGS,
	button2 = CANCEL,
	OnAccept = function()												
		ns.SetDefaultOptions(defaultOptions, true);
		ReloadUI();
	end,
	-- OnAlt  = function()	end,
	timeout = STATICPOPUP_TIMEOUT,
	timeoutInformationalOnly = false,
	whileDead = true,
	hideOnEscape = true,
	preferredIndex = 3,  -- avoid some UI taint
};

function KNCUI.ConfirmReset()
	StaticPopup_Show(ns.ADDON_NAME.."_CONFIRM_RESET")
end
function KNCUI.ShowEditMode(window)
	ns.ShowEditMode(window);
end

function KNCUI.OptionsContainer_OnLoad(self, scrollFrame, optionsFrame)
	if ns.CONFLICT then
		return;
	end
	ns.containerFrame = self;
	ns.scrollFrame = scrollFrame;
	ns.optionsFrame = optionsFrame;
	RefreshOptions();
	self.name = ns.TITLE;
	self.okay = SaveOptions;
	self.refresh = RefreshOptions;
	InterfaceOptions_AddCategory(self);
	if (ns.scrollFrame ~= nil) then
		local BACKDROP_TOOLTIP = {
			bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
			edgeFile = "Interface\\FriendsFrame\\UI-Toast-Border",
			tile = true,
			tileSize = 8,
			edge = true,
			edgeSize = 8,
			insets = {left = 2, right = 2, top = 2, bottom = 2},
		};

		if (BackdropTemplateMixin) then Mixin(ns.scrollFrame, BackdropTemplateMixin) end
		ns.scrollFrame:SetBackdrop(BACKDROP_TOOLTIP)
	end
	if ns.optionsFrame ~= nil and ns.optionsFrame.HandleVis ~= nil then
		ns.optionsFrame:Hide();
	end

	-- Localize FontStrings
	foreach(self,
		function (k, v)
			local child = self[k];
			if type(child) == "table" and child:GetObjectType() == "FontString" then
				child:SetText(l[child:GetText()]);
			end
		end
	);
end