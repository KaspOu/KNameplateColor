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
	FriendsNameplates_Bar_Texture = "",
	FriendsNameplates_PvpIcon = "faction",
	FriendsNameplates_Txt_ShowLevel = "12",
	FriendsNameplates_Txt_Level_Color_Under = { r= .251, g= .753, b= .251 },
	FriendsNameplates_Txt_Level_Color_Over = { r= .96, g= .83, b= 0 },

	EnemiesNameplates_Txt_UseColor = "1",
	EnemiesNameplates_Txt_Color = { r= .87, g= 0, b= .05, a = 1 },
	EnemiesNameplates_Bar_UseColor = "0",
	EnemiesNameplates_Bar_Color = { r= .87, g= 0, b= .05, a = 1 },
	EnemiesNameplates_Bar_Texture = "",
	EnemiesNameplates_PvpIcon = "faction",
	EnemiesNameplates_Txt_ShowLevel = "12",
	EnemiesNameplates_Txt_Level_Color_Under = { r= .251, g= .753, b= .251 },
	EnemiesNameplates_Txt_Level_Color_Over = { r= .800, g= .098, b= .098 },

	ShowMsgNormal = true,
	ShowMsgWarning = true,
	ShowMsgError = false,
};

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

		ns.SetDefaultOptions(defaultOptions);
		ns.RefreshOptions(defaultOptions);

		-- Load Module (standalone addon)
		ns.MODULES[1]:Init(_G[ns.OPTIONS_NAME]);
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

StaticPopupDialogs[ns.ADDON_NAME.."_CONFIRM_RESET"] = {
	showAlert = true,
	text = format("%s%s|r\n%s", l.YL, ns.TITLE, CONFIRM_RESET_SETTINGS),
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

local refreshOptions = function()
	ns.RefreshOptions(defaultOptions, true);
end
local saveOptions = function()
	ns.SaveOptions(defaultOptions, nil);
end

function ns.InterfaceOptions_AddCategory(frame, addOn, position)
	if not Settings or not Settings.RegisterCanvasLayoutSubcategory then
		return InterfaceOptions_AddCategory(frame, addOn, position)
	end
    -- cancel is no longer a default option. May add menu extension for this.
    frame.OnCommit = frame.okay;
    frame.OnDefault = frame.default;
    frame.OnRefresh = frame.refresh;

    if frame.parent then -- for subcategories
        local category = Settings.GetCategory(frame.parent);
        local subcategory, layout = Settings.RegisterCanvasLayoutSubcategory(category, frame, frame.name, frame.name);
        subcategory.ID = frame.name;
        return subcategory, category;
    else
        local category, layout = Settings.RegisterCanvasLayoutCategory(frame, frame.name, frame.name);
        category.ID = frame.name;
        Settings.RegisterAddOnCategory(category);
        return category;
    end
end
function KNCUI.OptionsContainer_OnLoad(self, scrollFrame, optionsFrame)
	if ns.CONFLICT then
		return;
	end
	ns.containerFrame = self;
	ns.scrollFrame = scrollFrame;
	ns.optionsFrame = optionsFrame;
	self.name = ns.TITLE;
	self.okay = saveOptions;
	self.refresh = refreshOptions;
	ns.InterfaceOptions_AddCategory(self);
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

	-- Localize FontStrings
	foreach(self,
		function (_, child)
			if type(child) == "table" and child:GetObjectType() == "FontString" then
				child:SetText(l[child:GetText()]);
			end
		end
	);
end