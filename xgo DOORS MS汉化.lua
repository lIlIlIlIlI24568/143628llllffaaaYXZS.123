local tweensvc = game:GetService("TweenService")
local players = game:GetService("Players")
local plr = players.LocalPlayer
local gui = Instance.new("ScreenGui")
local img = Instance.new("ImageLabel")
local snd = Instance.new("Sound")
gui.Parent = plr:WaitForChild("PlayerGui")
gui.Name = "imgfade"
gui.DisplayOrder = 10 ^ 6
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
img.Parent = gui
img.Name = "fadingimg"
img.Size = UDim2.new(0, 563, 0, 124)
img.Position = UDim2.new(0.5, -563 / 2, 0, -124)
img.Image = "rbxassetid://18787314969"
img.BackgroundTransparency = 1
img.ImageTransparency = 1
img.ScaleType = Enum.ScaleType.Stretch
img.ZIndex = 10 ^ 6
snd.Parent = gui
snd.SoundId = "rbxassetid://8795831946"
snd.Volume = 1
snd.Looped = false
snd:Play()
local movetime = 1
local fadetime = 1
local movetweeninfo = TweenInfo.new(movetime, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
local fadetweeninfo = TweenInfo.new(fadetime, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
local movegoal = {Position = UDim2.new(0.5, -563 / 2, 0.5, -124 / 2)}
local movetween = tweensvc:Create(img, movetweeninfo, movegoal)
local fadeingoal = {ImageTransparency = 0}
local fadeoutgoal = {ImageTransparency = 1}
local fadeintween = tweensvc:Create(img, fadetweeninfo, fadeingoal)
local fadeouttween = tweensvc:Create(img, fadetweeninfo, fadeoutgoal)
local function fiam()
    fadeintween:Play()
    movetween:Play()
    movetween.Completed:Connect(function()
        wait(1)
        fadeouttween:Play()
        fadeouttween.Completed:Connect(function()
            gui:Destroy()
        end)

    end)

end

fiam()
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.IgnoreGuiInset = true


local notificationFrame = Instance.new("Frame")
notificationFrame.Size = UDim2.new(0, 400, 0, 100)
notificationFrame.Position = UDim2.new(0.5, 0, 1, 100) 
notificationFrame.AnchorPoint = Vector2.new(0.5, 1) 
notificationFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
notificationFrame.BackgroundTransparency = 0.3
notificationFrame.BorderSizePixel = 0
notificationFrame.Parent = screenGui
notificationFrame.Visible = false
notificationFrame.ClipsDescendants = true


local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 20)
uiCorner.Parent = notificationFrame


local checkmarkIcon = Instance.new("ImageLabel")
checkmarkIcon.Size = UDim2.new(0, 40, 0, 40)
checkmarkIcon.Position = UDim2.new(0, 15, 0, 30)
checkmarkIcon.BackgroundTransparency = 1
checkmarkIcon.Image = "rbxassetid://18923878915" 
checkmarkIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)
checkmarkIcon.Parent = notificationFrame


local thanksText = Instance.new("TextLabel")
thanksText.Size = UDim2.new(1, -80, 0, 30) 
thanksText.Position = UDim2.new(0, 65, 0, 20)
thanksText.BackgroundTransparency = 1
thanksText.Font = Enum.Font.GothamBold
thanksText.Text = "谢谢使用!"
thanksText.TextSize = 24
thanksText.TextColor3 = Color3.fromRGB(255, 255, 255)
thanksText.TextXAlignment = Enum.TextXAlignment.Left
thanksText.Parent = notificationFrame


local messageText = Instance.new("TextLabel")
messageText.Size = UDim2.new(1, -80, 0, 40) 
messageText.Position = UDim2.new(0, 65, 0, 50)
messageText.BackgroundTransparency = 1
messageText.Font = Enum.Font.Gotham
messageText.Text = "xgo    群聊:259461151 "
messageText.TextSize = 16
messageText.TextColor3 = Color3.fromRGB(200, 200, 200)
messageText.TextXAlignment = Enum.TextXAlignment.Left
messageText.TextWrapped = true
messageText.Parent = notificationFrame


local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)


notificationFrame.Visible = true
local showTween = TweenService:Create(notificationFrame, tweenInfo, {Position = UDim2.new(0.5, 0, 0.9, 0)})
showTween:Play()

wait(4)


local fadeOutDuration = 1
local fadeTween = TweenService:Create(notificationFrame, TweenInfo.new(fadeOutDuration, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {BackgroundTransparency = 1})
fadeTween:Play()


local function fadeOutElement(element)
    local fadeOutTween = TweenService:Create(element, TweenInfo.new(fadeOutDuration), {TextTransparency = 1})
    fadeOutTween:Play()
end

fadeOutElement(thanksText)
fadeOutElement(messageText)
local fadeOutTweenIcon = TweenService:Create(checkmarkIcon, TweenInfo.new(fadeOutDuration), {ImageTransparency = 1})
fadeOutTweenIcon:Play()


fadeTween.Completed:Connect(function()
    screenGui:Destroy()
end)
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj"))()

local sound = Instance.new("Sound", workspace)
sound.SoundId = "rbxassetid://4590662766"
sound:Play()

-- ++++++++ WAX BUNDLED DATA BELOW ++++++++ --
if not isfolder("mspaint/doors/hotel") then
    makefolder("mspaint/doors/hotel")
elseif not isfolder("mspaint/doors/mines") then
    makefolder("mspaint/doors/mines")
elseif not isfolder("mspaint/doors/backdoor") then
    makefolder("mspaint/doors/backdoor")
elseif not isfolder("mspaint/doors/rooms") then
    makefolder("mspaint/doors/rooms")
end
-- 后来将被用来获得扁平的全局
local ImportGlobals

-- 保持直接关闭数据（在DOM树之前定义此线路调试等）
local ClosureBindings = {
    function()local wax,script,require=ImportGlobals(1)local ImportGlobals return (function(...)if getgenv().mspaint_loading then print("[mspaint] Loading stopped. (ERROR: Loading)"); return end
if getgenv().mspaint_loaded then print("[mspaint] Loading stopped. (ERROR: Already loaded)"); return end

getgenv().mspaint_loading = true

--// Loading Wait \\--
if not game:IsLoaded() then game.Loaded:Wait() end

--// Services \\--
local Services = require("Utils/Services")
Services:GetServices({
    "Players",
    "UserInputService",
    "TextChatService",
    "ProximityPromptService",
    "PathfindingService",

    "CoreGui",
    "StarterGui",

    "Workspace",
    "Lighting",
    "ReplicatedStorage",

    "HttpService",
    "RunService",
    "SoundService",
    "TeleportService",
    "TweenService",
    "MarketplaceService"
})

--// Utils \\--
if not wax.shared.ExecutorSupport then
    wax.shared.ExecutorSupport = require("Utils/ExecutorSupport")
end

if not wax.shared.BloxstrapRPC then
    wax.shared.BloxstrapRPC = require("Utils/BloxstrapRPC")
end

if not wax.shared.FileHelper then
    wax.shared.FileHelper = require("Utils/FileHelper")
end

--// mspaint Loader \\--
if not wax.shared.GotPlace then
    wax.shared.GotPlace = true

    shared.ScriptName = "Universal"
    shared.ScriptLoader = "Universal"
    
    local Mappings = require("Mappings")
    
    local MappingID = Mappings[game.GameId]
    if MappingID then
        local Folder = MappingID["Folder"]
        local Name = MappingID["Name"] or Folder
        local GameExclusions = MappingID["Exclusions"] or {}
        local Exclusion = GameExclusions[game.PlaceId]
        
        shared.ScriptName = Name
        shared.ScriptLoader = Folder .. "/" .. MappingID["Main"]

        shared.Mapping = MappingID
        shared.ScriptFolder = Folder
        shared.ScriptExclusion = Exclusion
    
        if Exclusion then
            shared.ScriptName = Name .. " (" .. Exclusion .. ")"
            shared.ScriptLoader = Folder .. "/" .. Exclusion
        end
    end
end

--// Global functions \\--
shared.Script = {
    Functions = {}
}
shared.Hooks = {}

shared.Script.Functions.EnforceTypes = function(args, template)
    args = if typeof(args) == "table" then args else {}

    for key, value in pairs(template) do
        local argValue = args[key]

        if argValue == nil or (value ~= nil and typeof(argValue) ~= typeof(value)) then
            args[key] = value
        elseif typeof(value) == "table" then
            args[key] = shared.Script.Functions.EnforceTypes(argValue, value)
        end
    end

    return args
end

shared.Load = require("Utils/Loader")
shared.Logs = require("Utils/Logs")
shared.Connect = require("Utils/Connections")

--// Player Variables \\--
shared.Camera = workspace.CurrentCamera

shared.LocalPlayer = shared.Players.LocalPlayer
shared.PlayerGui = shared.LocalPlayer.PlayerGui
shared.PlayerScripts = shared.LocalPlayer.PlayerScripts

shared.Fly = require("Utils/Universal/Fly")
shared.Twerk = require("Utils/Universal/Twerk")
shared.ControlModule = require("Utils/Universal/ControlModule")

local TextChannels = shared.TextChatService:FindFirstChild("TextChannels")
if TextChannels and TextChannels:FindFirstChild("RBXGeneral") then
    shared.RBXGeneral = TextChannels.RBXGeneral
end

--// Load \\--
local UICreator = require("Utils/GUI/Creator")
shared.Window = UICreator:CreateWindow()

require("Places/Loaders/" .. shared.ScriptLoader)

UICreator:CreateSettingsTab()
require("Utils/GUI/Addons")

getgenv().mspaint_loading = false
end)() end,
    function()local wax,script,require=ImportGlobals(2)local ImportGlobals return (function(...)return {
    [2440500124] = {
        ["Folder"] = "Doors",
        ["Main"] = "Doors",
        ["Name"] = "DOORS",
        ["Exclusions"] = {
            [6516141723] = "Lobby",
            [12308344607] = "Lobby"
        }
    },

    -- Regular 3008
    [1000233041] = {
        ["Folder"] = "3008",
        ["Main"] = "3008",
        ["Name"] = "3008"
    },

    -- 100 Players 3008
    [3462404408] = {
        ["Folder"] = "3008",
        ["Main"] = "3008",
        ["Name"] = "3008"
    }
}
end)() end,
    [6] = function()local wax,script,require=ImportGlobals(6)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

Script.DidGodmode = false

Script.DefaultFogEnd = shared.Lighting.FogEnd

Script.CurrentAmbient = shared.Lighting.Ambient
Script.CurrentColorShift_Bottom = shared.Lighting.ColorShift_Bottom
Script.CurrentColorShift_Top = shared.Lighting.ColorShift_Top
if shared.Lighting:FindFirstChild("FoggyDay_Atmosphere") then
    Script.CurrentFoggyDayDensity = shared.Lighting["FoggyDay_Atmosphere"].Density
end

Script.Physical = workspace:WaitForChild("GameObjects"):WaitForChild("Physical")
Script.Map = Script.Physical:WaitForChild("Map")
Script.Items = Script.Physical:WaitForChild("Items")
Script.Employees = Script.Physical:WaitForChild("Employees")

Script.FeatureConnections = {
    Item = {},
    Employee = {},
    Player = {},
    ESPTemp = {}
}

Script.ESPTable = {
    Item = {},
    Employee = {},
    Player = {}
}

Script.InteractableItems = {
	"Medkit",
	"Pizza",
	"Beans",
	"Meatballs",
	"Apple",
	"Lemon",
	"Lemon Slice",
	"Burger",
	"Banana",
	"Hotdog",
	"Striped Donut",
	"Chips",
	"Ice Cream",
	"Chocolate",
	"Cookie",
	"Bloxy Soda",
	"2 Litre Dr. Bob",
    "Dr. Bob Soda",
	"Water",
	"Jeff"
}
--// Player Variables \\--
shared.Character = shared.LocalPlayer.Character or shared.LocalPlayer.CharacterAdded:Wait()
shared.Humanoid = nil

Script.System = shared.Character:WaitForChild("System")
Script.Event = Script.System:WaitForChild("Event")
Script.Action = Script.System:WaitForChild("Action")

Script.DeathScreen = shared.PlayerGui:WaitForChild("DeathScreen")
Script.Settings = shared.PlayerGui:WaitForChild("PlayerInfo"):WaitForChild("Settings")
Script.MainGui = shared.PlayerGui:WaitForChild("MainGui")
Script.PlayerStats = Script.MainGui:WaitForChild("PlayerStats")

Script.TopBar = Script.MainGui:WaitForChild("TopBar")
Script.Calendar = Script.TopBar:WaitForChild("Calendar")
Script.CurrentDay = Script.Calendar:WaitForChild("Middle"):WaitForChild("CurrentDay")
Script.TimeLeft = shared.ReplicatedStorage:WaitForChild("ServerSettings"):WaitForChild("TimeSettings"):WaitForChild("TimeLeft")

Script.Source = shared.PlayerScripts:WaitForChild("source")
Script.Client = Script.Source:WaitForChild("client")

Script.ToolSystem = Script.Client:WaitForChild("ToolSystem")
Script.WaypointsMenu = Script.Client:WaitForChild("GUI"):WaitForChild("GuiMenus"):WaitForChild("Extras"):WaitForChild("WaypointsMenu")

Script.GamePassClockVisible = Script.Calendar:WaitForChild("Gamepass_Clock").Visible

--// Functions \\--
Script._mspaint_custom_captions = Instance.new("ScreenGui") do
    local Frame = Instance.new("Frame", Script._mspaint_custom_captions)
    local TextLabel = Instance.new("TextLabel", Frame)
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint", TextLabel)

    Script._mspaint_custom_captions.Parent = shared.ReplicatedStorage
    Script._mspaint_custom_captions.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.BackgroundColor3 = shared.Library.MainColor
    Frame.BorderColor3 = shared.Library.AccentColor
    Frame.BorderSizePixel = 2
    Frame.Position = UDim2.new(0.5, 0, 0.8, 0)
    Frame.Size = UDim2.new(0, 200, 0, 75)
    shared.Library:AddToRegistry(Frame, {
        BackgroundColor3 = "MainColor",
        BorderColor3 = "AccentColor"
    })

    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.Font = Enum.Font.Code
    TextLabel.Text = ""
    TextLabel.TextColor3 = shared.Library.FontColor
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14
    TextLabel.TextWrapped = true
    shared.Library:AddToRegistry(TextLabel, {
        TextColor3 = "FontColor"
    })

    UITextSizeConstraint.MaxTextSize = 35

    function Script.Functions.HideCaptions()
        Script._mspaint_custom_captions.Parent = shared.ReplicatedStorage
    end

    local CaptionsLastUsed = os.time()
    function Script.Functions.Captions(caption: string)
        CaptionsLastUsed = os.time()

        if Script._mspaint_custom_captions.Parent == shared.ReplicatedStorage then
            local success = pcall(function()
                Script._mspaint_custom_captions.Parent = if gethui then gethui() else shared.CoreGui
            end)

            if not success then
                Script._mspaint_custom_captions.Parent = shared.PlayerGui
            end 
        end
        
        TextLabel.Text = caption

        task.spawn(function()
            task.wait(5)
            if os.time() - CaptionsLastUsed >= 5 then
                Script.Functions.HideCaptions()
            end
        end)
    end
end

function Script.Functions.DistanceFromCharacter(position: Instance | Vector3, getPositionFromCamera: boolean | nil)
    if not position then return 9e9 end
    if typeof(position) == "Instance" then
        position = position:GetPivot().Position
    end

    if getPositionFromCamera and (shared.Camera or workspace.CurrentCamera) then
        local cameraPosition = if shared.Camera then shared.Camera.CFrame.Position else workspace.CurrentCamera.CFrame.Position

        return (cameraPosition - position).Magnitude
    end

    if shared.RootPart then
        return (shared.RootPart.Position - position).Magnitude
    elseif shared.Camera then
        return (shared.Camera.CFrame.Position - position).Magnitude
    end

    return 9e9
end

function Script.Functions.CameraChildAdded(child)
    if Toggles.AutoTPWhistle.Value then
        for playerName, _ in pairs(Options.AutoTPWhistlePlayers.Value) do
            if child.Name == playerName .. "_EchoLocation" then
                shared.Character:PivotTo(child.CFrame)
            end
        end
    end
end

function Script.Functions.IsNaN(x)
    return x ~= x
end

function Script.Functions.UpdateBloxstrapRPC()
    if not wax.shared.BloxstrapRPC then return end
    
    wax.shared.BloxstrapRPC.SetRichPresence({
        details = "播放3008 [mspaint v3]",
        state = string.lower(Script.CurrentDay.Text):gsub("^%l", string.upper),
        largeImage = {
            hoverText = "使用Mspaint v3"
        },
        smallImage = {
            assetId = 6925817108,
            hoverText = shared.LocalPlayer.Name
        }
    })
end

function Script.Functions.Respawn()
    if shared.Humanoid.Health > 0 or Script.Functions.IsNaN(shared.Humanoid.Health) then
        shared.Character:BreakJoints()
    end

    repeat task.wait(0.1) until Script.DeathScreen.BG.Visible
    
    Script.Event:FireServer("Respawn")

    Script.DeathScreen.DeathSound:Stop()
    Script.DeathScreen.DeathMusic:Stop()
end

shared.Load("Utils", "ConnectionsFuncs")
shared.Load("Utils", "ESP")

--// Tabs \\--
Script.Tabs = {
    Main = shared.Window:AddTab("主要的"),
    Exploits = shared.Window:AddTab("移除类"),
    Visuals = shared.Window:AddTab("怪物物品"),
}

shared.Load("Tabs", "Main")
shared.Load("Tabs", "Exploits")
shared.Load("Tabs", "Visuals")
--// Metamethod hooks \\--
if wax.shared.ExecutorSupport["hookmetamethod"] and wax.shared.ExecutorSupport["getnamecallmethod"] then
    if wax.shared.ExecutorSupport["require"] then
        Script.ToolGStep = wax.require(Script.ToolSystem).GlobalRenderStep
    end

    shared.Hooks.mtHook = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
        local method = getnamecallmethod()
        local args = {...}

        local isAction = method == "InvokeServer" and self.Name == "Action"

        if isAction then
            local actionType = args[1]
            local actionData = args[2]

            if actionType == "Store" and args[3] ~= "_internal_origin_mspaint" then
                if Toggles.InfiniteInventory.Value and wax.shared.ExecutorSupport["require"] then
                    require(Script.ToolSystem).GlobalRenderStep = function() end
                    local parentedTools = {}
                    
                    for _, tool in pairs(shared.LocalPlayer.Backpack:GetChildren()) do
                        table.insert(parentedTools, tool)
                    
                        shared.Humanoid:EquipTool(tool)
                        tool.Parent = workspace
                    end
    
                    task.wait()
                    local modelName = actionData.Model.Name
    
                    Script.Action:InvokeServer("Store", actionData, "_internal_origin_mspaint")
                    
                    local newTool = shared.LocalPlayer.Backpack:WaitForChild(modelName)
    
                    shared.Humanoid:EquipTool(newTool)
    
                    for _, tool in pairs(parentedTools)  do
                        tool.Parent = shared.Character
                        shared.Humanoid:EquipTool(tool)
                    end
                    
                    shared.Humanoid:UnequipTools()
    
                    require(Script.ToolSystem).GlobalRenderStep = Script.ToolGStep

                    return
                end
            end
    
            if actionType == "Drop" then
                if Toggles.ThrowPowerBoost.Value then
                    actionData.ThrowPower = Options.ThrowPower.Value
                    actionData.Throw = true
                    actionData.CameraCFrame = actionData.CameraCFrame * Options.ThrowPower.Value
                end

                if Toggles.DeleteObject.Value then
                    actionData.ThrowPower = 555
                    actionData.Throw = true
                    actionData.CameraCFrame = actionData.CameraCFrame * -1000
                end
            end

            return shared.Hooks.mtHook(self, table.unpack({
                actionType,
                actionData
            }))
        end

        return shared.Hooks.mtHook(self, ...)
    end))
end

--// Function hooks \\--
if wax.shared.ExecutorSupport["hookfunction"] and wax.shared.ExecutorSupport["getcallingscript"] then
    shared.Hooks.instantInteract = hookfunction(TweenInfo.new, newcclosure(function(self, ...)
        if not shared.Library.Unloaded then
            if Toggles.InstantInteract.Value then
                local caller = getcallingscript()
    
                local isInputController = caller and caller.Name == "InputControl"
                local isValidArgument = self and typeof(self) == "number"
    
                if isInputController and isValidArgument then
                    self = 0
                end
            end
        end

        return shared.Hooks.instantInteract(self, ...)
    end))
end

--// Connections \\--
shared.Connect:GiveSignal(shared.LocalPlayer.CharacterAdded:Connect(function(newCharacter)
    task.delay(1, Script.Functions.SetupCharacterConnection, newCharacter)
end))

shared.Connect:GiveSignal(shared.Camera.ChildAdded:Connect(Script.Functions.CameraChildAdded))

shared.Connect:GiveSignal(shared.Players.PlayerAdded:Connect(function(player)
    task.spawn(Script.Functions.SetupOtherPlayerConnection, player)
end))

--// Load \\--
task.spawn(Script.Functions.SetupCharacterConnection, shared.Character)
task.spawn(Script.Functions.SetupLightingConnection)
task.spawn(Script.Functions.SetupExploitInfModulesConnection)
task.spawn(Script.Functions.SetupBloxstrapRPCConnection)

task.spawn(Script.Functions.SetupEmployeeConnection)
task.spawn(Script.Functions.SetupItemConnection)
task.spawn(Script.Functions.SetupOtherPlayerConnection)

for _, child in pairs(shared.Camera:GetChildren()) do
    Script.Functions.CameraChildAdded(child)
end

--// Unload \\--
shared.Library:OnUnload(function()
    if wax.shared.ExecutorSupport["hookmetamethod"] and wax.shared.ExecutorSupport["getnamecallmethod"] then
        hookmetamethod(game, "__namecall", shared.Hooks.mtHook)
    end

    if wax.shared.BloxstrapRPC then
        wax.shared.BloxstrapRPC.SetRichPresence({
            details = "<reset>",
            state = "<reset>",
            largeImage = {
                reset = true
            },
            smallImage = {
                reset = true
            }
        })
    end
end)

getgenv().mspaint_loaded = true
end)() end,
    [8] = function()local wax,script,require=ImportGlobals(8)local ImportGlobals return (function(...)--// Loading Wait \\--
if shared.LocalPlayer and shared.LocalPlayer.PlayerGui:FindFirstChild("LoadingUI") and shared.LocalPlayer.PlayerGui.LoadingUI.Enabled then
    print("[mspaint]等待游戏加载...")
    repeat task.wait() until not shared.LocalPlayer.PlayerGui:FindFirstChild("LoadingUI") and true or not shared.LocalPlayer.PlayerGui.LoadingUI.Enabled
end

--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
Script.FeatureConnections = {
    Character = {},
    Clip = {},
    Door = {},
    Humanoid = {},
    Player = {},
    Pump = {},
    RootPart = {},
}
Script.ESPTable = {
    Chest = {},
    Door = {},
    Entity = {},
    SideEntity = {},
    Gold = {},
    Guiding = {},
    DroppedItem = {},
    Item = {},
    Objective = {},
    Player = {},
    HidingSpot = {},
    None = {}
}

Script.Functions.Minecart = {}

Script.Temp = {
    AnchorFinished = {},
    AutoWardrobeEntities = {},
    Bridges = {},
    PipeBridges = {},
    CollisionSize = Vector3.new(5.5, 3, 3),
    Guidance = {},
    PaintingDebounce = {},
    UsedBreakers = {},
    VoidGlitchNotifiedRooms = {}
}

Script.FakeRevive = {
    Debounce = false,
    Enabled = false,
    Connections = {}
}

Script.WhitelistConfig = {
    [45] = {firstKeep = 3, lastKeep = 2},
    [46] = {firstKeep = 2, lastKeep = 2},
    [47] = {firstKeep = 2, lastKeep = 2},
    [48] = {firstKeep = 2, lastKeep = 2},
    [49] = {firstKeep = 2, lastKeep = 4},
}

Script.SuffixPrefixes = {
    ["Backdoor"] = "",
    ["Ceiling"] = "",
    ["Moving"] = "",
    ["Ragdoll"] = "",
    ["Rig"] = "",
    ["Wall"] = "",
    ["Clock"] = "警戒表",
    ["Key"] = "钥匙",
    ["Pack"] = "包",
    ["Pointer"] = "(激光笔)",
    ["Swarm"] = "群",
}

Script.PrettyFloorName = {
    ["Fools"] = "超级硬模式",
    ["Retro"] = "复古模式"
}

Script.FloorImages = {
    ["Hotel"] = 16875079348,
    ["Mines"] = 138779629462354,
    ["Retro"] = 16992279648,
    ["Rooms"] = 16874821428,
    ["Fools"] = 17045908353,
    ["Backdoor"] = 16874352892
}

Script.EntityTable = {
    ["Names"] = {"BackdoorRush", "BackdoorLookman", "RushMoving", "AmbushMoving", "Eyes", "JeffTheKiller", "Dread", "A60", "A120"},
    ["SideNames"] = {"FigureRig", "GiggleCeiling", "GrumbleRig", "Snare"},
    ["ShortNames"] = {
        ["BackdoorRush"] = "Blitz",
        ["JeffTheKiller"] = "Jeff The Killer"
    },
    ["NotifyMessage"] = {
        ["GloombatSwarm"] = "Gloombats in next room!"
    },
    ["Avoid"] = {
        "RushMoving",
        "AmbushMoving"
    },
    ["NotifyReason"] = {
        ["A60"] = {
            ["Image"] = "12350986086",
        },
        ["A120"] = {
            ["Image"] = "12351008553",
        },
        ["BackdoorRush"] = {
            ["Image"] = "11102256553",
        },
        ["RushMoving"] = {
            ["Image"] = "11102256553",
        },
        ["AmbushMoving"] = {
            ["Image"] = "10938726652",
        },
        ["Eyes"] = {
            ["Image"] = "10865377903",
            ["Spawned"] = true
        },
        ["BackdoorLookman"] = {
            ["Image"] = "16764872677",
            ["Spawned"] = true
        },
        ["JeffTheKiller"] = {
            ["Image"] = "98993343",
            ["Spawned"] = true
        },
        ["GloombatSwarm"] = {
            ["Image"] = "79221203116470",
            ["Spawned"] = true
        },
        ["HaltRoom"] = {
            ["Image"] = "11331795398",
            ["Spawned"] = true
        }
    },
    ["NoCheck"] = {
        "Eyes",
        "BackdoorLookman",
        "JeffTheKiller"
    },
    ["InfCrucifixVelocity"] = {
        ["RushMoving"] = {
            threshold = 52,
            minDistance = 55,
        },
        ["RushNew"] = {
            threshold = 52,
            minDistance = 55,
        },    
        ["AmbushMoving"] = {
            threshold = 70,
            minDistance = 80,
        }
    },
    ["AutoWardrobe"] = {
        ["Entities"] = {
            "RushMoving",
            "AmbushMoving",
            "BackdoorRush",
            "A60",
            "A120",
        },
        ["Distance"] = {
            ["RushMoving"] = {
                Distance = 100,
                Loader = 175
            },
            ["BackdoorRush"] = {
                Distance = 100,
                Loader = 175
            },
    
            ["AmbushMoving"] = {
                Distance = 155,
                Loader = 200
            },
            ["A60"] = {
                Distance = 200,
                Loader = 200
            },
            ["A120"] = {
                Distance = 200,
                Loader = 200
            }
        }
    }
}

Script.HidingPlaceName = {
    ["Hotel"] = "柜子",
    ["Backdoor"] = "柜子",
    ["Fools"] = "柜子",
    ["Retro"] = "柜子",

    ["Rooms"] = "柜子",
    ["Mines"] = "柜子"
}

Script.CutsceneExclude = {
    "FigureHotelChase",
    "Elevator1",
    "MinesFinale"
}

Script.SlotsName = {
    "Oval",
    "Square",
    "Tall",
    "Wide"
}

Script.PromptTable = {
    GamePrompts = {},

    Aura = {
        ["ActivateEventPrompt"] = false,
        ["AwesomePrompt"] = true,
        ["FusesPrompt"] = true,
        ["HerbPrompt"] = false,
        ["LeverPrompt"] = true,
        ["LootPrompt"] = false,
        ["ModulePrompt"] = true,
        ["SkullPrompt"] = false,
        ["UnlockPrompt"] = true,
        ["ValvePrompt"] = false,
        ["PropPrompt"] = true
    },
    AuraObjects = {
        "Lock",
        "Button"
    },

    Clip = {
        "AwesomePrompt",
        "FusesPrompt",
        "HerbPrompt",
        "HidePrompt",
        "LeverPrompt",
        "LootPrompt",
        "ModulePrompt",
        "Prompt",
        "PushPrompt",
        "SkullPrompt",
        "UnlockPrompt",
        "ValvePrompt"
    },
    ClipObjects = {
        "LeverForGate",
        "LiveBreakerPolePickup",
        "LiveHintBook",
        "Button",
    },

    Excluded = {
        Prompt = {
            "HintPrompt",
            "InteractPrompt"
        },

        Parent = {
            "KeyObtainFake",
            "Padlock"
        },

        ModelAncestor = {
            "DoorFake"
        }
    }
}

Script.HideTimeValues = {
    {min = 1, max = 5, a = -1/6, b = 1, c = 20},
    {min = 6, max = 19, a = -1/13, b = 6, c = 19},
    {min = 19, max = 22, a = -1/4, b = 19, c = 18},
    {min = 23, max = 26, a = 1/3, b = 23, c = 18},
    {min = 26, max = 30, a = -1/4, b = 26, c = 19},
    {min = 30, max = 35, a = -1/3, b = 30, c = 18},
    {min = 36, max = 60, a = -1/12, b = 36, c = 18},
    {min = 60, max = 90, a = -1/30, b = 60, c = 16},
    {min = 90, max = 99, a = -1/6, b = 90, c = 15}
}

Script.VoidThresholdValues = {
    ["Hotel"] = 3,
    ["Mines"] = 3,
    ["Retro"] = 3,
    ["Rooms"] = 4,
    ["Fools"] = 3,
    ["Backdoor"] = 2,
}

Script.MinecartPathNodeColor = {
    Disabled = nil,
    Red = Color3.new(1, 0, 0),
    Yellow = Color3.new(1, 1, 0),
    Purple = Color3.new(1, 0, 1),
    Green = Color3.new(0, 1, 0),
    Cyan = Color3.new(0, 1, 1),
    Orange = Color3.new(1, 0.5, 0),
    White = Color3.new(1, 1, 1),
}

Script.MinecartPathfind = {
    -- ground chase [41 to 44]
    -- minecart chase [45 to 49]
}

Script.Anims = {}
Script.Anims.HoldAnim = Instance.new("Animation"); Script.Anims.HoldAnim.AnimationId = "rbxassetid://10479585177"
Script.Anims.ThrowAnim = Instance.new("Animation"); Script.Anims.ThrowAnim.AnimationId = "rbxassetid://10482563149"

Script.Tracks = {
    ItemHoldTrack = nil,
    ItemThrowTrack = nil,
}

function Script.Functions.Warn(message: string)
    warn("警告 -  Mspaint:", message)
end

Script._mspaint_custom_captions = Instance.new("ScreenGui"); do
    local Frame = Instance.new("Frame", Script._mspaint_custom_captions)
    local TextLabel = Instance.new("TextLabel", Frame)
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint", TextLabel)

    Script._mspaint_custom_captions.Parent = shared.ReplicatedStorage
    Script._mspaint_custom_captions.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.BackgroundColor3 = shared.Library.MainColor
    Frame.BorderColor3 = shared.Library.AccentColor
    Frame.BorderSizePixel = 2
    Frame.Position = UDim2.new(0.5, 0, 0.8, 0)
    Frame.Size = UDim2.new(0, 200, 0, 75)
    shared.Library:AddToRegistry(Frame, {
        BackgroundColor3 = "MainColor",
        BorderColor3 = "AccentColor"
    })

    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.Font = Enum.Font.Code
    TextLabel.Text = ""
    TextLabel.TextColor3 = shared.Library.FontColor
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14
    TextLabel.TextWrapped = true
    shared.Library:AddToRegistry(TextLabel, {
        TextColor3 = "FontColor"
    })

    UITextSizeConstraint.MaxTextSize = 35

    local IsCaptionHidden = true
    local CaptionsLastUsed = os.time()
    
    function Script.Functions.HideCaptions()
        IsCaptionHidden = true
        Script._mspaint_custom_captions.Parent = shared.ReplicatedStorage
    end

    function Script.Functions.Captions(caption: string)
        CaptionsLastUsed = os.time()

        if IsCaptionHidden then
            local success = pcall(function()
                Script._mspaint_custom_captions.Parent = if gethui then gethui() else shared.CoreGui
            end)

            if not success then
                Script._mspaint_custom_captions.Parent = shared.PlayerGui
            end 

            IsCaptionHidden = false
        end
        
        TextLabel.Text = caption

        task.spawn(function()
            task.wait(5)
            if os.time() - CaptionsLastUsed >= 5 then
                Script.Functions.HideCaptions()
            end
        end)
    end
end

function Script.Functions.RandomString()
    local length = math.random(10,20)
    local array = {}
    for i = 1, length do
        array[i] = string.char(math.random(32, 126))
    end
    return table.concat(array)
end

function Script.Functions.NotifyGlitch()
    if Options.NotifyEntity.Value["Void/Glitch"] and Script.LatestRoom.Value > Script.CurrentRoom + Script.VoidThresholdValues[Script.Floor.Value] and Script.Alive and not table.find(Script.Temp.VoidGlitchNotifiedRooms, Script.CurrentRoom) then
        table.insert(Script.Temp.VoidGlitchNotifiedRooms, Script.CurrentRoom)

        local message = "空白/小幅即将到来，下一扇门打开."

        if Script.IsRooms then
            local roomsLeft = (6 - (Script.LatestRoom.Value - Script.CurrentRoom))
            message = "空隙/小洞即将到来 " .. (if roomsLeft == 0 then "一旦下一扇门打开." else "在...里面 " .. roomsLeft .. " rooms") .. "."
        end

        shared.Notify:Alert({
            Title = "实体",
            Description = message,
            Reason = "去下一个房间避免它.",

            Warning = true
        })
    end
end

function Script.Functions.UpdateRPC()
    if not wax.shared.BloxstrapRPC then return end

    local roomNumberPrefix = "Room "
    local prettifiedRoomNumber = Script.CurrentRoom

    if Script.IsBackdoor then
        prettifiedRoomNumber = -50 + Script.CurrentRoom
    end

    if Script.IsMines then
        prettifiedRoomNumber += 100
    end

    prettifiedRoomNumber = tostring(prettifiedRoomNumber)

    if Script.IsRooms then
        roomNumberPrefix = "A-"
        prettifiedRoomNumber = string.format("%03d", prettifiedRoomNumber)
    end

    wax.shared.BloxstrapRPC.SetRichPresence({
        details = "播放门[mspaint v3]",
        state = roomNumberPrefix .. prettifiedRoomNumber .. " (" .. if Script.PrettyFloorName[Script.Floor.Value] then Script.PrettyFloorName[Script.Floor.Value] else ("这 " .. Script.Floor.Value)  .. ")",
        largeImage = {
            assetId = Script.FloorImages[Script.Floor.Value] or 16875079348,
            hoverText = "使用Mspaint v3 汉化xgo"
        },
        smallImage = {
            assetId = 6925817108,
            hoverText = shared.LocalPlayer.Name
        }
    })
end

--// Player Variables \\--
shared.Character = shared.LocalPlayer.Character or shared.LocalPlayer.CharacterAdded:Wait()
shared.Humanoid = nil
Script.Collision = nil
Script.CollisionClone = nil

Script.Alive = shared.LocalPlayer:GetAttribute("Alive")

--// DOORS Variables \\--
Script.EntityModules = shared.ReplicatedStorage:WaitForChild("ClientModules"):WaitForChild("EntityModules")

Script.GameData = shared.ReplicatedStorage:WaitForChild("GameData")
Script.Floor = Script.GameData:WaitForChild("Floor")
Script.LatestRoom = Script.GameData:WaitForChild("LatestRoom")

Script.LiveModifiers = shared.ReplicatedStorage:WaitForChild("LiveModifiers")
Script.Voicelines = {}
if shared.ReplicatedStorage:FindFirstChild("VoiceActing") and shared.ReplicatedStorage.VoiceActing:FindFirstChild("Voicelines") then
    for _, voiceline: Sound in pairs(shared.ReplicatedStorage.VoiceActing.Voicelines:GetDescendants()) do
        if not voiceline:IsA("Sound") then continue end
        table.insert(Script.Voicelines, voiceline.SoundId)
    end
end

Script.IsMines = Script.Floor.Value == "Mines"
Script.IsRooms = Script.Floor.Value == "Rooms"
Script.IsHotel = Script.Floor.Value == "Hotel"
Script.IsBackdoor = Script.Floor.Value == "Backdoor"
Script.IsFools = Script.Floor.Value == "Fools"
Script.IsRetro = Script.Floor.Value == "Retro"

Script.FloorReplicated = if not Script.IsFools then shared.ReplicatedStorage:WaitForChild("FloorReplicated") else nil
Script.RemotesFolder = if not Script.IsFools then shared.ReplicatedStorage:WaitForChild("RemotesFolder") else shared.ReplicatedStorage:WaitForChild("EntityInfo")

--// Player DOORS Variables \\--
Script.CurrentRoom = shared.LocalPlayer:GetAttribute("CurrentRoom") or 0

if not workspace.CurrentRooms:FindFirstChild(tostring(Script.CurrentRoom)) then
    Script.CurrentRoom = Script.LatestRoom.Value
    shared.LocalPlayer:SetAttribute("CurrentRoom", Script.CurrentRoom)
end

Script.NextRoom = Script.CurrentRoom + 1

Script.MainUI = shared.PlayerGui:WaitForChild("MainUI")
Script.MainGame = Script.MainUI:WaitForChild("Initiator"):WaitForChild("Main_Game")
Script.MainGameSrc = if wax.shared.ExecutorSupport["require"] then wax.require(Script.MainGame) else nil

--// Other Variables \\--
Script.SpeedBypassing = false
Script.LastSpeed = 0
Script.Bypassed = false

--// Functions \\--
shared.Load("Utils", "Player")
shared.Load("Utils", "ESP")
shared.Load("Utils", "Assets")
shared.Load("Utils", "Entities")

shared.Load("Utils", "AutoWardrobe")
shared.Load("Utils", "BreakerBox")
shared.Load("Utils", "Padlock")
shared.Load("Utils", "Minecarts")

shared.Load("Utils", "ConnectionsFuncs")

--// Tabs \\--
Script.Tabs = {
    Main = shared.Window:AddTab("主要功能"),
    Exploits = shared.Window:AddTab("移除功能"),
    Visuals = shared.Window:AddTab("透视通知"),
    Floor = shared.Window:AddTab("楼层功能")
}

shared.Load("Tabs", "Main")
shared.Load("Tabs", "Exploits")
shared.Load("Tabs", "Visuals")
task.spawn(shared.Load, "Tabs", "Floor")

--// Code \\--
if wax.shared.ExecutorSupport["hookmetamethod"] and wax.shared.ExecutorSupport["getnamecallmethod"] then
    shared.Hooks.mtHook = hookmetamethod(game, "__namecall", function(self, ...)
        local args = {...}
        local namecallMethod = getnamecallmethod()
    
        if namecallMethod == "FireServer" then
            if self.Name == "ClutchHeartbeat" and Toggles.AutoHeartbeat.Value then
                return
            elseif self.Name == "Crouch" and Toggles.AntiHearing.Value then
                args[1] = true
                return shared.Hooks.mtHook(self, unpack(args))
            end
        elseif namecallMethod == "Destroy" and self.Name == "RunnerNodes" then
            return
        end
    
        return shared.Hooks.mtHook(self, ...)
    end)
end

--// Prompts Connection \\--
shared.Connect:GiveSignal(shared.ProximityPromptService.PromptTriggered:Connect(function(prompt, player)
    if not Toggles.InfItems.Value or player ~= shared.LocalPlayer or not shared.Character or Script.IsFools then return end
    
    local isDoorLock = prompt.Name == "UnlockPrompt" and prompt.Parent.Name == "Lock" and not prompt.Parent.Parent:GetAttribute("Opened")
    local isSkeletonDoor = prompt.Name == "SkullPrompt" and prompt.Parent.Name == "SkullLock" and not (prompt.Parent:FindFirstChild("Door") and prompt.Parent.Door.Transparency == 1)
    local isChestBox = prompt.Name == "ActivateEventPrompt" and prompt.Parent:GetAttribute("Locked") and (prompt.Parent.Name:match("Chest") or prompt.Parent:GetAttribute("LockAttribute") == "CanCutVines" or prompt.Parent.Name == "CuttableVines")
    local isRoomsDoorLock = prompt.Parent.Parent.Parent.Name == "RoomsDoor_Entrance" and prompt.Enabled
    
    if isDoorLock or isSkeletonDoor or isChestBox or isRoomsDoorLock then
        local equippedTool = shared.Character:FindFirstChildOfClass("Tool")
        -- local toolId = equippedTool and equippedTool:GetAttribute("ID")

        if equippedTool and (equippedTool:GetAttribute("UniversalKey") or equippedTool:GetAttribute("CanCutVines")) then
            if not isChestBox then task.wait() end
            Script.RemotesFolder.DropItem:FireServer(equippedTool)

            task.spawn(function()
                workspace.Drops.ChildAdded:Wait()
                task.wait(0.05)

                local itemPickupPrompt = Script.Functions.GetNearestPromptWithCondition(function(prompt)
                    return prompt.Name == "ModulePrompt" and prompt:IsDescendantOf(workspace.Drops)
                end)

                if itemPickupPrompt then
                    if isChestBox then
                        shared.fireproximityprompt(prompt)
                    end

                    shared.fireproximityprompt(itemPickupPrompt)
                end
            end)
        end
    end
end))

--// Entity Handler \\--
shared.Connect:GiveSignal(workspace.ChildAdded:Connect(function(child)
    if not child:IsA("Model") then return end

    task.delay(0.1, function()
        local shortName = Script.Functions.GetShortName(child.Name)

        if table.find(Script.EntityTable.Names, child.Name) then
            task.spawn(function()
                repeat
                    task.wait()
                until Script.Functions.DistanceFromCharacter(child) < 750 or not child:IsDescendantOf(workspace)

                if child:IsDescendantOf(workspace) then
                    if Script.IsHotel and Toggles.AvoidRushAmbush.Value and table.find(Script.EntityTable.Avoid, child.Name) then
                        local oldNoclip = Toggles.Noclip.Value
                        local distance = Script.Functions.DistanceFromCharacter(child)

                        task.spawn(function()
                            repeat 
                                shared.RunService.Heartbeat:Wait()
                                distance = Script.Functions.DistanceFromCharacter(child)
                            until distance <= 150 or not child:IsDescendantOf(workspace)

                            if child:IsDescendantOf(workspace) then
                                Script.Functions.AvoidEntity(true)
                                repeat task.wait() until not child:IsDescendantOf(workspace)
                                Script.Functions.AvoidEntity(false, oldNoclip)
                            end
                        end)
                    end

                    if table.find(Script.EntityTable.AutoWardrobe.Entities, child.Name) then
                        local distance = Script.EntityTable.AutoWardrobe.Distance[child.Name].Loader

                        task.spawn(function()
                            repeat shared.RunService.Heartbeat:Wait() until not child:IsDescendantOf(workspace) or Script.Functions.DistanceFromCharacter(child) <= distance

                            if child:IsDescendantOf(workspace) and Toggles.AutoWardrobe.Value then
                                Script.Functions.AutoWardrobe(child)
                            end
                        end)
                    end
                    
                    if Script.IsFools and child.Name == "RushMoving" then
                        shortName = child.PrimaryPart.Name:gsub("New", "")
                    end

                    if Toggles.EntityESP.Value then
                        Script.Functions.EntityESP(child)  
                    end

                    if Options.NotifyEntity.Value[shortName] then
                        shared.Notify:Alert({
                            Title = "实体",
                            Description = string.format("%s %s", shortName, Options.NotifyEntityMessage.Value),
                            Reason = (not Script.EntityTable.NotifyReason[child.Name].Spawned and "去找一个藏身的地方!" or nil),
                            Image = Script.EntityTable.NotifyReason[child.Name].Image,

                            Warning = true
                        })

                        if Toggles.NotifyChat.Value then
                            shared.RBXGeneral:SendAsync(string.format("%s %s", shortName, Options.NotifyEntityMessage.Value))
                        end
                    end
                end
            end)
        elseif Script.EntityTable.NotifyMessage[child.Name] and Options.NotifyEntity.Value[shortName] then
            shared.Notify:Alert({
                Title = "实体",
                Description = string.format("%s %s", shortName, Options.NotifyEntityMessage.Value),
                Reason = (not Script.EntityTable.NotifyReason[child.Name].Spawned and "去找一个藏身的地方!" or nil),
                Image = Script.EntityTable.NotifyReason[child.Name].Image,

                Warning = true
            })

            if Toggles.NotifyChat.Value then
                shared.RBXGeneral:SendAsync(Script.EntityTable.NotifyMessage[child.Name])     
            end
        end

        if Script.IsFools then
            if Toggles.AntiBananaPeel.Value and child.Name == "BananaPeel" then
                child.CanTouch = false
            end

            if Toggles.AntiJeffClient.Value and child.Name == "JeffTheKiller" then
                for i, v in pairs(child:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanTouch = false
                    end
                end
            end

            if Toggles.AntiJeffServer.Value and child.Name == "JeffTheKiller" then
                task.spawn(function()
                    repeat task.wait() until shared.isnetworkowner(child.PrimaryPart)
                    child:FindFirstChildOfClass("Humanoid").Health = 0
                end)
            end
        end

        if (child.Name == "RushMoving" or child.Name == "AmbushMoving") and Toggles.InfCrucifix.Value and Script.Alive and shared.Character then
            task.wait(1.5)
            
            local hasStoppedMoving = false --entity has stoped
            local lastPosition = child:GetPivot().Position
            local lastVelocity = Vector3.new(0, 0, 0)

            local frameCount = 0
            local nextTimer = tick()
            local maxSavedFrames = 10 --after that we can ignore velocity by 0
            local currentSavedFrames = 0
            local physicsTickRate = (1 / 60) * 0.90 --usually is stable also wtf roblox why 60 Hz isn't (1 / 60) ????

            local oldFrameHz = 0
            local frameHz = 0
            local frameRate = 1 -- in seconds
            local nextTimerHz = tick()

            local entityName = child.Name

            local crucifixConnection; crucifixConnection = shared.RunService.RenderStepped:Connect(function(deltaTime)
                if not Toggles.InfCrucifix.Value or not Script.Alive or not shared.Character then crucifixConnection:Disconnect() return end

                local currentTimer = tick()
                frameCount += 1 
                frameHz += 1

                -- get the client FPS
                if currentTimer - nextTimerHz >= frameRate then
                    oldFrameHz = frameHz;
                    frameHz = 0
                    nextTimerHz = currentTimer
                    physicsTickRate = (1 / oldFrameHz) * 0.90
                end

                -- refresh rate (client) must be equal to the physics rate (server) for making the calculations properly.
                if physicsTickRate == 0 or not (currentTimer - nextTimer >= physicsTickRate) then
                    return
                end

                frameCount = 0
                nextTimer = currentTimer
            
                local currentPosition = child:GetPivot().Position
                -- Calculate velocity
                local velocity = (currentPosition - lastPosition) / deltaTime
                velocity = Vector3.new(velocity.X, 0, velocity.Z) -- Ignore Y
            
                -- Smooth velocity
                local smoothedVelocity = lastVelocity:Lerp(velocity, 0.3) --we do math stuff
                local entityVelocity = math.floor(smoothedVelocity.Magnitude)
            
                lastVelocity = smoothedVelocity
                lastPosition = currentPosition
            
                local inView = Script.Functions.IsInViewOfPlayer(child, Script.EntityTable.InfCrucifixVelocity[entityName].minDistance)
                local distanceFromPlayer = (child:GetPivot().Position - shared.Character:GetPivot().Position).Magnitude
                local isInRangeOfPlayer = distanceFromPlayer <= Script.EntityTable.InfCrucifixVelocity[entityName].minDistance
                --[[if currentSavedFrames < maxSavedFrames then
                    print(string.format("[In range: %s | In view: %s] [Hz: %d] - Entity velocity is: %.2f | Distance: %.2f | Delta: %.2f", tostring(isInRangeOfPlayer), tostring(inView), oldFrameHz, entityVelocity, distanceFromPlayer, 0))
                end]]
            
                if entityVelocity <= Script.EntityTable.InfCrucifixVelocity[entityName].threshold then
                    if entityVelocity <= 0.5 and currentSavedFrames <= maxSavedFrames then
                        currentSavedFrames += 1
                    end
            
                    --switch and trigger a print
                    if not hasStoppedMoving then
                        --print("Entity has stopped moving!")
                        hasStoppedMoving = true
                    end
            
                    -- --ignore if raycast is false
                    if not inView then
                        return
                    end
            
                    --ignore if distance is greater than X
                    if not isInRangeOfPlayer then
                        return
                    end

                    if shared.Character:FindFirstChild("Crucifix") then
                        workspace.Drops.ChildAdded:Once(function(droppedItem)
                            if droppedItem.Name == "Crucifix" then
                                local targetProximityPrompt = droppedItem:WaitForChild("ModulePrompt", 3) or droppedItem:FindFirstChildOfClass("ProximityPrompt")
                                repeat task.wait()
                                    shared.fireproximityprompt(targetProximityPrompt)
                                until not droppedItem:IsDescendantOf(workspace)
                            end
                        end)

                        Script.RemotesFolder.DropItem:FireServer(shared.Character.Crucifix);
                    end

                    return
                end

                currentSavedFrames = 0
                if hasStoppedMoving then
                    --print("Entity started moving!")
                    hasStoppedMoving = false
                end
            end)
            
            local childRemovedConnection; childRemovedConnection = workspace.ChildRemoved:Connect(function(model: Model)
                if model ~= child then return end

                crucifixConnection:Disconnect()
                childRemovedConnection:Disconnect()
            end)

            shared.Connect:GiveSignal(crucifixConnection)
            shared.Connect:GiveSignal(childRemovedConnection)
        end
    end)

    if shared.CheckToggle("NoVoiceActing", true) and table.find(Script.EntityTable.Names, child.Name) then
        for _, sound in pairs(child:GetDescendants()) do
            if Script.Functions.VoiceCondition(sound) then sound:Destroy() end
        end

        shared.Connect:GiveSignal(child.DescendantAdded:Connect(function(child)
            if Script.Functions.VoiceCondition(child) then child:Destroy() end
        end))
    end
end))

--// Drops Connection \\--
for _, drop in pairs(workspace.Drops:GetChildren()) do
    task.spawn(Script.Functions.SetupDropConnection, drop)
end
shared.Connect:GiveSignal(workspace.Drops.ChildAdded:Connect(function(child)
    task.spawn(Script.Functions.SetupDropConnection, child)
end))

--// Rooms Connection \--
for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
    task.spawn(Script.Functions.SetupRoomConnection, room)

    if Script.IsMines then
        task.spawn(Script.Functions.Minecart.Pathfind, room, tonumber(room.Name))
    end
end
shared.Connect:GiveSignal(workspace.CurrentRooms.ChildAdded:Connect(function(room)
    task.spawn(Script.Functions.SetupRoomConnection, room)
    
    if Script.IsMines then
        task.spawn(Script.Functions.Minecart.Pathfind, room, tonumber(room.Name))
    end
end))

--// Camera Connection \\--
if shared.Camera then task.spawn(Script.Functions.SetupCameraConnection, shared.Camera) end
shared.Connect:GiveSignal(workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
    if workspace.CurrentCamera then
        shared.Camera = workspace.CurrentCamera
        task.spawn(Script.Functions.SetupCameraConnection, shared.Camera)
    end
end))

--// Players Connection \\--
for _, player in pairs(shared.Players:GetPlayers()) do
    if player == shared.LocalPlayer then continue end
    Script.Functions.SetupOtherPlayerConnection(player)
end
shared.Connect:GiveSignal(shared.Players.PlayerAdded:Connect(Script.Functions.SetupOtherPlayerConnection))

--// Local Player Connection \\--
shared.Connect:GiveSignal(shared.LocalPlayer.CharacterAdded:Connect(function(newCharacter)
    task.delay(1, Script.Functions.SetupCharacterConnection, newCharacter)
    if Script.FakeRevive.Enabled then
        Script.FakeRevive.Enabled = false

        for _, connection in pairs(Script.FakeRevive.Connections) do
            connection:Disconnect()
        end
        
        table.clear(Script.FakeRevive.Connections)

        if Toggles.FakeRevive.Value then
            shared.Notify:Alert({
                Title = "假恢复",
                Description = "你复活了，假恢复已经停止了工作.",
                Reason = "再次启用它以开始虚假复兴",

                LinoriaMessage = "假恢复已停止工作，再次启用它来开始虚假的复兴",
            })
            Toggles.FakeRevive:SetValue(false)
        end

        if Script.IsMines and Toggles.EnableJump.Value then
            Options.WalkSpeed:SetMax((Toggles.TheMinesAnticheatBypass.Value and Script.Bypassed) and 75 or 18)
        else
            Options.WalkSpeed:SetMax((Script.IsMines and Toggles.TheMinesAnticheatBypass.Value and Script.Bypassed) and 75 or 22)
        end

        Options.FlySpeed:SetMax((Script.IsMines and Toggles.TheMinesAnticheatBypass.Value and Script.Bypassed) and 75 or 22)
    end
end))

shared.Connect:GiveSignal(shared.LocalPlayer:GetAttributeChangedSignal("Alive"):Connect(function()
    Script.Alive = shared.LocalPlayer:GetAttribute("Alive")

    if not Script.Alive and Script.IsFools and Toggles.InfRevives.Value then
        task.delay(1.25, function()
            Script.RemotesFolder.Revive:FireServer()
        end)
    end
end))

shared.Connect:GiveSignal(shared.PlayerGui.ChildAdded:Connect(function(child)
    if child.Name == "MainUI" then
        Script.MainUI = child

        task.delay(1, function()
            if Script.MainUI then
                Script.MainGame = Script.MainUI:WaitForChild("Initiator"):WaitForChild("Main_Game")

                if Script.MainGame then
                    if wax.shared.ExecutorSupport["require"] then Script.MainGameSrc = wax.require(Script.MainGame) end

                    if Script.MainGame:WaitForChild("Health", 5) then
                        if Script.IsHotel and Toggles.NoJammin.Value and Script.LiveModifiers:FindFirstChild("Jammin") then
                            local jamSound = Script.MainGame:FindFirstChild("Jam", true)
                            if jamSound then jamSound.Playing = false end
                        end
                    end

                    if Script.MainGame:WaitForChild("RemoteListener", 5) then
                        local modules = Script.MainGame:FindFirstChild("Modules", true)
                        if not modules then return end
                    
                        if Toggles.AntiDread.Value then
                            local module = modules:FindFirstChild("Dread", true)
    
                            if module then
                                module.Name = "_Dread"
                            end
                        end

                        if Toggles.AntiScreech.Value then
                            local module = modules:FindFirstChild("Screech", true)
    
                            if module then
                                module.Name = "_Screech"
                            end
                        end

                        if Toggles.NoSpiderJumpscare.Value then
                            local module = modules:FindFirstChild("SpiderJumpscare", true)
    
                            if module then
                                module.Name = "_SpiderJumpscare"
                            end
                        end

                        if (Script.IsHotel or Script.IsRooms) and Toggles.AntiA90.Value then
                            local module = modules:FindFirstChild("A90", true)
    
                            if module then
                                module.Name = "_A90"
                            end
                        end
                    end
                end
            end
        end)
    end
end))

--// ESP Handler \\--
shared.Connect:GiveSignal(Script.LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
    Script.Functions.NotifyGlitch()
end))

shared.Connect:GiveSignal(shared.LocalPlayer:GetAttributeChangedSignal("CurrentRoom"):Connect(function()
    if Script.CurrentRoom == shared.LocalPlayer:GetAttribute("CurrentRoom") then return end

    Script.CurrentRoom = shared.LocalPlayer:GetAttribute("CurrentRoom")
    Script.NextRoom = Script.CurrentRoom + 1
    task.spawn(Script.Functions.UpdateRPC)

    Script.Functions.NotifyGlitch()

    local currentRoomModel = workspace.CurrentRooms:FindFirstChild(Script.CurrentRoom)
    local nextRoomModel = workspace.CurrentRooms:FindFirstChild(Script.NextRoom)

    if Script.IsMines and Script.Bypassed and currentRoomModel:GetAttribute("RawName") == "HaltHallway" then
        Script.Bypassed = false
        shared.Notify:Alert({
            Title = "抗灰分地旁路",
            Description = "停止破碎的抗灰分地旁路.",
            Reason = "请再次继续梯子以修复它.",

            LinoriaMessage = "停止破碎的抗灰分地旁路，请再次走上梯子来修复它.",
        })

        Options.WalkSpeed:SetMax(Toggles.SpeedBypass.Value and 75 or (Toggles.EnableJump.Value and 18 or 22))
        Options.FlySpeed:SetMax(Toggles.SpeedBypass.Value and 75 or 22)
    end

    if Toggles.DoorESP.Value then
        for _, doorEsp in pairs(Script.ESPTable.Door) do
            doorEsp.Destroy()
        end

        if currentRoomModel then
            task.spawn(Script.Functions.DoorESP, currentRoomModel)
        end

        if nextRoomModel then
            task.spawn(Script.Functions.DoorESP, nextRoomModel)
        end
    end
    if Toggles.ObjectiveESP.Value then
        for _, objectiveEsp in pairs(Script.ESPTable.Objective) do
            objectiveEsp.Destroy()
        end
    end
    if Toggles.EntityESP.Value then
        for _, sideEntityESP in pairs(Script.ESPTable.SideEntity) do
            sideEntityESP.Destroy()
        end
    end
    if Toggles.ItemESP.Value then
        for _, itemEsp in pairs(Script.ESPTable.Item) do
            itemEsp.Destroy()
        end
    end
    if Toggles.ChestESP.Value then
        for _, chestEsp in pairs(Script.ESPTable.Chest) do
            chestEsp.Destroy()
        end
    end
    if Toggles.HidingSpotESP.Value then
        for _, hidingSpotEsp in pairs(Script.ESPTable.HidingSpot) do
            hidingSpotEsp.Destroy()
        end
    end
    if Toggles.GoldESP.Value then
        for _, goldEsp in pairs(Script.ESPTable.Gold) do
            goldEsp.Destroy()
        end
    end

    if currentRoomModel then
        for _, asset in pairs(currentRoomModel:GetDescendants()) do
            if Toggles.ObjectiveESP.Value then
                task.spawn(Script.Functions.ObjectiveESP, asset)
            end

            if Toggles.EntityESP.Value and table.find(Script.EntityTable.SideNames, asset.Name) then    
                task.spawn(Script.Functions.SideEntityESP, asset)
            end
    
            if Toggles.ItemESP.Value and Script.Functions.ItemCondition(asset) then
                task.spawn(Script.Functions.ItemESP, asset)
            end

            if Toggles.ChestESP.Value and (asset:GetAttribute("Storage") == "ChestBox" or asset.Name == "Toolshed_Small") then
                task.spawn(Script.Functions.ChestESP, asset)
            end

            if Toggles.HidingSpotESP.Value and (asset:GetAttribute("LoadModule") == "Wardrobe" or asset:GetAttribute("LoadModule") == "Bed" or asset.Name == "Rooms_Locker" or asset.Name == "RetroWardrobe") then
                Script.Functions.HidingSpotESP(asset)
            end

            if Toggles.GoldESP.Value and asset.Name == "GoldPile" then
                Script.Functions.GoldESP(asset)
            end
        end
    end
end))

--// UIS Connection \\--
shared.Connect:GiveSignal(shared.UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if shared.UserInputService:GetFocusedTextBox() then return end

    if shared.CheckToggle("GrabBananaJeffToggle", true) and shared.Library.IsMobile and input.UserInputType == Enum.UserInputType.Touch then
        if Script.Temp.HoldingItem then
            return Script.Functions.ThrowBananaJeff()
        end

        local touchPos = input.Position
        local ray = workspace.CurrentCamera:ViewportPointToRay(touchPos.X, touchPos.Y)
        local result = workspace:Raycast(ray.Origin, ray.Direction * 500, RaycastParams.new())
        
        local target = result and result.Instance

        if target and shared.isnetworkowner(target) then
            if target.Name == "BananaPeel" then
                Script.Tracks.ItemHoldTrack:Play()

                if not target:FindFirstChildOfClass("BodyGyro") then
                    Instance.new("BodyGyro", target)
                end

                if not target:GetAttribute("Clip") then target:SetAttribute("Clip", target.CanCollide) end

                target.CanTouch = false
                target.CanCollide = false

                Script.Temp.HoldingItem = target
            elseif target:FindFirstAncestorWhichIsA("Model").Name == "JeffTheKiller" then
                Script.Tracks.ItemHoldTrack:Play()

                local jeff = target:FindFirstAncestorWhichIsA("Model")

                for _, part in ipairs(jeff:GetDescendants()) do
                    if part:IsA("BasePart") then
                        if not part:GetAttribute("Clip") then part:SetAttribute("Clip", target.CanCollide) end

                        part.CanTouch = false
                        part.CanCollide = false
                    end
                end

                if not jeff.PrimaryPart:FindFirstChildOfClass("BodyGyro") then
                    Instance.new("BodyGyro", jeff.PrimaryPart)
                end

                Script.Temp.HoldingItem = jeff.PrimaryPart
            end
        end
    end
end))

--// Main RenderStepped \\--
shared.Connect:GiveSignal(shared.RunService.RenderStepped:Connect(function()
    if not Toggles.ShowCustomCursor.Value and shared.Library.Toggled then
        shared.UserInputService.MouseBehavior = Enum.MouseBehavior.Default
        shared.UserInputService.MouseIcon = "rbxassetid://2833720882"
        shared.UserInputService.MouseIconEnabled = true
    end

    local isThirdPersonEnabled = Toggles.ThirdPerson.Value and (shared.Library.IsMobile or Options.ThirdPersonKey:GetState())
    if Script.MainGameSrc then
        if isThirdPersonEnabled then
            shared.Camera.CFrame = Script.MainGameSrc.finalCamCFrame * CFrame.new(1.5, -0.5, 6.5)
        end
        Script.MainGameSrc.fovtarget = Options.FOV.Value

        if Toggles.NoCamBob.Value then
            Script.MainGameSrc.bobspring.Position = Vector3.new()
            Script.MainGameSrc.spring.Position = Vector3.new()
        end

        if Toggles.NoCamShake.Value then
            Script.MainGameSrc.csgo = CFrame.new()
        end
    elseif shared.Camera then
        if isThirdPersonEnabled then
            shared.Camera.CFrame = shared.Camera.CFrame * CFrame.new(1.5, -0.5, 6.5)
        end

        shared.Camera.FieldOfView = Options.FOV.Value
    end

    if shared.Character then
        if shared.Character:FindFirstChild("Head") and 
            not (
                Script.MainGameSrc and Script.MainGameSrc.stopcam or (shared.RootPart and shared.RootPart.Anchored) and not shared.Character:GetAttribute("Hiding")
            ) 
        then
            shared.Character:SetAttribute("ShowInFirstPerson", isThirdPersonEnabled)
            shared.Character.Head.LocalTransparencyModifier = isThirdPersonEnabled and 0 or 1
        end

        if shared.Humanoid and Toggles.EnableSpeedHack.Value then
            shared.Humanoid.WalkSpeed = if shared.Character:GetAttribute("Climbing") then Options.LadderSpeed.Value else Options.WalkSpeed.Value
        end

        if shared.RootPart then
            shared.RootPart.CanCollide = not Toggles.Noclip.Value
        end
        
        if Script.Collision then
            if Toggles.Noclip.Value then
                Script.Collision.CanCollide = not Toggles.Noclip.Value
                if Script.Collision:FindFirstChild("CollisionCrouch") then
                    Script.Collision.CollisionCrouch.CanCollide = not Toggles.Noclip.Value
                end
            end
        end

        if shared.Character:FindFirstChild("UpperTorso") then
            shared.Character.UpperTorso.CanCollide = not Toggles.Noclip.Value
        end
        if shared.Character:FindFirstChild("LowerTorso") then
            shared.Character.LowerTorso.CanCollide = not Toggles.Noclip.Value
        end

        if Toggles.DoorReach.Value and workspace.CurrentRooms:FindFirstChild(Script.LatestRoom.Value) then
            local door = workspace.CurrentRooms[Script.LatestRoom.Value]:FindFirstChild("Door")

            if door and door:FindFirstChild("ClientOpen") then
                door.ClientOpen:FireServer()
            end
        end

        if Toggles.AutoInteract.Value and (shared.Library.IsMobile or Options.AutoInteractKey:GetState()) then
            local prompts = Script.Functions.GetAllPromptsWithCondition(function(prompt)
                if not prompt.Parent then return false end

                if Options.AutoInteractIgnore.Value["Jeff Items"] and prompt.Parent:GetAttribute("JeffShop") then return false end
                if Options.AutoInteractIgnore.Value["Unlock w/ Lockpick"] and (prompt.Name == "UnlockPrompt" or prompt.Parent:GetAttribute("Locked")) and shared.Character:FindFirstChild("Lockpick") then return false end
                if Options.AutoInteractIgnore.Value["Paintings"] and prompt.Name == "PropPrompt" then return false end
                if Options.AutoInteractIgnore.Value["Gold"] and prompt.Name == "LootPrompt" then return false end
                if Options.AutoInteractIgnore.Value["Light Source Items"] and prompt.Parent:GetAttribute("Tool_LightSource") and not prompt.Parent:GetAttribute("Tool_CanCutVines") then return false end
                if Options.AutoInteractIgnore.Value["骷髅提示"] and prompt.Name == "SkullPrompt" then return false end

                if prompt.Parent:GetAttribute("PropType") == "Battery" and not (shared.Character:FindFirstChildOfClass("Tool") and (shared.Character:FindFirstChildOfClass("Tool"):GetAttribute("RechargeProp") == "Battery" or shared.Character:FindFirstChildOfClass("Tool"):GetAttribute("StorageProp") == "Battery")) then return false end 
                if prompt.Parent:GetAttribute("PropType") == "Heal" and shared.Humanoid and shared.Humanoid.Health == shared.Humanoid.MaxHealth then return false end
                if prompt.Parent.Name == "MinesAnchor" then return false end

                if Script.IsRetro and prompt.Parent.Parent.Name == "RetroWardrobe" then return false end

                return Script.PromptTable.Aura[prompt.Name] ~= nil
            end)

            for _, prompt: ProximityPrompt in pairs(prompts) do
                task.spawn(function()
                    -- checks if distance can interact with prompt and if prompt can be interacted again
                    if Script.Functions.DistanceFromCharacter(prompt.Parent) < prompt.MaxActivationDistance and (not prompt:GetAttribute("Interactions" .. shared.LocalPlayer.Name) or Script.PromptTable.Aura[prompt.Name] or table.find(Script.PromptTable.AuraObjects, prompt.Parent.Name)) then
                        if prompt.Parent.Name == "Slot" and prompt.Parent:GetAttribute("Hint") then
                            if Script.Temp.PaintingDebounce[prompt] then return end

                            local currentPainting = shared.Character:FindFirstChild("Prop")
                            local slotPainting = prompt.Parent:FindFirstChild("Prop")

                            local currentHint = (currentPainting and currentPainting:GetAttribute("Hint"))
                            local slotHint = (slotPainting and slotPainting:GetAttribute("Hint"))
                            local promptHint = prompt.Parent:GetAttribute("Hint")

                            --print(currentHint, slotHint, promptHint)
                            if slotHint ~= promptHint and (currentHint == promptHint or slotPainting) then
                                Script.Temp.PaintingDebounce[prompt] = true
                                shared.fireproximityprompt(prompt)
                                task.wait(0.3)
                                Script.Temp.PaintingDebounce[prompt] = false    
                            end
        
                            return
                        end
                        
                        shared.fireproximityprompt(prompt)
                    end
                end)
            end
        end

        if Toggles.SpamOtherTools.Value and (shared.Library.IsMobile or Options.SpamOtherTools:GetState()) then
            for _, player in pairs(shared.Players:GetPlayers()) do
                if player == shared.LocalPlayer then continue end
                
                for _, tool in pairs(player.Backpack:GetChildren()) do
                    tool:FindFirstChildOfClass("RemoteEvent"):FireServer()
                end
                
                local toolRemote = player.Character:FindFirstChild("Remote", true)
                if toolRemote then
                    toolRemote:FireServer()
                end
            end
        end

        if Toggles.AnticheatManipulation.Value and (shared.Library.IsMobile or Options.AnticheatManipulationKey:GetState()) then
            shared.Character:PivotTo(shared.Character:GetPivot() * CFrame.new(0, 0, 1000))
        end

        if Script.IsMines then
            if Toggles.AutoAnchorSolver.Value and Script.LatestRoom.Value == 50 and Script.MainUI.MainFrame:FindFirstChild("AnchorHintFrame") then
                local prompts = Script.Functions.GetAllPromptsWithCondition(function(prompt)
                    return prompt.Name == "ActivateEventPrompt" and prompt.Parent:IsA("Model") and prompt.Parent.Name == "MinesAnchor" and not prompt.Parent:GetAttribute("Activated")
                end)

                local CurrentGameState = {
                    DesignatedAnchor = Script.MainUI.MainFrame.AnchorHintFrame.AnchorCode.Text,
                    AnchorCode = Script.MainUI.MainFrame.AnchorHintFrame.Code.Text
                }

                for _, prompt in pairs(prompts) do
                    task.spawn(function()
                        local Anchor = prompt.Parent
                        local CurrentAnchor = Anchor.Sign.TextLabel.Text

                        if not (Script.Functions.DistanceFromCharacter(prompt.Parent) < prompt.MaxActivationDistance) then return end
                        if CurrentAnchor ~= CurrentGameState.DesignatedAnchor then return end

                        local result = Anchor:FindFirstChildOfClass("RemoteFunction"):InvokeServer(CurrentGameState.AnchorCode)
                        if result then
                            shared.Notify:Alert({
                                Title = "自动锚索求解器",
                                Description = "解决了锚 " .. CurrentAnchor .. " 成功地!",
                                Reason = "用代码解决锚点 " .. CurrentGameState.AnchorCode,
                            })
                        end
                    end)
                end
            end
        elseif Script.IsFools then
            local HoldingItem = Script.Temp.HoldingItem
            if HoldingItem and not shared.isnetworkowner(HoldingItem) then
                shared.Notify:Alert({
                    Title = "香蕉/杰夫投掷",
                    Description = "由于网络所有者变更，您不再持有该物品！",
                })
                Script.Temp.HoldingItem = nil
            end
    
            if HoldingItem and Toggles.GrabBananaJeffToggle.Value then
                if HoldingItem:FindFirstChildOfClass("BodyGyro") then
                    HoldingItem.CanTouch = false
                    HoldingItem.CFrame = shared.Character.RightHand.CFrame * CFrame.Angles(math.rad(-90), 0, 0)
                end
            end
            
            if not shared.Library.IsMobile then
                local isGrabbing = Options.GrabBananaJeff:GetState() and Toggles.GrabBananaJeffToggle.Value
                local isThrowing = Options.ThrowBananaJeff:GetState()
                
                if isThrowing and HoldingItem and shared.isnetworkowner(HoldingItem) then
                    Script.Functions.ThrowBananaJeff()
                end
                
                local target = shared.LocalPlayer:GetMouse().Target
                
                if not target then return end
                if isGrabbing and shared.isnetworkowner(target) then
                    if target.Name == "BananaPeel" then
                        Script.Tracks.ItemHoldTrack:Play()
    
                        if not target:FindFirstChildOfClass("BodyGyro") then
                            Instance.new("BodyGyro", target)
                        end
    
                        if not target:GetAttribute("Clip") then target:SetAttribute("Clip", target.CanCollide) end
    
                        target.CanTouch = false
                        target.CanCollide = false
    
                        Script.Temp.HoldingItem = target
                    elseif target:FindFirstAncestorWhichIsA("Model").Name == "JeffTheKiller" then
                        Script.Tracks.ItemHoldTrack:Play()
    
                        local jeff = target:FindFirstAncestorWhichIsA("Model")
    
                        for _, i in ipairs(jeff:GetDescendants()) do
                            if i:IsA("BasePart") then
                                if not i:GetAttribute("Clip") then i:SetAttribute("Clip", target.CanCollide) end
    
                                i.CanTouch = false
                                i.CanCollide = false
                            end
                        end
    
                        if not jeff.PrimaryPart:FindFirstChildOfClass("BodyGyro") then
                            Instance.new("BodyGyro", jeff.PrimaryPart)
                        end
    
                        Script.Temp.HoldingItem = jeff.PrimaryPart
                    end
                end
            end
        end

        if Toggles.AntiEyes.Value and (workspace:FindFirstChild("Eyes") or workspace:FindFirstChild("BackdoorLookman")) then
            if not Script.IsFools then
                -- lsplash meanie for removing other args in motorreplication
                Script.RemotesFolder.MotorReplication:FireServer(-649)
            else
                Script.RemotesFolder.MotorReplication:FireServer(0, -90, 0, false)
            end
        end
    end

    task.spawn(function()
        for guidance, part in pairs(Script.Temp.Guidance) do
            if not guidance:IsDescendantOf(workspace) then continue end
            part.CFrame = guidance.CFrame
        end
    end)
end))

shared.Connect:GiveSignal(shared.RunService.RenderStepped:Connect(function()
    if Toggles["ShowCustomCursor"] and not Toggles.ShowCustomCursor.Value and shared.Library.Toggled then
        shared.UserInputService.MouseBehavior = Enum.MouseBehavior.Default
        shared.UserInputService.MouseIcon = "rbxassetid://2833720882"
        shared.UserInputService.MouseIconEnabled = true
    end
end))

--// Load \\--
task.spawn(Script.Functions.SetupCharacterConnection, shared.Character)

shared.Library:OnUnload(function()
    print("Unloading DOORS...")
    if shared.Hooks.mtHook then hookmetamethod(game, "__namecall", shared.Hooks.mtHook) end
    if shared.Hooks._fixDistanceFromCharacter then hookmetamethod(shared.Hooks.LocalPlayer, "__namecall", shared.Hooks._fixDistanceFromCharacter) end

    if Script.FakeRevive.Enabled then
        for _, connection in pairs(Script.FakeRevive.Connections) do
            if connection.Connected then connection:Disconnect() end
        end

        table.clear(Script.FakeRevive.Connections)
    end

    if wax.shared.BloxstrapRPC then
        wax.shared.BloxstrapRPC.SetRichPresence({
            details = "<reset>",
            state = "<reset>",
            largeImage = {
                reset = true
            },
            smallImage = {
                reset = true
            }
        })
    end

    if shared.Character then
        shared.Character:SetAttribute("CanJump", false)

        local speedBoostAssignObj = Script.IsFools and shared.Humanoid or shared.Character
        speedBoostAssignObj:SetAttribute("SpeedBoostBehind", 0)
    end

    if Script.Alive then
        shared.Lighting.Ambient = workspace.CurrentRooms[Script.CurrentRoom]:GetAttribute("Ambient")
    else
        shared.Lighting.Ambient = Color3.new(0, 0, 0)
    end

    if Script.EntityModules then
        local haltModule = Script.EntityModules:FindFirstChild("_Shade")
        local glitchModule = Script.EntityModules:FindFirstChild("_Glitch")
        local voidModule = Script.EntityModules:FindFirstChild("_Void")

        if haltModule then
            haltModule.Name = "Shade"
        end
        if glitchModule then
            glitchModule.Name = "Glitch"
        end
        if voidModule then
            voidModule.Name = "Void"
        end
    end

    local voicelines = shared.ReplicatedStorage:FindFirstChild("_Voicelines", true)
    if voicelines then
        voicelines.Name = "Voicelines"
    end

    if Script.MainGame then
        local modules = Script.MainGame:FindFirstChild("Modules", true)

        local dreadModule = modules and modules:FindFirstChild("_Dread", true)
        local screechModule = modules and modules:FindFirstChild("_Screech", true)
        local spiderModule = modules and modules:FindFirstChild("_SpiderJumpscare", true)

        if dreadModule then
            dreadModule.Name = "Dread"
        end
        if screechModule then
            screechModule.Name = "Screech"
        end
        if spiderModule then
            spiderModule.Name = "SpiderJumpscare"
        end
    end

    if Script.MainGameSrc then
        Script.MainGameSrc.fovtarget = 70
    else
        shared.Camera.FieldOfView = 70
    end

    if shared.RootPart then
        local existingProperties = shared.RootPart.CustomPhysicalProperties
        shared.RootPart.CustomPhysicalProperties = PhysicalProperties.new(Script.Temp.NoAccelValue, existingProperties.Friction, existingProperties.Elasticity, existingProperties.FrictionWeight, existingProperties.ElasticityWeight)
    end

    if Script.Tracks.ItemHoldTrack then Script.Tracks.ItemHoldTrack:Stop() end
    if Script.Tracks.ItemThrowTrack then Script.Tracks.ItemThrowTrack:Stop() end
    shared.Twerk:Disable()

    for _, animation in pairs(Script.Anims) do
        animation:Destroy()
    end

    if Script.IsBackdoor then
        local clientRemote = Script.FloorReplicated.ClientRemote
        local internal_temp_mspaint = clientRemote:FindFirstChild("_mspaint")

        if internal_temp_mspaint and #internal_temp_mspaint:GetChildren() ~= 0 then
            for i,v in pairs(internal_temp_mspaint:GetChildren()) do
                v.Parent = clientRemote.Haste
            end
        end

        internal_temp_mspaint:Destroy()
    end

    if Script.IsMines then
        local acbypasspart = workspace:FindFirstChild("_internal_mspaint_acbypassprogress")
        if acbypasspart then acbypasspart:Destroy() end
    end

    if Script.IsRooms then
        if workspace:FindFirstChild("_internal_mspaint_pathfinding_nodes") then
            workspace:FindFirstChild("_internal_mspaint_pathfinding_nodes"):Destroy()
        end
        if workspace:FindFirstChild("_internal_mspaint_pathfinding_block") then
            workspace:FindFirstChild("_internal_mspaint_pathfinding_block"):Destroy()
        end
    end

    if Script._mspaint_custom_captions then
        Script._mspaint_custom_captions:Destroy()
    end

    if Script.Collision then
        Script.Collision.CanCollide = if Script.MainGameSrc then not Script.MainGameSrc.crouching else not shared.Character:GetAttribute("Crouching")
        if Script.Collision:FindFirstChild("CollisionCrouch") then
            Script.Collision.CollisionCrouch.CanCollide = if Script.MainGameSrc then Script.MainGameSrc.crouching else shared.Character:GetAttribute("Crouching")
        end
    end

    if Script.CollisionClone then Script.CollisionClone:Destroy() end

    for _, antiBridge in pairs(Script.Temp.Bridges) do antiBridge:Destroy() end
    for _, antiBridge in pairs(Script.Temp.PipeBridges) do antiBridge:Destroy() end

    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Destroy()
        end
    end

    for _, category in pairs(Script.FeatureConnections) do
        for _, connection in pairs(category) do
            connection:Disconnect()
        end
    end
    
    for _, object in pairs(workspace.CurrentRooms:GetDescendants()) do
        if Script.Functions.PromptCondition(object) then
            if not object:GetAttribute("Hold") then object:SetAttribute("Hold", object.HoldDuration) end
            if not object:GetAttribute("Distance") then object:SetAttribute("Distance", object.MaxActivationDistance) end
            if not object:GetAttribute("Clip") then object:SetAttribute("Clip", object.RequiresLineOfSight) end

            object.HoldDuration = object:GetAttribute("Hold")
            object.MaxActivationDistance = object:GetAttribute("Distance")
            object.RequiresLineOfSight = object:GetAttribute("Clip")
        elseif object:IsA("BasePart") then
            if not object:GetAttribute("Material") then object:SetAttribute("Material", object.Material) end
            if not object:GetAttribute("Reflectance") then object:SetAttribute("Reflectance", object.Reflectance) end

            object.Material = object:GetAttribute("Material")
            object.Reflectance = object:GetAttribute("Reflectance")
        elseif object:IsA("Decal") then
            if not object:GetAttribute("Transparency") then object:SetAttribute("Transparency", object.Transparency) end

            if not table.find(Script.SlotsName, object.Name) then
                object.Transparency = object:GetAttribute("Transparency")
            end
        end
    end

    workspace.Terrain.WaterReflectance = 1
    workspace.Terrain.WaterTransparency = 1
    workspace.Terrain.WaterWaveSize = 0.05
    workspace.Terrain.WaterWaveSpeed = 8
    shared.Lighting.GlobalShadows = true

    print("Unloaded DOORS!")
end)

getgenv().mspaint_loaded = true
end)() end,
    [9] = function()local wax,script,require=ImportGlobals(9)local ImportGlobals return (function(...)--// Loading Wait \\--
if shared.LocalPlayer.PlayerGui:FindFirstChild("LoadingUI") and shared.LocalPlayer.PlayerGui.LoadingUI.Enabled then
    repeat task.wait() until not shared.LocalPlayer.PlayerGui.LoadingUI.Enabled
end

shared.Character = shared.LocalPlayer.Character or shared.LocalPlayer.CharacterAdded:Wait()

--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
Script.CurrentBadge = 0
Script.Achievements = {
    "SurviveWithoutHiding",
    "SurviveGloombats",
    "SurviveSeekMinesSecond",
    "TowerHeroesGoblino",
    "EscapeBackdoor",
    "SurviveFiredamp",
    "CrucifixDread",
    "EnterRooms",
    "EncounterVoid",
    "Join",
    "DeathAmt100",
    "UseCrucifix",
    "EncounterSpider",
    "SurviveHalt",
    "SurviveRush",
    "DeathAmt10",
    "Revive",
    "PlayFriend",
    "SurviveNest",
    "CrucifixFigure",
    "CrucifixAmbush",
    "PlayerBetrayal",
    "SurviveEyes",
    "KickGiggle",
    "EscapeMines",
    "GlowstickGiggle",
    "DeathAmt1",
    "SurviveSeek",
    "UseRiftMutate",
    "CrucifixGloombatSwarm",
    "SurviveScreech",
    "SurviveDread",
    "SurviveSeekMinesFirst",
    "CrucifixHalt",
    "TowerHeroesVoid",
    "JoinLSplash",
    "CrucifixDupe",
    "EncounterGlitch",
    "JeffShop",
    "CrucifixScreech",
    "SurviveGiggle",
    "EscapeHotelMod1",
    "SurviveDupe",
    "CrucifixRush",
    "EscapeBackdoorHunt",
    "EscapeHotel",
    "CrucifixGiggle",
    "EscapeFools",
    "UseRift",
    "SpecialQATester",
    "EscapeRetro",
    "TowerHeroesHard",
    "EnterBackdoor",
    "EscapeRooms1000",
    "EscapeRooms",
    "EscapeHotelMod2",
    "EncounterMobble",
    "CrucifixGrumble",
    "UseHerbGreen",
    "CrucifixSeek",
    "JeffTipFull",
    "SurviveFigureLibrary",
    "TowerHeroesHotel",
    "CrucifixEyes",
    "BreakerSpeedrun",
    "SurviveAmbush",
    "SurviveHide",
    "JoinAgain"
}

Script.RemotesFolder = shared.ReplicatedStorage:WaitForChild("RemotesFolder")
Script.CreateElevator = Script.RemotesFolder:WaitForChild("CreateElevator")

Script.MainUI = shared.PlayerGui:WaitForChild("MainUI")
Script.LobbyFrame = Script.MainUI:WaitForChild("LobbyFrame")
Script.AchievementsFrame = Script.LobbyFrame:WaitForChild("Achievements")
Script.CreateElevatorFrame = Script.LobbyFrame:WaitForChild("CreateElevator")

Script.LobbyElevators = workspace:WaitForChild("Lobby"):WaitForChild("LobbyElevators")

--// Functions \\--
function Script.Functions.SetupVariables()
    if wax.shared.ExecutorSupport["require"] then
        for achievementName, _ in pairs(wax.require(shared.ReplicatedStorage.Achievements)) do
            if table.find(Script.Achievements, achievementName) then continue end
    
            table.insert(Script.Achievements, achievementName)
        end
    else
        local badgeList = Script.AchievementsFrame:WaitForChild("List", math.huge)

        if badgeList then
            repeat task.wait(0.5) until #badgeList:GetChildren() ~= 0
            
            shared.Connect:GiveSignal(badgeList.ChildAdded:Connect(function(badge)
                if not badge:IsA("ImageButton") then return end
                if table.find(Script.Achievements, badge.Name) then return end
                table.insert(Script.Achievements, badge.Name)
            end))

            for _, badge in pairs(badgeList:GetChildren()) do
                if not badge:IsA("ImageButton") then continue end
                if table.find(Script.Achievements, badge.Name) then continue end

                table.insert(Script.Achievements, badge.Name)
            end
        end
    end
end

function Script.Functions.LoopAchievements()
    task.spawn(function()
        while Toggles.LoopAchievements.Value and not shared.Library.Unloaded do
            if Script.CurrentBadge >= #Script.Achievements then Script.CurrentBadge = 0 end
            Script.CurrentBadge += 1

            local random = Script.Achievements[Script.CurrentBadge]
            Script.RemotesFolder.FlexAchievement:FireServer(random)

            task.wait(Options.LoopAchievementsSpeed.Value)
        end
    end)
end

function Script.Functions.SetupCharacterConnection(newCharacter)
    shared.Character = newCharacter
    shared.Humanoid = shared.Character:FindFirstChildWhichIsA("Humanoid")
    shared.RootPart = shared.Character:FindFirstChild("HumanoidRootPart") or shared.Character.PrimaryPart

    if shared.Humanoid then
        shared.Twerk:Setup()
        if Toggles.Twerk.Value then
            shared.Twerk:Enable()
        end
    end
end

shared.Load("Utils", "Preset")

--// Tabs \\--
Script.Tabs = {
    Main = shared.Window:AddTab("Main")
}

shared.Load("Tabs", "Main")

--// Code \\--
task.spawn(Script.Functions.SetupVariables)
task.spawn(Script.Functions.LoadPresets)

task.spawn(Script.Functions.SetupCharacterConnection, shared.Character)
shared.Connect:GiveSignal(shared.LocalPlayer.CharacterAdded:Connect(function(newCharacter)
    task.delay(1, Script.Functions.SetupCharacterConnection, newCharacter)
end))

getgenv().mspaint_loaded = true
end)() end,
    [10] = function()local wax,script,require=ImportGlobals(10)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

--// Player Variables \\--
shared.Character = shared.LocalPlayer.Character or shared.LocalPlayer.CharacterAdded:Wait()
shared.Humanoid = nil

--// Functions \\--
Script._mspaint_custom_captions = Instance.new("ScreenGui") do
    local Frame = Instance.new("Frame", Script._mspaint_custom_captions)
    local TextLabel = Instance.new("TextLabel", Frame)
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint", TextLabel)

    Script._mspaint_custom_captions.Parent = shared.ReplicatedStorage
    Script._mspaint_custom_captions.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.BackgroundColor3 = shared.Library.MainColor
    Frame.BorderColor3 = shared.Library.AccentColor
    Frame.BorderSizePixel = 2
    Frame.Position = UDim2.new(0.5, 0, 0.8, 0)
    Frame.Size = UDim2.new(0, 200, 0, 75)
    shared.Library:AddToRegistry(Frame, {
        BackgroundColor3 = "MainColor",
        BorderColor3 = "AccentColor"
    })

    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.Font = Enum.Font.Code
    TextLabel.Text = ""
    TextLabel.TextColor3 = shared.Library.FontColor
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14
    TextLabel.TextWrapped = true
    shared.Library:AddToRegistry(TextLabel, {
        TextColor3 = "FontColor"
    })

    UITextSizeConstraint.MaxTextSize = 35

    function Script.Functions.HideCaptions()
        Script._mspaint_custom_captions.Parent = shared.ReplicatedStorage
    end

    local CaptionsLastUsed = os.time()
    function Script.Functions.Captions(caption: string)
        CaptionsLastUsed = os.time()

        if Script._mspaint_custom_captions.Parent == shared.ReplicatedStorage then
            local success = pcall(function()
                Script._mspaint_custom_captions.Parent = if gethui then gethui() else shared.CoreGui
            end)

            if not success then
                Script._mspaint_custom_captions.Parent = shared.PlayerGui
            end 
        end
        
        TextLabel.Text = caption

        task.spawn(function()
            task.wait(5)
            if os.time() - CaptionsLastUsed >= 5 then
                Script.Functions.HideCaptions()
            end
        end)
    end
end

shared.Load("Utils", "ConnectionsFuncs")

--// Tabs \\--
Script.Tabs = {
    Main = shared.Window:AddTab("Main"),
}

shared.Load("Tabs", "Main")

--// Metamethod hooks \\--

--// Connections \\--
shared.Connect:GiveSignal(shared.LocalPlayer.CharacterAdded:Connect(function(newCharacter)
    task.delay(1, Script.Functions.SetupCharacterConnection, newCharacter)
end))

--// Load \\--
task.spawn(Script.Functions.SetupCharacterConnection, shared.Character)

--// Unload \\--
shared.Library:OnUnload(function()
    print("Unloading " .. shared.ScriptName .. "...")
end)

getgenv().mspaint_loaded = true
end)() end,
    [11] = function()local wax,script,require=ImportGlobals(11)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
Script.FeatureConnections = {
    Character = {},
    Humanoid = {},
    Player = {},
    RootPart = {},
}
Script.ESPTable = {
    Player = {},
    None = {}
}
Script.AimbotTween = nil

shared.Character = shared.LocalPlayer.Character or shared.LocalPlayer.CharacterAdded:Wait()
Script.GameName = "a roblox experience"

--// Functions \\--
function Script.Functions.UpdateBloxstrapRPC()
    if not wax.shared.BloxstrapRPC then return end

    wax.shared.BloxstrapRPC.SetRichPresence({
        details = "Playing " .. Script.GameName .. " [ mspaint v3 ]",
        state = #shared.Players:GetPlayers() .. " players in the server",
        largeImage = {
            hoverText = "使用Mspaint v3 xgo汉化"
        },
        smallImage = {
            assetId = 6925817108,
            hoverText = shared.LocalPlayer.Name
        }
    })
end


shared.Load("Utils", "Player")
shared.Load("Utils", "Assets")
shared.Load("Utils", "Aimbot")
shared.Load("Utils", "ESP")

shared.Load("Utils", "ConnectionsFuncs")

--// Tabs \\--
Script.Tabs = {
    Main = shared.Window:AddTab("Main"),
    Exploits = shared.Window:AddTab("Exploits"),
    Visuals = shared.Window:AddTab("Visuals")
}

shared.Load("Tabs", "Main")
shared.Load("Tabs", "Exploits")
shared.Load("Tabs", "Visuals")

--// Code \\--

--// Players Connection \\--
for _, player in pairs(shared.Players:GetPlayers()) do
    if player == shared.LocalPlayer then continue end
    Script.Functions.SetupOtherPlayerConnection(player)
end
shared.Connect:GiveSignal(shared.Players.PlayerAdded:Connect(Script.Functions.SetupOtherPlayerConnection))

--// Local Player Connection \\--
shared.Connect:GiveSignal(shared.LocalPlayer.CharacterAdded:Connect(function(newCharacter)
    task.delay(1, Script.Functions.SetupCharacterConnection, newCharacter)
end))

shared.Connect:GiveSignal(shared.ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
    if Toggles.InstaInteract.Value then
        shared.fireproximityprompt(prompt)
    end
end))

--// Run Service \\--
shared.Connect:GiveSignal(shared.RunService.RenderStepped:Connect(function()
    if shared.Character then
        if shared.Humanoid then
            if Toggles.SpeedHack.Value then shared.Humanoid.WalkSpeed = Options.WalkSpeed.Value end
            if Toggles.JumpPowerHack.Value then shared.Humanoid.JumpPower = Options.JumpPower.Value end
        end

        if Toggles.Noclip.Value then
            for _, part in pairs(shared.Character:GetDescendants()) do
                if not part:IsA("BasePart") then continue end
                part.CanCollide = false
            end        
        end

        if Toggles.EnableAimbot.Value and (shared.Library.IsMobile or Options.EnableAimbotKey:GetState()) then
            local closest = nil
            if Options.AimbotClosestMethod.Value == "Mouse" then
                closest = Script.Functions.GetClosestFromMouse()
            elseif Options.AimbotClosestMethod.Value == "Character" then
                closest = Script.Functions.GetClosestFromCharacter()
            end

            if closest then
                if Toggles.AimbotSmooth.Value then
                    Script.AimbotTween = shared.TweenService:Create(shared.Camera, TweenInfo.new(Options.AimbotSmoothness.Value / 100, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                        CFrame = CFrame.new(shared.Camera.CFrame.Position, closest[Options.AimbotTargetPart.Value].Position)
                    })
                    Script.AimbotTween:Play()
                else
                    shared.Camera.CFrame = CFrame.new(shared.Camera.CFrame.Position, closest[Options.AimbotTargetPart.Value].Position)
                end
            end
        elseif Script.AimbotTween then
            Script.AimbotTween:Cancel()
            Script.AimbotTween = nil
        end
    end
end))

--// Load \\--
local success, gameName = pcall(function()
    return shared.MarketplaceService:GetProductInfo(game.PlaceId).Name
end)

if success then Script.GameName = gameName end
Script.Functions.UpdateBloxstrapRPC()

task.spawn(Script.Functions.SetupCharacterConnection, shared.Character)
task.spawn(Script.Functions.SetupChildConnection)
task.spawn(Script.Functions.SetupBloxstrapRPCConnection)

--// Unload \\--
shared.Library:OnUnload(function()
    if wax.shared.BloxstrapRPC then
        wax.shared.BloxstrapRPC.SetRichPresence({
            details = "<reset>",
            state = "<reset>",
            largeImage = {
                reset = true
            },
            smallImage = {
                reset = true
            }
        })
    end

    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Destroy()
        end
    end

    for _, object in pairs(workspace:GetDescendants()) do
        if object:IsA("BasePart") then
            if not object:GetAttribute("Material") then object:SetAttribute("Material", object.Material) end
            if not object:GetAttribute("Reflectance") then object:SetAttribute("Reflectance", object.Reflectance) end

            object.Material = object:GetAttribute("Material")
            object.Reflectance = object:GetAttribute("Reflectance")
        elseif object:IsA("Decal") then
            if not object:GetAttribute("Transparency") then object:SetAttribute("Transparency", object.Transparency) end
            
            object.Transparency = object:GetAttribute("Transparency")
        end
    end

    workspace.Terrain.WaterReflectance = 1
    workspace.Terrain.WaterTransparency = 1
    workspace.Terrain.WaterWaveSize = 0.05
    workspace.Terrain.WaterWaveSpeed = 8
    shared.Lighting.GlobalShadows = true

    shared.Twerk:Disable()
end)

getgenv().mspaint_loaded = true
end)() end,
    [14] = function()local wax,script,require=ImportGlobals(14)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
local Tabs = Script.Tabs

--// Exploits \\--
local TrollingGroupBox = Tabs.Exploits:AddLeftGroupbox("Trolling") do
    TrollingGroupBox:AddToggle("ThrowPowerBoost",{
        Text = "Throw Power Boost",
        Default = false,
        Visible = wax.shared.ExecutorSupport["hookmetamethod"] and wax.shared.ExecutorSupport["getnamecallmethod"],
    })

    TrollingGroupBox:AddSlider("ThrowPower", {
        Text = "Throw Power",
        Default = 10,
        Min = 1,
        Max = 100,
        Rounding = 1,
        Compact = true,
        Visible = wax.shared.ExecutorSupport["hookmetamethod"] and wax.shared.ExecutorSupport["getnamecallmethod"],
    })

    TrollingGroupBox:AddToggle("DeleteObject", {
        Text = "FE 删除对象",
        Default = false,
        Visible = wax.shared.ExecutorSupport["hookmetamethod"] and wax.shared.ExecutorSupport["getnamecallmethod"],
    })

    TrollingGroupBox:AddToggle("Twerk",{
        Text = "Twerk",
        Default = false,
    })

    TrollingGroupBox:AddDivider()

    TrollingGroupBox:AddToggle("DeleteAura", {
        Text = "FE 删除光环",
        Default = false,
        Risky = true,
        Tooltip = "删除特定范围内的对象，这可以从游戏中踢你，我懒得修复它."
    })

    TrollingGroupBox:AddSlider("DeleteAuraRange", {
        Text = "删除Aura范围",
        Default = 15,
        Min = 1,
        Max = 30,
        Rounding = 1,
        Compact = true
    })
end

local BypassGroupBox = Tabs.Exploits:AddRightGroupbox("Bypass") do
    BypassGroupBox:AddToggle("Godmode", {
        Text = "Godmode",
        Default = false
    })

    BypassGroupBox:AddToggle("InfiniteHunger", {
        Text = "禁止 Hunger",
        Default = false,
        Tooltip = "你永远不会饿，与神道德不相容."
    })

    BypassGroupBox:AddToggle("InfiniteEnergy", {
        Text = "无限的能量",
        Default = false,
        Tooltip = "你永远不会累，与神道德."
    })

    BypassGroupBox:AddToggle("InfiniteInventory", {
        Text = "无限库存",
        Default = false,
        Visible = wax.shared.ExecutorSupport["require"] and wax.shared.ExecutorSupport["hookmetamethod"] and wax.shared.ExecutorSupport["getnamecallmethod"],
    })
end

Toggles.Godmode:OnChanged(function(value)
    if value then
        Script.DidGodmode = true

        repeat task.wait() until #Script.Map.Floor:GetChildren() > 0

        Script.Event:FireServer("FallDamage", {
            Sliding = false,
            OriginalDamage = (0/0),
            Sound = "LR^SS",
            Softened = true,
            Broken = false,
            Model = Script.Map.Floor:FindFirstChildOfClass("Model"),
            Range = 19,
            Damage = (0/0)
        })

    else
        if not Script.DidGodmode then return end
        Script.DidGodmode = false

        Script.Functions.Respawn()
    end
end)

Toggles.InfiniteHunger:OnChanged(function(value)
    if value and not Toggles.Godmode.Value then
        Script.Event:FireServer("DecreaseStat", {
            Stats = {
                Hunger = -100
            }
        })
    end
end)

Toggles.InfiniteEnergy:OnChanged(function(value)
    if value and not Toggles.Godmode.Value then
        Script.Event:FireServer("DecreaseStat", {
            Stats = {
                Energy = -100
            }
        })
    end
end)

local DeleteAuraParams = OverlapParams.new()
DeleteAuraParams.FilterType = Enum.RaycastFilterType.Exclude
DeleteAuraParams.FilterDescendantsInstances = {shared.Character, shared.Camera}

Toggles.DeleteAura:OnChanged(function(value)
    if value then
        repeat task.wait(0.15)
            local CloseParts = workspace:GetPartBoundsInBox(shared.RootPart.CFrame, Vector3.new(Options.DeleteAuraRange.Value, Options.DeleteAuraRange.Value, Options.DeleteAuraRange.Value), DeleteAuraParams)
            
            for _, part in pairs(CloseParts) do 
                local targetFurniture = part:FindFirstAncestorOfClass("Model") or part.Parent
                if shared.Players:GetPlayerFromCharacter(targetFurniture) then continue end

                if targetFurniture and targetFurniture:IsA("Model") and targetFurniture.PrimaryPart then
                    local isClose = shared.Character and Script.Functions.DistanceFromCharacter(part) <= 9
                    local isAbleToPickup = not targetFurniture:GetAttribute("Busy")
                    
                    if not isClose or not isAbleToPickup then continue end

                    Script.Action:InvokeServer("Pickup", {["Model"] = targetFurniture})
                    
                    Script.Action:InvokeServer("Drop", {
                        EndCFrame = CFrame.new(shared.RootPart.Position + Vector3.new(
                            math.random(1, 5),
                            math.random(5, 8),
                            math.random(1, 5)
                        )),

                        CameraCFrame = Vector3.new(0.9865860342979431, 0.16270768642425537, -0.013206666335463524) * 250,
                        ThrowPower = 555,
                        Throw = true
                    })
                end
            end
        until not Toggles.DeleteAura.Value or shared.Library.Unloaded
    end
end)

Toggles.Twerk:OnChanged(function(value)
    shared.Twerk:Set(value)
end)
end)() end,
    [15] = function()local wax,script,require=ImportGlobals(15)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
local Tabs = Script.Tabs

Script.LastSpeed = if shared.Humanoid then shared.Humanoid.WalkSpeed else 16

--// Main \\--
local PlayerGroupBox = Tabs.Main:AddLeftGroupbox("Player") do
    PlayerGroupBox:AddToggle("SpeedHack", {
        Text = "黑客速度",
        Default = false
    })

    PlayerGroupBox:AddSlider("WalkSpeed", {
        Text = "步行速度",
        Default = 16,
        Min = 0,
        Max = 100,
        Rounding = 0,
        Compact = true
    })

    PlayerGroupBox:AddToggle("JumpPowerHack", {
        Text = "黑客跳跃力量",
        Default = false
    })

    PlayerGroupBox:AddSlider("JumpPower", {
        Text = "跳跃力量",
        Default = 50,
        Min = 0,
        Max = 200,
        Rounding = 0,
        Compact = true
    })

    PlayerGroupBox:AddDivider()

    PlayerGroupBox:AddToggle("InstantInteract", {
        Text = "即时互动",
        Default = false,
        Visible = wax.shared.ExecutorSupport["hookfunction"] and wax.shared.ExecutorSupport["getcallingscript"]
    })

    PlayerGroupBox:AddToggle("NoFall", {
        Text = "没有秋天",
        Default = false
    })

    PlayerGroupBox:AddDivider()

    PlayerGroupBox:AddToggle("Noclip", {
        Text = "穿墙",
        Default = false
    }):AddKeyPicker("NoclipKey", {
        Mode = "Toggle",
        Default = "N",
        Text = "穿墙",
        SyncToggleState = true
    })

    PlayerGroupBox:AddToggle("Fly", {
        Text = "飞行",
        Default = false
    }):AddKeyPicker("FlyKey", {
        Mode = "Toggle",
        Default = "F",
        Text = "Fly",
        SyncToggleState = true
    })
    
    PlayerGroupBox:AddSlider("FlySpeed", {
        Text = "飞行速度",
        Default = 16,
        Min = 0,
        Max = 100,
        Rounding = 0,
        Compact = true
    })
end

local AutomationGroupBox = Tabs.Main:AddRightGroupbox("Automation") do
    AutomationGroupBox:AddToggle("AutoRespawn", {
        Text = "自动重生",
        Default = false
    })

    AutomationGroupBox:AddToggle("AutoPush", {
        Text = "自动推送员工",
        Default = false
    })

    AutomationGroupBox:AddDivider()

    AutomationGroupBox:AddToggle("AutoTPWhistle", {
        Text = "使播放器口哨传送",
        Default = false
    })

    AutomationGroupBox:AddDropdown("AutoTPWhistlePlayers", {
        SpecialType = "Player",
        Multi = true,
        Text = "去玩家的哨子."
    })
end

local MiscGroupBox = Tabs.Main:AddRightGroupbox("Misc") do
    MiscGroupBox:AddButton({
        Text = "重生",
        Func = function()
            Script.Functions.Respawn()
        end,
        DoubleClick = true
    })

    MiscGroupBox:AddButton({
        Text = "归队",
        Func = function()
            if #shared.Players:GetPlayers() <= 1 then
                shared.TeleportService:Teleport(game.PlaceId, shared.LocalPlayer)
                return
            end

            shared.TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, shared.LocalPlayer)
        end,
        DoubleClick = true
    })

    MiscGroupBox:AddButton({
        Text = "即时离开",
        Func = function()
            task.delay(0.1, function() game:Shutdown() end)
            shared.LocalPlayer:Kick("再见！ ：内容:")
        end,
        DoubleClick = true
    })
end

--// Player \\--
Toggles.SpeedHack:OnChanged(function(value)
    if not shared.Humanoid then return end

    if value then
        Script.LastSpeed = shared.Humanoid.WalkSpeed
    end

    shared.Humanoid.WalkSpeed = if value then Options.WalkSpeed.Value else Script.LastSpeed
end)

Options.WalkSpeed:OnChanged(function(value)
    if not shared.Humanoid then return end

    if shared.Humanoid.WalkSpeed ~= value then
        if Toggles.SpeedHack.Value then shared.Humanoid.WalkSpeed = value end
    end
end)

Toggles.JumpPowerHack:OnChanged(function(value)
    if not shared.Humanoid then return end

    if value then
        Script.LastJumpPower = if shared.Humanoid.UseJumpPower then shared.Humanoid.JumpPower else shared.Humanoid.JumpHeight
    end

    if shared.Humanoid.UseJumpPower then
        shared.Humanoid.JumpPower = if value then Options.JumpPower.Value else Script.LastJumpPower
    else
        shared.Humanoid.JumpHeight = if value then Options.JumpPower.Value else Script.LastJumpPower
    end
end)

Options.JumpPower:OnChanged(function(value)
    if not shared.Humanoid then return end

    if shared.Humanoid.UseJumpPower then
        if shared.Humanoid.JumpPower ~= value then
            if Toggles.JumpPowerHack.Value then shared.Humanoid.JumpPower = value end
        end
    else
        if shared.Humanoid.JumpHeight ~= value then
            if Toggles.JumpPowerHack.Value then shared.Humanoid.JumpHeight = value end
        end
    end
end)

Toggles.NoFall:OnChanged(function(value)
    local fallDamage = shared.Character and shared.Character:FindFirstChild("FallDamage")
    
    if fallDamage then
        fallDamage.Enabled = not value
    end
end)

Toggles.Noclip:OnChanged(function(value)
    if not shared.Character then return end

    for _, part in pairs(shared.Character:GetDescendants()) do
        if not part:IsA("BasePart") then continue end
        part.CanCollide = not value

        shared.Connect:GiveSignal(part:GetPropertyChangedSignal("CanCollide"):Connect(function()
            part.CanCollide = not Toggles.Noclip.Value
        end))
    end
end)

Toggles.Fly:OnChanged(function(value)
    if not shared.Fly.FlyBody then shared.Fly:Setup() end

    shared.Fly:Set(value)
end)

Options.FlySpeed:OnChanged(function(value)
    shared.Fly:SetSpeed(value)
end)

Toggles.AutoPush:OnChanged(function(value)
    if value then
        task.spawn(function()
            repeat task.wait(0.1)
                for _, employee in pairs(Script.Employees:GetChildren()) do
                    if Script.Functions.DistanceFromCharacter(employee) <= 20 and employee:FindFirstChild("Enemy") then
                        Script.Action:InvokeServer("ShoveEmployee", {
                            Humanoid = employee.Enemy
                        })
                    end
                end
            until not Toggles.AutoPush.Value or shared.Library.Unloaded
        end)
    end
end)
end)() end,
    [16] = function()local wax,script,require=ImportGlobals(16)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
local Tabs = Script.Tabs

--// Visuals \\--
local ESPTabBox = Tabs.Visuals:AddLeftTabbox() do
    local ESPTab = ESPTabBox:AddTab("ESP") do
        ESPTab:AddToggle("PlayerESP", {
            Text = "Player",
            Default = false,
        }):AddColorPicker("PlayerEspColor", {
            Default = Color3.new(1, 1, 1),
        })

        ESPTab:AddToggle("EmployeeESP", {
            Text = "Employee",
            Default = false,
        }):AddColorPicker("EmployeeEspColor", {
            Default = Color3.new(1, 0, 0),
        })

        ESPTab:AddToggle("ItemESP", {
            Text = "Item",
            Default = false,
        }):AddColorPicker("ItemEspColor", {
            Default = Color3.new(1, 0, 1),
        })
    end

    local ESPSettingsTab = ESPTabBox:AddTab("Settings") do
        ESPSettingsTab:AddToggle("ESPRainbow", {
            Text = "Rainbow ESP",
            Default = false,
        })

        ESPSettingsTab:AddDivider()

        ESPSettingsTab:AddToggle("ESPHighlight", {
            Text = "Enable Highlight",
            Default = true
        })

        ESPSettingsTab:AddSlider("ESPFillTransparency", {
            Text = "Fill Transparency",
            Default = 0.75,
            Min = 0,
            Max = 1,
            Rounding = 2
        })
    
        ESPSettingsTab:AddSlider("ESPOutlineTransparency", {
            Text = "Outline Transparency",
            Default = 0,
            Min = 0,
            Max = 1,
            Rounding = 2
        })

        ESPSettingsTab:AddDivider()

        ESPSettingsTab:AddToggle("ESPDistance", {
            Text = "Show Distance",
            Default = true
        })
    
        ESPSettingsTab:AddSlider("ESPTextSize", {
            Text = "Text Size",
            Default = 22,
            Min = 16,
            Max = 26,
            Rounding = 0
        })
    
        ESPSettingsTab:AddDivider()

        ESPSettingsTab:AddToggle("ESPTracer", {
            Text = "Enable Tracer",
            Default = false
        })

        ESPSettingsTab:AddDropdown("ESPTracerStart", {
            AllowNull = false,
            Values = {"Bottom", "Center", "Top", "Mouse"},
            Default = "Bottom",
            Multi = false,

            Text = "Tracer Start Position"
        })

        ESPSettingsTab:AddDivider()

        ESPSettingsTab:AddToggle("ESPArrow", {
            Text = "启用箭头",
            Default = false
        })

        ESPSettingsTab:AddSlider("ESPArrowCenterOffset", {
            Text = "箭头中心偏移",
            Default = 300,
            Min = 0,
            Max = 500,
            Rounding = 0
        })
    end
end

local SelfGroupBox = Tabs.Visuals:AddRightGroupbox("Self") do
    SelfGroupBox:AddSlider("FOV", {
        Text = "视野（广角）",
        Default = 90,
        Min = 50,
        Max = 120,
        Rounding = 0
    })
    
    SelfGroupBox:AddToggle("NoCamShake", {
        Text = "没有相机抖动",
        Default = false
    })

    SelfGroupBox:AddToggle("Fullbright", {
        Text = "全亮",
        Default = false
    })

    SelfGroupBox:AddToggle("NoFog", {
        Text = "没有雾",
        Default = false
    })

    if wax.shared.ExecutorSupport["require"] then
        SelfGroupBox:AddDivider()
    end

    SelfGroupBox:AddToggle("DeathWaypoint", {
        Text = "死亡航点",
        Default = false,
        Visible = wax.shared.ExecutorSupport["require"]
    })

    SelfGroupBox:AddToggle("PersonalWatch", {
        Text = "个人手表",
        Default = false,
        Visible = wax.shared.ExecutorSupport["require"]
    })

    SelfGroupBox:AddSlider("MaxWaypoints", {
        Text = "最大航点",
        Default = if wax.shared.ExecutorSupport["require"] then require(Script.WaypointsMenu).waypoint_limit else 4,
        Min = 0,
        Max = 100,
        Rounding = 0,
        Compact = true,
        Visible = wax.shared.ExecutorSupport["require"]
    })
end

--// ESP \\--
Toggles.PlayerESP:OnChanged(function(value)
    if not value then
        for _, connection in pairs(Script.FeatureConnections.Player) do
            connection:Disconnect()
        end
        for _, esp in pairs(Script.ESPTable.Player) do
            esp.Destroy()
        end
    end
end)

Toggles.EmployeeESP:OnChanged(function(value)
    if not value then
        for _, esp in pairs(Script.ESPTable.Employee) do
            esp.Destroy()
        end
    end
end)

Toggles.ItemESP:OnChanged(function(value)
    if not value then
        for _, esp in pairs(Script.ESPTable.Item) do
            esp.Destroy()
        end
    end
end)

--// ESP Settings \\--
Toggles.ESPRainbow:OnChanged(function(value)
    shared.ESPLibrary.Rainbow.Set(value)
end)

Toggles.ESPHighlight:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.SetVisible(value, false)
        end
    end
end)

Options.ESPFillTransparency:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ FillTransparency = value })
        end
    end
end)

Options.ESPOutlineTransparency:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ OutlineTransparency = value })
        end
    end
end)

Toggles.ESPDistance:OnChanged(function(value)
    shared.ESPLibrary.Distance.Set(value)
end)

Options.ESPTextSize:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ TextSize = value })
        end
    end
end)

Toggles.ESPTracer:OnChanged(function(value)
    shared.ESPLibrary.Tracers.Set(value)
end)

Options.ESPTracerStart:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ Tracer = { From = value } })
        end
    end
end)

Toggles.ESPArrow:OnChanged(function(value)
    shared.ESPLibrary.Arrows.Set(value)
end)

Options.ESPArrowCenterOffset:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ Arrow = { CenterOffset = value } })
        end
    end
end)

--// Self \\--
Options.FOV:OnChanged(function(value)
    Script.Settings:SetAttribute("FieldOfView", value)
end)

Toggles.NoCamShake:OnChanged(function(value)
    Script.Settings:SetAttribute("CameraShake", not value)
end)

Toggles.Fullbright:OnChanged(function(value)
    if value then
        shared.Lighting.Ambient = Color3.new(1, 1, 1)
        shared.Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
        shared.Lighting.ColorShift_Top = Color3.new(1, 1, 1)
    else
        shared.Lighting.Ambient = Script.CurrentAmbient
        shared.Lighting.ColorShift_Bottom = Script.CurrentColorShift_Bottom
        shared.Lighting.ColorShift_Top = Script.CurrentColorShift_Top
    end
end)

Toggles.NoFog:OnChanged(function(value)
    if value then
        shared.Lighting.FogEnd = 9e9

        if shared.Lighting:FindFirstChild("FoggyDay_Atmosphere") then
            shared.Lighting["FoggyDay_Atmosphere"].Density = 0
        end
    else
        shared.Lighting.FogEnd = Script.DefaultFogEnd

        if shared.Lighting:FindFirstChild("FoggyDay_Atmosphere") and Script["CurrentFoggyDayDensity"] then
            shared.Lighting["FoggyDay_Atmosphere"].Density = Script.CurrentFoggyDayDensity
        end
    end
end)

Toggles.PersonalWatch:OnChanged(function(value)
    if wax.shared.ExecutorSupport["require"] then
        if value then
            Script.Calendar["Gamepass_Clock"].Visible = true
            while Toggles.PersonalWatch.Value and task.wait() do
                Script.Calendar["Gamepass_Clock"].Text = require(shared.ReplicatedStorage.Modules.Date).GetTimeInClockFormat(Script.TimeLeft.Value)
                
                if Script.TimeLeft.Value == 5 then
                    Script.Calendar["Gamepass_Clock"].Countdown.Playing = true
                end
            end
        else
            Script.Calendar["Gamepass_Clock"].Visible = Script.GamePassClockVisible
        end
    end
end)

Toggles.DeathWaypoint:OnChanged(function(value)
    if wax.shared.ExecutorSupport["require"] then
        require(Script.WaypointsMenu).create_death = value
        require(Script.WaypointsMenu).death_waypoint = value
    end
end)

Options.MaxWaypoints:OnChanged(function(value)
    if wax.shared.ExecutorSupport["require"] then
        require(Script.WaypointsMenu).waypoint_limit = value
    end
end)
end)() end,
    [19] = function()local wax,script,require=ImportGlobals(19)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
local Tabs = Script.Tabs

--// Exploits \\--
local AntiEntityGroupBox = Tabs.Exploits:AddLeftGroupbox("防怪物伤害") do
    AntiEntityGroupBox:AddToggle("AntiDread", {
        Text = "移除dread伤害或跳杀",
        Default = false
    })

    AntiEntityGroupBox:AddToggle("AntiHalt", {
        Text = "移除Halt",
        Default = false
    })

    AntiEntityGroupBox:AddToggle("AntiScreech", {
        Text = "移除Screech",
        Default = false
    })

    AntiEntityGroupBox:AddToggle("AntiDupe", {
        Text = "移除" .. (Script.IsBackdoor and "Vacuum" or "假门"),
        Default = false
    })

    AntiEntityGroupBox:AddToggle("AntiEyes", {
        Text = "移除" .. (Script.IsBackdoor and "Lookman伤害" or "Eyes伤害"),
        Default = false
    })

    AntiEntityGroupBox:AddToggle("AntiSnare", {
        Text = "移除夹子伤害",
        Default = false
    })

    AntiEntityGroupBox:AddToggle("AntiHearing", {
        Text = "移除Figure听觉",
        Default = false,
        Visible = not Script.IsFools
    })
end

local TrollingGroupBox = Tabs.Exploits:AddLeftGroupbox("娱乐") do
    TrollingGroupBox:AddToggle("SpamOtherTools", {
        Text = "垃圾邮件其他工具",
        Default = false
    }):AddKeyPicker("SpamOtherTools", {
        Default = "X",
        Text = "垃圾邮箱其他工具",
        Mode = shared.Library.IsMobile and "Toggle" or "Hold",
        SyncToggleState = shared.Library.IsMobile
    })

    TrollingGroupBox:AddToggle("UpsideDown", {
        Text = "倒立",
        Default = false
    })

    TrollingGroupBox:AddToggle("Twerk", {
        Text = "跳舞【开第三人称可以看见】",
        Default = false
    })
end

local BypassGroupBox = Tabs.Exploits:AddRightGroupbox("绕过") do
    BypassGroupBox:AddToggle("SpeedBypass", {
        Text = "速度绕过",
        Default = false
    })

    BypassGroupBox:AddSlider("SpeedBypassDelay", {
        Text = "速度绕过延迟",
        Default = 0.23,
        Min = 0.22,
        Max = 0.25,
        Rounding = 3,
        Compact = true
    })

    BypassGroupBox:AddDivider()

    BypassGroupBox:AddToggle("AnticheatManipulation", {
        Text = "反作弊速度",
        Default = false,
    }):AddKeyPicker("AnticheatManipulationKey", {
        Default = "T",
        Text = "传送躲藏",
        Mode = shared.Library.IsMobile and "Toggle" or "Hold",
        SyncToggleState = shared.Library.IsMobile
    })

    BypassGroupBox:AddToggle("Godmode", {
        Text = "上帝模式",
        Default = false,
        Risky = true
    })

    BypassGroupBox:AddDivider()
    
    BypassGroupBox:AddToggle("InfItems", {
        Text = "无限物品",
        Default = false,
        Visible = not Script.IsFools
    })

    BypassGroupBox:AddToggle("InfCrucifix", {
        Text = "无限十字架",
        Default = false,
        Visible = not Script.IsFools,
        Tooltip = "可能会失效/死亡哦",
        Risky = true
    })

    BypassGroupBox:AddDivider()

    BypassGroupBox:AddToggle("FakeRevive", {
        Text = "假复活",
        Default = false
    })

    BypassGroupBox:AddToggle("DeleteSeek", {
        Text = "删除Seek",
        Default = false
    })
end

--// Anti Entity \\--
Toggles.AntiDread:OnChanged(function(value)
    if not Script.MainGame then return end
    local modules = Script.MainGame:FindFirstChild("Modules", true)
    local module = modules and (modules:FindFirstChild("Dread", true) or modules:FindFirstChild("_Dread", true))

    if module then
        module.Name = if value then "_Dread" else "Dread"
    end
end)

Toggles.AntiHalt:OnChanged(function(value)
    if not Script.EntityModules then return end
    local module = Script.EntityModules:FindFirstChild("Shade") or Script.EntityModules:FindFirstChild("_Shade")

    if module then
        module.Name = if value then "_Shade" else "Shade"
    end
end)

Toggles.AntiScreech:OnChanged(function(value)
    if not Script.MainGame then return end
    local module = Script.MainGame:FindFirstChild("Screech", true) or Script.MainGame:FindFirstChild("_Screech", true)

    if module then
        module.Name = if value then "_Screech" else "Screech"
    end
end)

Toggles.AntiDupe:OnChanged(function(value)
    for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
        for _, dupeRoom in pairs(room:GetChildren()) do
            if dupeRoom:GetAttribute("LoadModule") == "DupeRoom" or dupeRoom:GetAttribute("LoadModule") == "SpaceSideroom" then
                task.spawn(function() Script.Functions.DisableDupe(dupeRoom, value, dupeRoom:GetAttribute("LoadModule") == "SpaceSideroom") end)
            end
        end
    end
end)

Toggles.AntiSnare:OnChanged(function(value)
    for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
        if not room:FindFirstChild("Assets") then continue end

        for _, snare in pairs(room.Assets:GetChildren()) do
            if snare.Name == "Snare" then
                snare:WaitForChild("Hitbox", 5).CanTouch = not value
            end
        end
    end
end)

Toggles.AntiHearing:OnChanged(function(value)
    if Script.IsFools then return end
    Script.RemotesFolder.Crouch:FireServer(value)
end)

--// Trolling \\--
Toggles.UpsideDown:OnChanged(function(value)
    if not Script.Collision then return end
    
    -- im sorry deivid
    if value then
        local rotation = Script.Collision.Rotation
        Script.Collision.Rotation = Vector3.new(rotation.X, rotation.Y, -90)

        task.spawn(function()
            repeat task.wait() until not Toggles.UpsideDown.Value or shared.Library.Unloaded
            
            if Script.Collision and shared.Library.Unloaded ~= true then
                rotation = Script.Collision.Rotation
    
                Script.Collision.Rotation = Vector3.new(rotation.X, rotation.Y, 90)
            end
        end)
    end
end)

Toggles.Twerk:OnChanged(function(value)
    shared.Twerk:Set(value)
end)

--// Bypass \\--
function Script.Functions.SpeedBypass()
    if Script.SpeedBypassing or not Script.CollisionClone then return end
    Script.SpeedBypassing = true

    task.spawn(function()
        while Toggles.SpeedBypass.Value and Script.CollisionClone and not shared.Library.Unloaded and not Script.FakeRevive.Enabled do
            if shared.RootPart.Anchored then
                Script.CollisionClone.Massless = true
                repeat task.wait() until not shared.RootPart.Anchored
                task.wait(0.15)
            else
                Script.CollisionClone.Massless = not Script.CollisionClone.Massless
            end
            task.wait(Options.SpeedBypassDelay.Value)
        end

        Script.SpeedBypassing = false
        if Script.CollisionClone then
            Script.CollisionClone.Massless = true
        end
    end)
end

Toggles.SpeedBypass:OnChanged(function(value)
    if value then
        Options.WalkSpeed:SetMax(75)
        Options.FlySpeed:SetMax(75)
        
        Script.Functions.SpeedBypass()
    else
        if Script.FakeRevive.Enabled then return end

        local speed = if Script.Bypassed then 75 elseif Toggles.EnableJump.Value then 18 else 22
        local flySpeed = if Script.Bypassed then 75 else 22

        Options.WalkSpeed:SetMax(speed)
        Options.FlySpeed:SetMax(flySpeed)
    end
end)

Toggles.FakeRevive:OnChanged(function(value)
    if value and Script.Alive and shared.Character and not Script.FakeRevive.Enabled then
        if Script.LatestRoom and Script.LatestRoom.Value == 0 then
            shared.Notify:Alert({
                Title = "假恢复",
                Description = "你必须打开隔壁以使用假恢复",
                Reason = "你在第一个房间"
            })
            repeat task.wait() until Script.LatestRoom.Value > 0
        end

        shared.Notify:Alert({
            Title = "假恢复",
            Description = "请找到死方式或等待20秒左右\n为了伪造恢复工作.",
            Reason = "你还没死",
            Time = 20
        })
        
        local oxygenModule = Script.MainGame:FindFirstChild("Oxygen")
        local healthModule = Script.MainGame:FindFirstChild("Health")
        local cameraModule = Script.MainGame:FindFirstChild("Camera")
        local inventoryModule = Script.MainGame:FindFirstChild("Inventory")

        if oxygenModule and healthModule then
            task.delay(0.5, function()
                if not Toggles.FakeRevive.Value then return end

                oxygenModule.Enabled = false
                healthModule.Enabled = false
                inventoryModule.Enabled = false
            end)
        end

        repeat task.wait(0.25)
            Script.RemotesFolder.Underwater:FireServer(true)
        until not Script.Alive or not Toggles.FakeRevive.Value

        if Script.Alive and not Toggles.FakeRevive.Value then
            Script.RemotesFolder.Underwater:FireServer(false)
            shared.Notify:Alert({
                Title = "假恢复",
                Description = "虚假复兴已被禁用,无法杀死玩家.",
                Reason = "你还没死",
            })
            oxygenModule.Enabled = true
            healthModule.Enabled = true
            return
        end

        Toggles.SpeedBypass:SetValue(false)
        Options.WalkSpeed:SetMax(75)
        Options.FlySpeed:SetMax(75)

        Script.FakeRevive.Enabled = true
        workspace.Gravity = 0

        if shared.CameraModule then
            shared.CameraModule.Enabled = false
        end

        task.wait(0.1)
        for _, hotbarItem in pairs(Script.MainUI.MainFrame.Hotbar:GetChildren()) do
            if not hotbarItem:IsA("TextButton") then continue end
            hotbarItem.Visible = false
        end

        local tool = Instance.new("Tool") do
            tool.RequiresHandle = false
            tool.Name = "AttachTool"
            tool.Parent = shared.Character

            shared.Humanoid.Name = "old_Humanoid"
            local newHumanoid = shared.Humanoid:Clone()
            newHumanoid.Parent = shared.Character
            newHumanoid.Name = "Humanoid"

            task.wait()

            shared.Humanoid:Destroy()
            shared.Camera.CameraSubject = shared.Character
            shared.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

            local determined_cframe = shared.RootPart.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
            shared.RootPart.CFrame = determined_cframe
            
            local atempts = 0
            repeat task.wait()
                atempts = atempts + 1
                shared.RootPart.CFrame = determined_cframe
            until (tool.Parent ~= shared.Character or not shared.RootPart or not shared.RootPart.Parent or atempts > 250) and atempts > 2
            tool:Destroy()
        end

        -- setup shared.Character
        for _, part in pairs(shared.Character:GetDescendants()) do
            if part:IsA("BasePart") and part.Name ~= "UpperTorso" and part.Name ~= "Collision" and part.Parent.Name ~= "Collision" then 
                --v.CanCollide = false
                part.Massless = true
                part.CustomPhysicalProperties = PhysicalProperties.new(100, 0.3, 0.5, 1, 1)
            end
        end

        for _, weld in pairs(shared.Character:GetChildren()) do
            if weld:IsA("Weld") then
                weld:Destroy()
            end
        end

        shared.Camera:Destroy()
        task.wait(0.1)
        workspace.CurrentCamera.CameraSubject = shared.Character:FindFirstChildWhichIsA('Humanoid')
        workspace.CurrentCamera.CameraType = "Custom"
        shared.LocalPlayer.CameraMinZoomDistance = 0.5
        shared.LocalPlayer.CameraMaxZoomDistance = 400
        shared.LocalPlayer.CameraMode = "Classic"
        shared.Character.Head.Anchored = false
        shared.Camera = workspace.CurrentCamera

        -- setup fake char
        local humanoidDescription = shared.Players:GetHumanoidDescriptionFromUserId(shared.LocalPlayer.UserId)
        humanoidDescription.HeightScale = 1.2

        local previewCharacter = shared.Players:CreateHumanoidModelFromDescription(humanoidDescription, Enum.HumanoidRigType.R15) do
            previewCharacter.Parent = shared.Workspace
            previewCharacter.Name = "PreviewCharacter"

            previewCharacter.HumanoidRootPart.Anchored = true
            shared.Character.UpperTorso.CanCollide = false
        end

        Script.FakeRevive.Connections["HidingFix"] = shared.UserInputService.InputBegan:Connect(function(input, gameProcessed)
            if shared.UserInputService:GetFocusedTextBox() then return end
            if gameProcessed then return end

            if input.KeyCode == Enum.KeyCode.W or input.KeyCode == Enum.KeyCode.A or input.KeyCode == Enum.KeyCode.S or input.KeyCode == Enum.KeyCode.D then
                if shared.Character:GetAttribute("Hiding") then
                    for i = 1, 50 do
                        task.wait()
                        Script.RemotesFolder.CamLock:FireServer()
                    end
                end
            end
        end)

        shared.Connect:GiveSignal(Script.FakeRevive.Connections["HidingFix"])

        -- animation setup
        task.spawn(function()
            local anims = shared.Character:WaitForChild("Animations", 10) or previewCharacter:WaitForChild("Animations", 10);
            local crouch, oldCrouchSpeed = previewCharacter.Humanoid:LoadAnimation(anims.Crouch), 0;
            local walk, idle = previewCharacter.Humanoid:LoadAnimation(anims.Forward), previewCharacter.Humanoid:LoadAnimation(anims.Idle);
            local interact = previewCharacter.Humanoid:LoadAnimation(anims.Interact);
            oldCrouchSpeed = crouch.Speed;

            local function playWalkingAnim(key)
                repeat
                    if idle.isPlaying then idle:Stop() end

                    if shared.Character:GetAttribute("Crouching") then
                        if not crouch.isPlaying then crouch:Play() crouch:AdjustSpeed(oldCrouchSpeed) end
                        if walk.isPlaying then walk:Stop() end
                    else
                        if crouch.isPlaying then crouch:Stop() end
                        if not walk.isPlaying then walk:Play() end
                    end

                    task.wait(0.5)
                until not shared.UserInputService:IsKeyDown(key) and not shared.UserInputService:GetFocusedTextBox()
            end

            Script.FakeRevive.Connections["AnimationHandler"] = shared.UserInputService.InputBegan:Connect(function(input)
                if shared.UserInputService:GetFocusedTextBox() then return end
                if input.KeyCode == Enum.KeyCode.W or input.KeyCode == Enum.KeyCode.S or input.KeyCode == Enum.KeyCode.A or input.KeyCode == Enum.KeyCode.D then
                    playWalkingAnim(input.KeyCode)
                end
            end)

            shared.Connect:GiveSignal(Script.FakeRevive.Connections["AnimationHandler"])

            Script.FakeRevive.Connections["AnimationHandler2"] = shared.UserInputService.InputEnded:Connect(function(input)
                if shared.UserInputService:GetFocusedTextBox() then return end

                if input.KeyCode == Enum.KeyCode.W or input.KeyCode == Enum.KeyCode.S then
                    task.wait(0.1)
                    if walk.isPlaying then walk:Stop() end
                    if shared.Character:GetAttribute("Crouching") then 
                        if not crouch.isPlaying then crouch:Play() end
                        crouch:AdjustSpeed(0)
                    else 
                        if crouch.isPlaying then crouch:Stop() end 
                    end
                    if not idle.isPlaying then idle:Play() end
                end
            end)

            shared.Connect:GiveSignal(Script.FakeRevive.Connections["AnimationHandler2"])

            -- Tool Handler (kinda broken) --
            if shared.Character:WaitForChild("RightHand", math.huge) then
                local rightGrip = Instance.new("Weld", shared.Character.RightHand)
                rightGrip.C0 = CFrame.new(0, -0.15, -1.5, 1, 0, -0, 0, 0, 1, 0, -1, 0)
                rightGrip.Part0 = shared.Character.RightHand
        
                local toolsAnim = {}
                local currentTool = nil
                local doorInteractables = { "Key", "Lockpick" }

                Script.FakeRevive.Connections["ToolAnimHandler"] = shared.Character.ChildAdded:Connect(function(tool)
                    if tool:IsA("Tool") then
                        for _, anim in pairs(toolsAnim) do
                            anim:Stop()
                        end
        
                        table.clear(toolsAnim)
        
                        local anims = tool:WaitForChild("Animations")
                        currentTool = tool
        
                        for i, v in pairs(anims:GetChildren()) do
                            if v:IsA("Animation") then
                                toolsAnim[v.Name] = previewCharacter.Humanoid:LoadAnimation(v)
                            end
                        end
        
                        if toolsAnim.idle then toolsAnim.idle:Play(0.4, 1, 1) end
                        if toolsAnim.equip then toolsAnim.equip:Play(0.05, 1, 1) end
        
                        local toolHandle = tool:WaitForChild("Handle", 3)
                        if toolHandle and shared.Character:FindFirstChild("RightHand") then
                            rightGrip.Parent = shared.Character.RightHand
                            rightGrip.C1 = tool.Grip
                            rightGrip.Part1 = toolHandle        
                        end
        
                        local animation_state = false
                        tool.Activated:Connect(function()
                            if table.find(doorInteractables, tool.Name) then return end
        
                            local anim = toolsAnim.use or (tool:GetAttribute("LightSource") and toolsAnim.open)
        
                            if anim then
                                if wax.shared.ExecutorSupport["require"] then wax.require(tool.ToolModule).fire() end
                                local toolRemote = tool:FindFirstChild("Remote")
                                if toolRemote then
                                    toolRemote:FireServer()
                                end

                                if tool:GetAttribute("LightSource") then
                                    if animation_state then
                                        anim:Stop()
                                    else
                                        anim:Play()
                                    end
                                    
                                    animation_state = not animation_state
                                    return
                                end
        
                                anim:Play()
                            end
                        end)
                    end
                end)

                shared.Connect:GiveSignal(Script.FakeRevive.Connections["ToolAnimHandler"])
        
                -- Prompts handler
                local holding, holdStart, startDurability = false, 0, 0
                Script.FakeRevive.Connections["ToolAnimHandler2"] = shared.ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
                    if (currentTool and table.find(doorInteractables, currentTool.Name)) and (prompt.Name == "UnlockPrompt" and prompt.Parent.Name == "Lock") then
                        holding = true; holdStart = tick(); startDurability = currentTool:GetAttribute("Durability")
                        
                        toolsAnim.use:Play()
                    end
                end)

                shared.Connect:GiveSignal(Script.FakeRevive.Connections["ToolAnimHandler2"])

                Script.FakeRevive.Connections["ToolAnimInteractHandler"] = shared.ProximityPromptService.PromptButtonHoldEnded:Connect(function(prompt)
                    if (currentTool and table.find(doorInteractables, currentTool.Name)) and (prompt.Name == "UnlockPrompt" and prompt.Parent.Name == "Lock") then
                        if holdStart == 0 then return end
        
                        if startDurability and currentTool:GetAttribute("Durability") < startDurability then
                            toolsAnim.use:Stop()
                            toolsAnim.usebreak:Play()
        
                            return
                        end
                        
                        if holding and tick() - holdStart > prompt.HoldDuration then
                            holding = false; holdStart = 0
        
                            toolsAnim.use:Stop()
                            toolsAnim.usefinish:Play()
                            
                            return
                        end
        
                        holding = false; holdStart = 0
        
                        toolsAnim.use:Stop()
                    end
                end)

                shared.Connect:GiveSignal(Script.FakeRevive.Connections["ToolAnimInteractHandler"])
                
                Script.FakeRevive.Connections["ToolAnimUnequipHandler"] = shared.Character.ChildRemoved:Connect(function(v)
                    if v:IsA("Tool") then
                        rightGrip.Part1 = nil
                        rightGrip.C1 = CFrame.new()
                        rightGrip.Parent = nil
        
                        for _, anim in pairs(toolsAnim) do
                            anim:Stop()
                        end
        
                        currentTool = nil
                    end
                end)

                shared.Connect:GiveSignal(Script.FakeRevive.Connections["ToolAnimUnequipHandler"])
            end
        end)

        -- movement code
        local function generateCharacterCFrame(obj)
            local obj_pos = obj.Position
            return CFrame.new(obj_pos, obj_pos - (Vector3.new(shared.Camera.CFrame.Position.X, obj_pos.Y, shared.Camera.CFrame.Position.Z) - obj_pos).unit)
        end

        local function usePreviewCharacter(doStepped)
            -- fuck you roblox for using head instead of primarypart or char:GetPivot() 
            -- mstudio45 2023 ^^
            if wax.shared.ExecutorSupport["hookmetamethod"] and wax.shared.ExecutorSupport["getnamecallmethod"] then
                shared.Hooks._fixDistanceFromCharacter = hookmetamethod(shared.LocalPlayer, "__namecall", function(self, ...)
                    local method = getnamecallmethod();
                    local args = {...}
                
                    if method == "DistanceFromCharacter" then
                        if typeof(args[1]) == "Vector3" then
                            return Script.Functions.DistanceFromCharacter(args[1])
                        end
                        
                        return 9999;
                    end
                
                    return shared.Hooks._fixDistanceFromCharacter(self, ...)
                end)
            end

            if doStepped ~= false then
                shared.Library:Notify("您不再对别人可见,因为您已经丢失了您的共享网络所有权.", 5);

                for _,v in pairs(previewCharacter:GetDescendants()) do
                    if v:IsA("BasePart") then 
                        v.CanCollide = false
                    end
                end

                for _, connection in pairs(Script.FakeRevive.Connections) do
                    connection:Disconnect()
                end
                
                table.clear(Script.FakeRevive.Connections)
            end

            if previewCharacter:FindFirstChild("Humanoid") then previewCharacter.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None end
            
            Toggles.Fly:SetValue(true)

            shared.Connect:GiveSignal(shared.RunService.RenderStepped:Connect(function()
                if doStepped ~= false then previewCharacter:PivotTo(generateCharacterCFrame(shared.Character:GetPivot())) end
                if shared.RootPart then 
                    shared.RootPart.Transparency = (doStepped ~= false) and 1 or 0
                    shared.RootPart.CanCollide = false
                end
            end))
        end

        if shared.Character:FindFirstChild("LeftFoot") then shared.Character.LeftFoot.CanCollide = true end
        if shared.Character:FindFirstChild("RightFoot") then shared.Character.RightFoot.CanCollide = true end
        
        Script.FakeRevive.Connections["mainStepped"] = shared.RunService.RenderStepped:Connect(function()
            -- deivid gonna get mad at this line :content:
            if shared.Character:FindFirstChild("Humanoid") then shared.Character.Humanoid.WalkSpeed = Options.WalkSpeed.Value end

            if shared.RootPart and shared.RootPart.Position.Y < -150 then
                shared.RootPart.Position = workspace.SpawnLocation.Position
            end

            if shared.Character:FindFirstChild("UpperTorso") then
                shared.Character.UpperTorso.CanCollide = false 
            else
                if shared.Character:FindFirstChild("HumanoidRootPart") then 
                    local totalParts = 0
                    for _, v in pairs(shared.Character:GetChildren()) do if v:IsA("BasePart") then totalParts = totalParts + 1 end end
                    if totalParts <= 2 then
                        task.spawn(usePreviewCharacter)
                        Script.FakeRevive.Connections["mainStepped"]:Disconnect()

                        for _, connection in pairs(Script.FakeRevive.Connections) do
                            connection:Disconnect()
                        end
                        
                        table.clear(Script.FakeRevive.Connections)
                        return
                    end
                end
            end

            if not shared.Character:FindFirstChild("HumanoidRootPart") then
                shared.Library:Notify("You have completely lost Network Ownership of your shared.Character which resulted of breaking Fake Death.", 5);
                task.spawn(usePreviewCharacter, false)
                Script.FakeRevive.Connections["mainStepped"]:Disconnect()

                for _, connection in pairs(Script.FakeRevive.Connections) do
                    connection:Disconnect()
                end
                
                table.clear(Script.FakeRevive.Connections)
                return
            end
            
            previewCharacter:PivotTo(generateCharacterCFrame(shared.RootPart.CFrame * CFrame.new(0,1000,0)))

            local charPartCFrames = {}
            for _, part in ipairs(previewCharacter:GetDescendants()) do
                if part:IsA("BasePart") then
                    charPartCFrames[part.Name..part.ClassName] = part.CFrame
                end
            end

            for _, part in ipairs(shared.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    if part.Name == "RagdollCollision" then
                        part.CFrame = (charPartCFrames[part.Parent.Name .. part.Parent.ClassName] - Vector3.new(0,1000,0))
                        part.CanCollide = true
                    else
                        if charPartCFrames[part.Name..part.ClassName] then
                            part.CFrame = (charPartCFrames[part.Name..part.ClassName] - Vector3.new(0,1000,0))
                        end
                    end
                    
                    if part.Name ~= "HumanoidRootPart" then
                        if part.Parent == shared.Character or part.Parent:IsA("Accessory") then
                            part.LocalTransparencyModifier = 0
                        end

                        part.AssemblyAngularVelocity = Vector3.zero
                        part.AssemblyLinearVelocity = Vector3.zero
                    end
                end
            end
        end)

        shared.Connect:GiveSignal(Script.FakeRevive.Connections["mainStepped"])

        task.wait(0.1)
        local function fixUI()
            local setComponentVisibility = {
                Script.MainUI.HodlerRevive,
                Script.MainUI.Statistics,
                
                Script.MainUI.DeathPanelDead,
                Script.MainUI.DeathPanel,

                Script.MainUI.MainFrame.Healthbar,

                ["visible_real"] = Script.MainUI.MainFrame.PromptFrame.CenterImage,
                ["deivid_ballers_fake"] = Script.MainUI.MainFrame.PromptFrame.Holder,

                Script.MainUI.MainFrame.Hotbar,
                Script.MainUI.MainFrame.InventoryCap,
                Script.MainUI.MainFrame.InventoryLeftArrow,
                Script.MainUI.MainFrame.InventoryRightArrow,
            }

            for i,v in pairs(setComponentVisibility) do
                local target_visibility = (typeof(i) == "string" and true or false)

                v:GetPropertyChangedSignal("Visible"):Connect(function()
                    v.Visible = target_visibility
                end)

                v.Visible = target_visibility
            end

            shared.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
        end

        task.spawn(fixUI)

        shared.UserInputService.MouseBehavior = Enum.MouseBehavior.Default
        shared.UserInputService.MouseIconEnabled = true
        shared.UserInputService.MouseIcon = "rbxassetid://2833720882"

        task.wait()
        shared.Character.HumanoidRootPart.Anchored = false

        if Script.MainGameSrc then Script.MainGameSrc.dead = false end
        
        shared.ProximityPromptService.Enabled = true
        Script.FakeRevive.Connections["ProximityPromptEnabler"] = shared.ProximityPromptService:GetPropertyChangedSignal("Enabled"):Connect(function()
            shared.ProximityPromptService.Enabled = true
        end)

        shared.Connect:GiveSignal(Script.FakeRevive.Connections["ProximityPromptEnabler"])

        workspace.Gravity = 90

        -- ESP Fix :smartindividual:
        for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
            task.spawn(function()
                local roomDetectPart = room:WaitForChild(room.Name, math.huge)
                if roomDetectPart then
                    roomDetectPart.Size = Vector3.new(roomDetectPart.Size.X, roomDetectPart.Size.Y * 250, roomDetectPart.Size.Z)

                    local touchEvent = roomDetectPart.Touched:Connect(function(hit)
                        if hit.Parent == shared.LocalPlayer.Character and not Script.FakeRevive.Debounce then
                            Script.FakeRevive.Debounce = true
                            shared.LocalPlayer:SetAttribute("CurrentRoom", tonumber(room.Name))
                            
                            task.wait(0.075)
                            Script.FakeRevive.Debounce = false
                        end
                    end)
                    
                    table.insert(Script.FakeRevive.Connections, touchEvent)
                    shared.Connect:GiveSignal(touchEvent)
                end
            end)
        end

        Script.FakeRevive.Connections["CurrentRoomFix"] = workspace.CurrentRooms.ChildAdded:Connect(function(room)
            local roomDetectPart = room:WaitForChild(room.Name, math.huge)

            if roomDetectPart then
                roomDetectPart.Size = Vector3.new(roomDetectPart.Size.X, roomDetectPart.Size.Y * 100, roomDetectPart.Size.Z)

                local touchEvent = roomDetectPart.Touched:Connect(function(hit)
                    if hit.Parent == shared.LocalPlayer.Character and not Script.FakeRevive.Debounce then
                        Script.FakeRevive.Debounce = true
                        shared.LocalPlayer:SetAttribute("CurrentRoom", tonumber(room.Name))

                        task.wait(0.075)
                        Script.FakeRevive.Debounce = false
                    end
                end)
                
                table.insert(Script.FakeRevive.Connections, touchEvent)
                shared.Connect:GiveSignal(touchEvent)
            end
        end)

        shared.Connect:GiveSignal(Script.FakeRevive.Connections["CurrentRoomFix"])

        shared.Notify:Alert({
            Title = "假恢复",
            Description = "假恢复现在初始化,玩得开心!",
            Reason = '你现在"死了"',
        })
    end
end)

end)() end,
    [20] = function()local wax,script,require=ImportGlobals(20)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
local Tabs = Script.Tabs

--// Floor \\--
if Script.IsHotel then
    local Hotel_AntiEntityGroupBox = Tabs.Floor:AddLeftGroupbox("反实体") do
        Hotel_AntiEntityGroupBox:AddToggle("AntiSeekObstructions", {
            Text = "反Seek触手",
            Default = false
        })
    end

    local Hotel_BypassGroupBox = Tabs.Floor:AddLeftGroupbox("绕过") do
        Hotel_BypassGroupBox:AddToggle("AvoidRushAmbush", {
            Text = "躲避冲刺类怪物",
            Tooltip = "不在温室工作 :(",
            Default = false,
            Risky = true
        })
    end

    local Hotel_FarmGroupBox = Tabs.Floor:AddLeftGroupbox("自动") do
        Hotel_FarmGroupBox:AddToggle("KnobFarm", {
            Text = "自动旋钮",
            Default = false
        })
    end

    local Hotel_ModifiersGroupBox = Tabs.Floor:AddRightGroupbox("模组") do
        Hotel_ModifiersGroupBox:AddToggle("NoVoiceActing", {
            Text = "无配音",
            Default = false
        })

        Hotel_ModifiersGroupBox:AddToggle("AntiA90", {
            Text = "反A90",
            Default = false
        })

        Hotel_ModifiersGroupBox:AddToggle("NoJammin", {
            Text = "无Jammin音乐",
            Default = false
        })
    end

    Toggles.AntiSeekObstructions:OnChanged(function(value)
        for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
            if v.Name == "ChandelierObstruction" or v.Name == "Seek_Arm" then
                for _, obj in pairs(v:GetDescendants()) do
                    if v:IsA("BasePart") then v.CanTouch = not value end
                end
            end
        end
    end)

    Toggles.KnobFarm:OnChanged(function(value)
        local reviveCutscene = shared.ReplicatedStorage:FindFirstChild("ReviveCutscene", true) or shared.ReplicatedStorage:FindFirstChild("_ReviveCutscene", true)
    
        if reviveCutscene then
            reviveCutscene.Name = if value then "_ReviveCutscene" else "ReviveCutscene"
        end

        if value then
            task.spawn(function()
                while task.wait(0.25) and Toggles.KnobFarm.Value and not shared.Library.Unloaded do
                    repeat task.wait() until Script.LatestRoom.Value == 100 or not (Toggles.KnobFarm.Value and not shared.Library.Unloaded)
                    if not (Toggles.KnobFarm.Value and not shared.Library.Unloaded) then break end

                    if not Script.Alive then
                        Script.RemotesFolder.Revive:FireServer()
                        repeat task.wait() until Script.Alive
                        task.wait(1)
                    end

                    local figure = workspace.CurrentRooms:FindFirstChild("FigureRig", true)
                    if figure then
                        repeat
                            task.wait()
                            shared.Character:PivotTo(figure.Root.CFrame)
                        until not Script.Alive or not (Toggles.KnobFarm.Value and not shared.Library.Unloaded)
                        if not (Toggles.KnobFarm.Value and not shared.Library.Unloaded) then break end

                        task.wait()
                        Script.RemotesFolder.Statistics:FireServer()
                    end
                end
            end)
        end
    end)

    Toggles.NoVoiceActing:OnChanged(function(value)
        local voiceActing = shared.ReplicatedStorage:FindFirstChild("VoiceActing")
        if not voiceActing then return end

        local voicelines = voiceActing:FindFirstChild("Voicelines") or voiceActing:FindFirstChild("_Voicelines")
        if voicelines then
            voicelines.Name = if value then "_Voicelines" else "Voicelines"
        end
    end)

    Toggles.AntiA90:OnChanged(function(value)
        if not Script.MainGame then return end
        local module = Script.MainGame:FindFirstChild("A90", true) or Script.MainGame:FindFirstChild("_A90", true)
    
        if module then
            module.Name = value and "_A90" or "A90"
        end
    end)

    Toggles.NoJammin:OnChanged(function(value)
        if not Script.LiveModifiers:FindFirstChild("Jammin") then return end

        if Script.MainGame then
            local jamSound = Script.MainGame:FindFirstChild("Jam", true)
            if jamSound then jamSound.Playing = not value end
        end

        local jamminEffect = shared.SoundService:FindFirstChild("Jamming", true)
        if jamminEffect then jamminEffect.Enabled = not value end
    end)
elseif Script.IsMines then
    local Mines_MovementGroupBox = Tabs.Floor:AddLeftGroupbox("移动") do
        Mines_MovementGroupBox:AddSlider("MaxSlopeAngle", {
            Text = "最大地板坡度",
            Default = 45,
            Min = 0,
            Max = 90,
            Rounding = 0
        })
    end

    local Mines_AntiEntityGroupBox = Tabs.Floor:AddLeftGroupbox("反实体") do
        Mines_AntiEntityGroupBox:AddToggle("AntiGiggle", {
            Text = "反Giggle",
            Default = false
        })

        Mines_AntiEntityGroupBox:AddToggle("AntiGloomEgg", {
            Text = "反Gloom蛋",
            Default = false
        })

        Mines_AntiEntityGroupBox:AddToggle("AntiBridgeFall", {
            Text = "反坠桥",
            Default = false
        })

        Mines_AntiEntityGroupBox:AddToggle("AntiPipeGap", {
            Text = "反管道间隙",
            Default = false
        })

        Mines_AntiEntityGroupBox:AddToggle("AntiSeekFlood", {
            Text = "反Seek周围变红",
            Default = false
        })
    end

    local Mines_AutomationGroupBox = Tabs.Floor:AddRightGroupbox("自动化") do
        Mines_AutomationGroupBox:AddButton({
            Text = "自动门200水泵",
            Func = function()
                if Script.LatestRoom.Value < 99 then
                    shared.Notify:Alert({
                        Title = "进行200门",
                        Description = "你没到达指定地方门200...",
                        Time = 5
                    })

                    return
                end

                local bypassing = Toggles.SpeedBypass.Value
                local startPos = shared.RootPart.CFrame

                Toggles.SpeedBypass:SetValue(false)

                local damHandler = workspace.CurrentRooms[Script.LatestRoom.Value]:FindFirstChild("_DamHandler")

                if damHandler then
                    if damHandler:FindFirstChild("PlayerBarriers1") then
                        for _, pump in pairs(damHandler.Flood1.Pumps:GetChildren()) do
                            shared.Character:PivotTo(pump.Wheel.CFrame)
                            task.wait(0.25)
                            shared.forcefireproximityprompt(pump.Wheel.ValvePrompt)
                            task.wait(0.25)
                        end

                        task.wait(8)
                    end

                    if damHandler:FindFirstChild("PlayerBarriers2") then
                        for _, pump in pairs(damHandler.Flood2.Pumps:GetChildren()) do
                            shared.Character:PivotTo(pump.Wheel.CFrame)
                            task.wait(0.25)
                            shared.forcefireproximityprompt(pump.Wheel.ValvePrompt)
                            task.wait(0.25)
                        end

                        task.wait(8)
                    end

                    if damHandler:FindFirstChild("PlayerBarriers3") then
                        for _, pump in pairs(damHandler.Flood3.Pumps:GetChildren()) do
                            shared.Character:PivotTo(pump.Wheel.CFrame)
                            task.wait(0.25)
                            shared.forcefireproximityprompt(pump.Wheel.ValvePrompt)
                            task.wait(0.25)
                        end

                        task.wait(10)
                    end
                end

                local generator = workspace.CurrentRooms[shared.LatestRoom.Value]:FindFirstChild("MinesGenerator", true)

                if generator then
                    shared.Character:PivotTo(generator.PrimaryPart.CFrame)
                    task.wait(0.25)
                    shared.forcefireproximityprompt(generator.Lever.LeverPrompt)
                    task.wait(0.25)
                end

                Toggles.SpeedBypass:SetValue(bypassing)
                shared.Character:PivotTo(startPos)
            end
        })

        Mines_AutomationGroupBox:AddToggle("TheMinesAnticheatBypass", {
            Text = "反作弊绕过",
            Default = false
        })
    end

    local Mines_BypassGroupBox = Tabs.Floor:AddRightGroupbox("绕过") do
        Mines_BypassGroupBox:AddToggle("MinecartTeleport", {
            Text = "矿车传送",
            Default = false
        })

        Mines_BypassGroupBox:AddToggle("MinecartTeleportDebug", {
            Text = "矿车传送调试信息",
            Default = false,
            Visible = false,
        })
    end
    
    local Mines_VisualGroupBox = Tabs.Floor:AddRightGroupbox("虚拟") do
        Mines_VisualGroupBox:AddToggle("MinecartPathVisualiser", {
            Text = "显示正确Seek路径",
            Default = false
        })
    end

    Toggles.TheMinesAnticheatBypass:OnChanged(function(value)
        if value then
            local progressPart = Instance.new("Part", shared.Workspace) do
                progressPart.Anchored = true
                progressPart.CanCollide = false
                progressPart.Name = "_internal_mspaint_acbypassprogress"
                progressPart.Transparency = 1
            end

            if shared.Library.IsMobile then
                shared.Notify:Alert({
                    Title = "Anticheat bypass",
                    Description = "要绕过AC，您必须与梯子交互.",
                    Reason = "梯形镜头已启用，在梯子上没有移动.",

                    LinoriaMessage = "要绕过抗灰质,你必须与梯子进行互动.梯形图esp已启用.\n 在梯子上不要移动.",
                    Time = progressPart
                })
            else
                shared.Notify:Alert({
                    Title = "Anticheat bypass",
                    Description = "要绕过AC，您必须与梯子交互.",
                    Reason = "梯形镜头已启用，在梯子上没有移动.",

                    LinoriaMessage = "要绕过抗灰质,你必须与梯子进行互动.梯形图ESP已被启用.\n 在梯子上不要移动.",
                    Time = progressPart
                })
            end
            

            -- Ladder ESP
            for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
                if v:IsA("Model") and v.Name == "Ladder" then
                    Script.Functions.ESP({
                        Type = "None",
                        Object = v,
                        Text = "Ladder",
                        Color = Color3.new(0, 0, 1)
                    })
                end
            end
        else
            if workspace:FindFirstChild("_internal_mspaint_acbypassprogress") then workspace:FindFirstChild("_internal_mspaint_acbypassprogress"):Destroy() end

            for _, ladderEsp in pairs(Script.ESPTable.None) do
                ladderEsp.Destroy()
            end

            if Script.Bypassed and not Script.FakeRevive.Enabled then
                Script.RemotesFolder.ClimbLadder:FireServer()
                Script.Bypassed = false
                
                Options.WalkSpeed:SetMax(Toggles.SpeedBypass.Value and 75 or (Toggles.EnableJump.Value and 18 or 22))
                Options.FlySpeed:SetMax(Toggles.SpeedBypass.Value and 75 or 22)
            end
        end
    end)

    Options.MaxSlopeAngle:OnChanged(function(value)
        if shared.Humanoid then
            shared.Humanoid.MaxSlopeAngle = value
        end
    end)

    Toggles.AntiGiggle:OnChanged(function(value)
        for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
            for _, giggle in pairs(room:GetChildren()) do
                if giggle.Name == "GiggleCeiling" then
                    giggle:WaitForChild("Hitbox", 5).CanTouch = not value
                end
            end
        end
    end)

    -- this shits bad, but it doesnt go through all parts, so its optimized :cold_face:
    Toggles.AntiGloomEgg:OnChanged(function(value)
        for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
            for _, gloomPile in pairs(room:GetChildren()) do
                if gloomPile.Name == "GloomPile" then
                    for _, gloomEgg in pairs(gloomPile:GetDescendants()) do
                        if gloomEgg.Name == "Egg" then
                            gloomEgg.CanTouch = not value
                        end
                    end
                end
            end
        end
    end)

    Toggles.AntiBridgeFall:OnChanged(function(value)
        if value then
            for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
                if not room:FindFirstChild("Parts") then continue end

                for _, bridge in pairs(room.Parts:GetChildren()) do
                    if bridge.Name == "Bridge" then
                        for _, barrier in pairs(bridge:GetChildren()) do
                            if not (barrier.Name == "PlayerBarrier" and barrier.Size.Y == 2.75 and (barrier.Rotation.X == 0 or barrier.Rotation.X == 180)) then continue end

                            local clone = barrier:Clone()
                            clone.CFrame = clone.CFrame * CFrame.new(0, 0, -5)
                            clone.Color = Color3.new(1, 1, 1)
                            clone.Name = "AntiBridge"
                            clone.Size = Vector3.new(clone.Size.X, clone.Size.Y, 11)
                            clone.Transparency = 0
                            clone.Parent = bridge
                            
                            table.insert(Script.Temp.Bridges, clone)
                        end
                    end
                end
            end
        else
            for _, bridge in pairs(Script.Temp.Bridges) do
                bridge:Destroy()
            end
        end
    end)

    Toggles.AntiPipeGap:OnChanged(function(value)
        if value then
            for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
                if not room:FindFirstChild("Assets") then continue end

                for _, killBrick in pairs(room.Assets:GetChildren()) do
                    if killBrick.Name == "KillBrick" then
                        local clone = killBrick:Clone()
                        clone.Color = Color3.new(1, 1, 1)
                        clone.Name = "AntiPipeGap"
                        clone.Position += Vector3.new(0, 20, 0)
                        clone.Size = Vector3.new(9, 4, clone.Size.Z)
                        clone.Transparency = 0
                        clone.Parent = killBrick.Parent
                        
                        table.insert(Script.Temp.PipeBridges, clone)
                    end
                end
            end
        else
            for _, bridge in pairs(Script.Temp.PipeBridges) do
                bridge:Destroy()
            end
        end
    end)

    Toggles.AntiSeekFlood:OnChanged(function(value)
        local room = workspace.CurrentRooms:FindFirstChild("100")
        
        if room and room:FindFirstChild("_DamHandler") then
            local seekFlood = room._DamHandler:FindFirstChild("SeekFloodline")
            if seekFlood then
                seekFlood.CanCollide = value
            end
        end
    end)

    Toggles.MinecartPathVisualiser:OnChanged(function(value)
        Script.Functions.Minecart.DrawNodes()
    end)
elseif Script.IsBackdoor then
    local Backdoors_AntiEntityGroupBox = Tabs.Floor:AddLeftGroupbox("防实体") do
        Backdoors_AntiEntityGroupBox:AddToggle("AntiHasteJumpscare", {
            Text = "移除Haste跳杀",
            Default = false
        })
    end

    local Backdoors_VisualGroupBox = Tabs.Floor:AddRightGroupbox("娱乐") do
        Backdoors_VisualGroupBox:AddToggle("HasteClock", {
            Text = "Haste钟表",
            Default = true
        })
    end

    Toggles.AntiHasteJumpscare:OnChanged(function(value)
        local clientRemote = shared.ReplicatedStorage.FloorReplicated.ClientRemote
        local internal_temp_mspaint = clientRemote:FindFirstChild("_mspaint")
        
        if not internal_temp_mspaint then internal_temp_mspaint = Instance.new("Folder", clientRemote); internal_temp_mspaint.Name = "_mspaint" end

        if value then
            for i,v in pairs(clientRemote.Haste:GetChildren()) do
                if v:IsA("RemoteEvent") then continue end

                v.Parent = internal_temp_mspaint
            end
        else
            for i,v in pairs(internal_temp_mspaint:GetChildren()) do
                v.Parent = clientRemote.Haste
            end
        end
    end)

    Toggles.HasteClock:OnChanged(function(value)
        if not value then
            Script.Functions.HideCaptions()
        end
    end)

    function Script.Functions.TimerFormat(seconds: number)
        local minutes = math.floor(seconds / 60)
        local remainingSeconds = seconds % 60
        return string.format("%02d:%02d", minutes, remainingSeconds)
    end

    shared.Connect:GiveSignal(Script.FloorReplicated.DigitalTimer:GetPropertyChangedSignal("Value"):Connect(function()
        if Toggles.HasteClock.Value and Script.FloorReplicated.ScaryStartsNow.Value then
            Script.Functions.Captions(Script.Functions.TimerFormat(Script.FloorReplicated.DigitalTimer.Value))
        end
    end))
elseif Script.IsRooms then
    local Rooms_AntiEntityGroupBox = Tabs.Floor:AddLeftGroupbox("Anti-Entity") do
        Rooms_AntiEntityGroupBox:AddToggle("AntiA90", {
            Text = "Anti-A90",
            Default = false
        })
    end

    local Rooms_AutomationGroupBox = Tabs.Floor:AddRightGroupbox("Automation") do
        Rooms_AutomationGroupBox:AddToggle("AutoRooms", {
            Text = "Auto Rooms",
            Default = false
        })

        Rooms_AutomationGroupBox:AddLabel("Recommended Settings:\nSpeed Bypass and Noclip disabled", true)

        Rooms_AutomationGroupBox:AddDivider()

        Rooms_AutomationGroupBox:AddToggle("AutoRoomsDebug", { 
            Text = "Show Debug Info",
            Default = false
        })
        
        Rooms_AutomationGroupBox:AddToggle("ShowAutoRoomsPathNodes", { 
            Text = "Show Pathfinding Nodes",
            Default = false
        })

    end

    Toggles.AntiA90:OnChanged(function(value)
        if Toggles.AutoRooms.Value and not value then
            shared.Notify:Alert({
                Title = "Auto Rooms",
                Description = "自动客房需要反A-90!",
                Reason = "反A-90已启用",
            })
            
            Toggles.AntiA90:SetValue(true)
        end

        if not Script.MainGame then return end
        local module = Script.MainGame:FindFirstChild("A90", true) or Script.MainGame:FindFirstChild("_A90", true)
    
        if module then
            module.Name = value and "_A90" or "A90"
        end
    end)

    function Script.Functions.GetAutoRoomsPathfindingGoal(): BasePart
        local entity = (workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120"))
        if entity and entity.PrimaryPart.Position.Y > -10 then
            local GoalLocker = Script.Functions.GetNearestAssetWithCondition(function(asset)
                return asset.Name == "Rooms_Locker" and not asset.HiddenPlayer.Value and asset.PrimaryPart.Position.Y > -10
            end)

            return GoalLocker.PrimaryPart
        end

        return workspace.CurrentRooms[Script.LatestRoom.Value].RoomExit
    end

    local _internal_mspaint_pathfinding_nodes = Instance.new("Folder", shared.Workspace) do
        _internal_mspaint_pathfinding_nodes.Name = "_internal_mspaint_pathfinding_nodes"
    end

    local _internal_mspaint_pathfinding_block = Instance.new("Folder", shared.Workspace) do
        _internal_mspaint_pathfinding_block.Name = "_internal_mspaint_pathfinding_block"
    end

    Toggles.ShowAutoRoomsPathNodes:OnChanged(function(value)
        for _, node in pairs(_internal_mspaint_pathfinding_nodes:GetChildren()) do
            node.Transparency = value and 0.5 or 1
        end
        for _, nodeBlock in pairs(_internal_mspaint_pathfinding_block:GetChildren()) do
            nodeBlock.Transparency = value and 0.9 or 1
        end
    end)

    shared.Connect:GiveSignal(shared.RunService.RenderStepped:Connect(function()
        if not Toggles.AutoRooms.Value then return end

        local entity = (workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120"))
        local isEntitySpawned = (entity and entity.PrimaryPart.Position.Y > -10)
        
        if isEntitySpawned and not shared.RootPart.Anchored then
            local pathfindingGoal = Script.Functions.GetAutoRoomsPathfindingGoal()

            if Script.Functions.IsPromptInRange(pathfindingGoal.Parent.HidePrompt) then
                shared.forcefireproximityprompt(pathfindingGoal.Parent.HidePrompt)
            end
        elseif not isEntitySpawned and shared.RootPart.Anchored then
            for i = 1, 10 do
                Script.RemotesFolder.CamLock:FireServer()
            end
        end
    end))

    Toggles.AutoRooms:OnChanged(function(value)
        local hasResetFailsafe = false

        local function nodeCleanup()
            _internal_mspaint_pathfinding_nodes:ClearAllChildren()
            _internal_mspaint_pathfinding_block:ClearAllChildren()
            hasResetFailsafe = true
        end

        local function moveToCleanup()
            if shared.Humanoid then
                shared.Humanoid:Move(shared.RootPart.Position)
                shared.Humanoid.WalkToPart = nil
                shared.Humanoid.WalkToPoint = shared.RootPart.Position
            end
            nodeCleanup()
        end

        if value then
            Toggles.AntiA90:SetValue(true)
            local lastRoomValue = 0

            local function createNewBlockedPoint(point: PathWaypoint)
                local block = Instance.new("Part", _internal_mspaint_pathfinding_block)
                local pathMod = Instance.new("PathfindingModifier", block)
                pathMod.Label = "_ms_pathBlock"

                block.Name = "_mspaint_blocked_path"
                block.Shape = Enum.PartType.Block

                local sizeY = 10
                
                block.Size = Vector3.new(1, sizeY, 1)
                block.Color = Color3.fromRGB(255, 130, 30)
                block.Material = Enum.Material.Neon
                block.Position = point.Position + Vector3.new(0, sizeY / 2, 0)
                block.Anchored = true
                block.CanCollide = false
                block.Transparency = Toggles.ShowAutoRoomsPathNodes.Value and 0.9 or 1
            end

            local function doAutoRooms()
                local pathfindingGoal = Script.Functions.GetAutoRoomsPathfindingGoal()

                if Script.LatestRoom.Value ~= lastRoomValue then
                    _internal_mspaint_pathfinding_block:ClearAllChildren()
                    lastRoomValue = Script.LatestRoom.Value
                end
                
                shared.Notify:Log({
                    Title = "Auto Rooms",
                    Description = "成功计算目标!\nObjective: " .. pathfindingGoal.Parent.Name .. "\n创造路径...",
                }, Toggles.AutoRoomsDebug.Value)

                local path = shared.PathfindingService:CreatePath({
                    AgentCanJump = false,
                    AgentCanClimb = false,
                    WaypointSpacing = 2,
                    AgentRadius = 1,
                    Costs = {
                        _ms_pathBlock = 8 --cost will increase the more stuck you get.
                    }
                })

                shared.Notify:Log({
                    Title = "Auto Rooms",
                    Description = "计算路径 " .. pathfindingGoal.Parent.Name .. "...",
                }, Toggles.AutoRoomsDebug.Value)

                path:ComputeAsync(shared.RootPart.Position - Vector3.new(0, 2.5, 0), pathfindingGoal.Position)
                local waypoints = path:GetWaypoints()
                local waypointAmount = #waypoints

                if path.Status == Enum.PathStatus.Success then
                    hasResetFailsafe = true
                    task.spawn(function()
                        task.wait(0.1)
                        hasResetFailsafe = false
                        if shared.Humanoid and Script.Collision then
                            local checkFloor = shared.Humanoid.FloorMaterial
                            local isStuck = checkFloor == Enum.Material.Air or checkFloor == Enum.Material.Concrete
                            if isStuck then
                                repeat task.wait()
                                    Script.Collision.CanCollide = false
                                    Script.Collision.CollisionCrouch.CanCollide = true
                                until not isStuck or hasResetFailsafe
                                Script.Collision.CanCollide = true
                            end
                            hasResetFailsafe = true
                        end
                    end)

                    shared.Notify:Log({
                        Title = "Auto Rooms",
                        Description = "成功计算了路径 " .. waypointAmount .. " 路标!",
                    }, Toggles.AutoRoomsDebug.Value)

                    _internal_mspaint_pathfinding_nodes:ClearAllChildren()

                    for i, waypoint in pairs(waypoints) do
                        local node = Instance.new("Part", _internal_mspaint_pathfinding_nodes) do
                            node.Name = "_internal_node_" .. i
                            node.Size = Vector3.new(1, 1, 1)
                            node.Position = waypoint.Position
                            node.Anchored = true
                            node.CanCollide = false
                            node.Shape = Enum.PartType.Ball
                            node.Color = Color3.new(1, 0, 0)
                            node.Transparency = Toggles.ShowAutoRoomsPathNodes.Value and 0.5 or 1
                        end
                    end

                    local lastWaypoint = nil
                    for i, waypoint in pairs(waypoints) do
                        local moveToFinished = false
                        local recalculate = false
                        local waypointConnection = shared.Humanoid.MoveToFinished:Connect(function() moveToFinished = true end)
                        if not moveToFinished or not Toggles.AutoRooms.Value then
                            shared.Humanoid:MoveTo(waypoint.Position)
                            
                            local entity = (workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120"))
                            local isEntitySpawned = (entity and entity.PrimaryPart.Position.Y > -10)

                            if isEntitySpawned and not shared.RootPart.Anchored and pathfindingGoal.Parent.Name ~= "Rooms_Locker" then
                                waypointConnection:Disconnect()

                                if not Toggles.AutoRooms.Value then
                                    nodeCleanup()
                                    break
                                else
                                    if _internal_mspaint_pathfinding_nodes:FindFirstChild("_internal_node_" .. i) then
                                        _internal_mspaint_pathfinding_nodes:FindFirstChild("_internal_node_" .. i):Destroy()
                                    end
                                end

                                break
                            end

                            task.delay(1.5, function()
                                if moveToFinished then return end
                                if (not Toggles.AutoRooms.Value or shared.Library.Unloaded) then return moveToCleanup() end

                                repeat task.wait(0.25) until (not shared.Character:GetAttribute("Hiding") and not shared.Character.PrimaryPart.Anchored)

                                shared.Notify:Alert({
                                    Title = "Auto Rooms",
                                    Description = "似乎你被困，试图重新计算道路...",
                                    Reason = "无法搬到航点",
                                })

                                recalculate = true
                                if lastWaypoint == nil and waypointAmount > 1 then
                                    waypoint = waypoints[i+1]
                                else
                                    waypoint = waypoints[i-1]
                                end

                                createNewBlockedPoint(waypoint)
                            end)
                        end

                        repeat task.wait() until moveToFinished or not Toggles.AutoRooms.Value or recalculate or shared.Library.Unloaded
                        lastWaypoint = waypoint

                        waypointConnection:Disconnect()

                        if not Toggles.AutoRooms.Value then
                            nodeCleanup()
                            break
                        else
                            if _internal_mspaint_pathfinding_nodes:FindFirstChild("_internal_node_" .. i) then
                                _internal_mspaint_pathfinding_nodes:FindFirstChild("_internal_node_" .. i):Destroy()
                            end
                        end

                        if recalculate then break end
                    end
                else
                    shared.Notify:Log({
                        Title = "Auto Rooms",
                        Description = "pathfinding失败了状态 " .. tostring(path.Status)   
                    }, Toggles.AutoRoomsDebug.Value)
                end
            end

            -- Movement
            while Toggles.AutoRooms.Value and not shared.Library.Unloaded do
                if Script.LatestRoom.Value == 1000 then
                    shared.Notify:Alert({
                        Title = "Auto Rooms",
                        Description = "你已经到了 A-1000",
                        Reason = "A-1000 由Mspaint 自动托管到达",
                    })

                    break
                end

                doAutoRooms()
            end
            
            -- Unload Auto Rooms
            moveToCleanup()
        end
    end)
elseif Script.IsFools then
    local Fools_TrollingGroupBox = Tabs.Floor:AddLeftGroupbox("Trolling") do
        Fools_TrollingGroupBox:AddToggle("GrabBananaJeffToggle",{
            Text = "Grab Banana / Jeff",
            Default = false
        }):AddKeyPicker("GrabBananaJeff", {
            Default = "H",
            Mode = "Hold",
            Text = "Grab Banana / Jeff",
        })
    
        Fools_TrollingGroupBox:AddLabel("Throw"):AddKeyPicker("ThrowBananaJeff", {
            Default = "G",
            Mode = "Hold",
            Text = "Throw"
        })

        Fools_TrollingGroupBox:AddSlider("ThrowStrength", {
            Text = "Throw Strength",
            Default = 1,
            Min = 1,
            Max = 10,
            Rounding = 1,
            Compact = true
        })

        function Script.Functions.ThrowBananaJeff()
            local target = Script.Temp.HoldingItem

            Script.Tracks.ItemHoldTrack:Stop()
            Script.Tracks.ItemThrowTrack:Play()

            task.wait(0.35)

            if target:FindFirstChildWhichIsA("BodyGyro") then
                target:FindFirstChildWhichIsA("BodyGyro"):Destroy()
            end

            local velocity = shared.LocalPlayer:GetMouse().Hit.LookVector * 0.5 * 200 * Options.ThrowStrength.Value
            local spawnPos = shared.Camera.CFrame:ToWorldSpace(CFrame.new(0,0,-3) * CFrame.lookAt(Vector3.new(0, 0, 0), shared.Camera.CFrame.LookVector))
            
            target.CFrame = spawnPos
            target.Velocity = velocity

            if target:FindFirstAncestorWhichIsA("Model").Name == "JeffTheKiller" then
                for _,i in ipairs(target:FindFirstAncestorWhichIsA("Model"):GetDescendants()) do
                    if i:IsA("BasePart") then
                        i.CanTouch = not Toggles.AntiJeffClient.Value
                        i.CanCollide = i:GetAttribute("Clip") or true
                    end
                end
            else
                target.CanTouch = not Toggles.AntiBananaPeel.Value
                target.CanCollide = target:GetAttribute("Clip") or true
            end

            Script.Temp.HoldingItem = nil
        end
    end

    local Fools_AntiEntityGroupBox = Tabs.Floor:AddRightGroupbox("Anti-Entity") do
        Fools_AntiEntityGroupBox:AddToggle("AntiSeekObstructions", {
            Text = "Anti-Seek Obstructions",
            Default = false
        })

        Fools_AntiEntityGroupBox:AddToggle("AntiBananaPeel", {
            Text = "Anti-Banana",
            Default = false
        })

        Fools_AntiEntityGroupBox:AddToggle("AntiJeffClient", {
            Text = "Anti-Jeff",
            Default = false
        })
    end

    local Fools_BypassGroupBox = Tabs.Floor:AddRightGroupbox("Bypass") do
        Fools_BypassGroupBox:AddToggle("InfRevives", {
            Text = "Infinite Revives",
            Default = false
        })

        Fools_BypassGroupBox:AddToggle("AntiJeffServer", {
            Text = "Anti-Jeff (FE)",
            Default = false
        })

        Fools_BypassGroupBox:AddDivider()

        Fools_BypassGroupBox:AddToggle("GodmodeNoclipBypassFools", {
            Text = "Godmode",
            Default = false
        })

        Fools_BypassGroupBox:AddToggle("FigureGodmodeFools", {
            Text = "Figure Godmode",
            Default = false
        })
    end

    Toggles.AntiSeekObstructions:OnChanged(function(value)
        for i, v in pairs(workspace.CurrentRooms:GetDescendants()) do
            if v.Name == "ChandelierObstruction" or v.Name == "Seek_Arm" then
                for _, obj in pairs(v:GetDescendants()) do
                    if v:IsA("BasePart") then v.CanTouch = not value end
                end
            end
        end
    end)
    
    Toggles.AntiBananaPeel:OnChanged(function(value)
        for _, peel in pairs(workspace:GetChildren()) do
            if peel.Name == "BananaPeel" then
                peel.CanTouch = not value
            end
        end
    end)

    Toggles.AntiJeffClient:OnChanged(function(value)
        for _, jeff in pairs(workspace:GetChildren()) do
            if jeff:IsA("Model") and jeff.Name == "JeffTheKiller" then
                for i, v in pairs(jeff:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanTouch = not value
                    end
                end
            end
        end
    end)

    Toggles.AntiJeffServer:OnChanged(function(value)
        if value then
            for _, jeff in pairs(workspace:GetChildren()) do
                if jeff:IsA("Model") and jeff.Name == "JeffTheKiller" then
                    task.spawn(function()
                        repeat task.wait() until shared.isnetworkowner(jeff.PrimaryPart)
                        jeff:FindFirstChildOfClass("Humanoid").Health = 0
                    end)
                end
            end
        end
    end)

    Toggles.InfRevives:OnChanged(function(value)
        if value and not shared.LocalPlayer:GetAttribute("Alive") then
            Script.RemotesFolder.Revive:FireServer()
        end
    end)

    Toggles.GodmodeNoclipBypassFools:OnChanged(function(value)
        if value and shared.Humanoid and Script.Collision then
            shared.Humanoid.HipHeight = 3.01
            task.wait()
            Script.Collision.Position = Script.Collision.Position - Vector3.new(0, 8, 0)
            task.wait()
            shared.Humanoid.HipHeight = 3
            
            -- don't want to put collision up when you load the script 
            -- im sorry deivid
            task.spawn(function()
                repeat task.wait() until not Toggles.GodmodeNoclipBypassFools.Value
                shared.Humanoid.HipHeight = 3.01
                task.wait()
                Script.Collision.Position = Script.Collision.Position + Vector3.new(0, 8, 0)
                task.wait()
                shared.Humanoid.HipHeight = 3
            end)
        end
    end)

    Toggles.FigureGodmodeFools:OnChanged(function(value)
        if value and not Toggles.GodmodeNoclipBypassFools.Value then Toggles.GodmodeNoclipBypassFools:SetValue(true); shared.Notify:Alert({Title = "Figure Godmode", Description = "Godmode/Noclip Bypass is required to use figure godmode", Reason = "Godmode/Noclip Bypass not enabled"}) end
        if Script.LatestRoom.Value ~= 50 or Script.LatestRoom.Value ~= 100 then return end

        for _, figure in pairs(workspace.CurrentRooms:GetDescendants()) do
            if figure:IsA("Model") and figure.Name == "FigureRagdoll" then
                for i, v in pairs(figure:GetDescendants()) do
                    if v:IsA("BasePart") then
                        if not v:GetAttribute("Clip") then v:SetAttribute("Clip", v.CanCollide) end

                        v.CanTouch = not value
                        v.CanCollide = not value
                    end
                end
            end
        end
    end)
end
end)() end,
    [21] = function()local wax,script,require=ImportGlobals(21)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
local Tabs = Script.Tabs

--// Main \\--
local PlayerGroupBox = Tabs.Main:AddLeftGroupbox("玩家") do
    PlayerGroupBox:AddToggle("EnableSpeedHack", {
        Text = "设置速度（追逐时请关闭）",
        Default = false
    })

    PlayerGroupBox:AddSlider("WalkSpeed", {
        Text = "移动速度",
        Default = 15,
        Min = 0,
        Max = 22,
        Rounding = 0,
        Compact = true
    })

    PlayerGroupBox:AddSlider("LadderSpeed", {
        Text = "梯子速度",
        Default = 15,
        Min = 0,
        Max = 75,
        Rounding = 0,
        Compact = true
    })

    PlayerGroupBox:AddToggle("EnableJump", {
        Text = "开启跳跃",
        Default = false,
        Visible = not Script.IsFools
    })

    PlayerGroupBox:AddToggle("NoAccel", {
        Text = "无加速度",
        Default = false
    })

    PlayerGroupBox:AddDivider()

    PlayerGroupBox:AddToggle("InstaInteract", {
        Text = "瞬间交互",
        Default = false
    })

    PlayerGroupBox:AddToggle("FastClosetExit", {
        Text = "快速出柜子",
        Default = false
    })

    PlayerGroupBox:AddDivider()

    PlayerGroupBox:AddToggle("Noclip", {
        Text = "穿墙",
        Default = false
    }):AddKeyPicker("NoclipKey", {
        Mode = "Toggle",
        Default = "N",
        Text = "穿墙",
        SyncToggleState = true
    })

    PlayerGroupBox:AddToggle("Fly", {
        Text = "走空",
        Default = false
    }):AddKeyPicker("FlyKey", {
        Mode = "Toggle",
        Default = "F",
        Text = "走空",
        SyncToggleState = true
    })
    
    PlayerGroupBox:AddSlider("FlySpeed", {
        Text = "设置走空速度",
        Default = 15,
        Min = 10,
        Max = 22,
        Rounding = 1,
        Compact = true,
    })
end

local ReachGroupBox = Tabs.Main:AddLeftGroupbox("范围") do
    ReachGroupBox:AddToggle("DoorReach", {
        Text = "远程开门",
        Default = false
    })

    ReachGroupBox:AddToggle("PromptClip", {
        Text = "远程互动",
        Default = false
    })

    ReachGroupBox:AddSlider("PromptReachMultiplier", {
        Text = "设置远程距离",
        Default = 1,
        Min = 1,
        Max = 2,
        Rounding = 1
    })
end

local AutomationGroupBox = Tabs.Main:AddRightGroupbox("自动化") do
    AutomationGroupBox:AddToggle("AutoInteract", {
        Text = "自动互动",
        Default = false
    }):AddKeyPicker("AutoInteractKey", {
        Mode = shared.Library.IsMobile and "Toggle" or "Hold",
        Default = "R",
        Text = "自动互动",
        SyncToggleState = shared.Library.IsMobile
    })

    AutomationGroupBox:AddDropdown("AutoInteractIgnore", {
        AllowNull = true,
        Values = {"Jeff Items", "Unlock w/ Lockpick", "Paintings", "Gold", "Light Source Items", "Skull Prompt"},
        Default = {"Jeff Items"},
        Multi = true,

        Text = "忽略列表"
    })

    AutomationGroupBox:AddDivider()

    AutomationGroupBox:AddToggle("AutoWardrobeNotif", {
        Text = "自动" .. Script.HidingPlaceName[Script.Floor.Value] .. "提示",
        Default = false
    })

    AutomationGroupBox:AddToggle("AutoWardrobe", {
        Text = "自动" .. Script.HidingPlaceName[Script.Floor.Value],
        Default = false,
        Tooltip = "1145141919180",
        Visible = not Script.IsRetro,
        Risky = true
    }):AddKeyPicker("AutoWardrobeKey", {
        Mode = "Toggle",
        Default = "Q",
        Text = "自动 " .. Script.HidingPlaceName[Script.Floor.Value],
        SyncToggleState = true
    })
    AutomationGroupBox:AddDivider()

    AutomationGroupBox:AddToggle("AutoHeartbeat", {
        Text = "自动心跳游戏",
        Default = false,
        Visible = wax.shared.ExecutorSupport["getnamecallmethod"]
    })

    if Script.IsHotel or Script.IsFools then
        AutomationGroupBox:AddToggle("AutoLibrarySolver", {
            Text = "自动图书馆密码",
            Default = false
        })

        AutomationGroupBox:AddSlider("AutoLibraryDistance", {
            Text = "解锁距离",
            Default = 20,
            Min = 1,
            Max = 100,
            Rounding = 0,
            Compact = true
        })

        AutomationGroupBox:AddDivider()

        AutomationGroupBox:AddDropdown("AutoBreakerSolverMethod", {
            AllowNull = false,
            Values = {"Legit", "Exploit"},
            Default = "Legit",
            Multi = false,

            Text = "自动电闸模式"
        })

        AutomationGroupBox:AddToggle("AutoBreakerSolver", {
            Text = "自动电闸盒",
            Default = false
        })

        Toggles.AutoLibrarySolver:OnChanged(function(value)
            if value then
                for _, player in pairs(shared.Players:GetPlayers()) do
                    if not player.Character then continue end
                    local tool = player.Character:FindFirstChildOfClass("Tool")

                    if tool and tool.Name:match("LibraryHintPaper") then
                        local code = Script.Functions.GetPadlockCode(tool)
                        local padlock = workspace:FindFirstChild("Padlock", true)

                        if tonumber(code) and Script.Functions.DistanceFromCharacter(padlock) <= Options.AutoLibraryDistance.Value then
                            Script.RemotesFolder.PL:FireServer(code)
                        end
                    end
                end
            end
        end)

        Toggles.AutoBreakerSolver:OnChanged(function(value)
            if value then
                local elevatorBreaker = workspace.CurrentRooms:FindFirstChild("ElevatorBreaker", true)
                if not elevatorBreaker then return end
    
                Script.Functions.SolveBreakerBox(elevatorBreaker)
            end
        end)
    elseif Script.IsMines then
        AutomationGroupBox:AddToggle("AutoAnchorSolver", {
            Text = "自动锚点",
            Default = false
        })
    end
end

local MiscGroupBox = Tabs.Main:AddRightGroupbox("杂项") do
    MiscGroupBox:AddButton({
        Text = "复活",
        Func = function()
            Script.RemotesFolder.Revive:FireServer()
        end,
        DoubleClick = true
    })

    MiscGroupBox:AddButton({
        Text = "重新游玩",
        Func = function()
            Script.RemotesFolder.PlayAgain:FireServer()
        end,
        DoubleClick = true
    })

    MiscGroupBox:AddButton({
        Text = "大厅",
        Func = function()
            Script.RemotesFolder.Lobby:FireServer()
        end,
        DoubleClick = true
    })
end

--// Player \\--
Toggles.EnableJump:OnChanged(function(value)
    if Script.IsFools then return end

    if shared.Character then
        shared.Character:SetAttribute("CanJump", value)
    end

    if not value and shared.CheckToggle("SpeedBypass", true) and Options.WalkSpeed.Max ~= 22 and not Script.FakeRevive.Enabled then
        Options.WalkSpeed:SetMax(22)
    end
end)

Toggles.NoAccel:OnChanged(function(value)
    if not shared.RootPart then return end

    if value then
        Script.Temp.NoAccelValue = shared.RootPart.CustomPhysicalProperties.Density
        
        local existingProperties = shared.RootPart.CustomPhysicalProperties
        shared.RootPart.CustomPhysicalProperties = PhysicalProperties.new(100, existingProperties.Friction, existingProperties.Elasticity, existingProperties.FrictionWeight, existingProperties.ElasticityWeight)
    else
        local existingProperties = shared.RootPart.CustomPhysicalProperties
        shared.RootPart.CustomPhysicalProperties = PhysicalProperties.new(Script.Temp.NoAccelValue, existingProperties.Friction, existingProperties.Elasticity, existingProperties.FrictionWeight, existingProperties.ElasticityWeight)
    end
end)

Toggles.InstaInteract:OnChanged(function(value)
    for _, prompt in pairs(workspace.CurrentRooms:GetDescendants()) do
        if prompt:IsA("ProximityPrompt") then
            if value then
                if not prompt:GetAttribute("Hold") then prompt:SetAttribute("Hold", prompt.HoldDuration) end
                prompt.HoldDuration = 0
            else
                prompt.HoldDuration = prompt:GetAttribute("Hold") or 0
            end
        end
    end
end)

Toggles.Fly:OnChanged(function(value)
    if not shared.Fly.FlyBody then shared.Fly:Setup() end

    shared.Fly:Set(value)
end)

Options.FlySpeed:OnChanged(function(value)
    shared.Fly:SetSpeed(value)
end)

--// Reach \\--
Toggles.PromptClip:OnChanged(function(value)
    for _, prompt in pairs(workspace.CurrentRooms:GetDescendants()) do        
        if Script.Functions.PromptCondition(prompt) then
            if value then
                prompt.RequiresLineOfSight = false
            else
                prompt.RequiresLineOfSight = prompt:GetAttribute("Clip") or true
            end
        end
    end
end)

Options.PromptReachMultiplier:OnChanged(function(value)
    for _, prompt in pairs(workspace.CurrentRooms:GetDescendants()) do
        if Script.Functions.PromptCondition(prompt) then
            if not prompt:GetAttribute("Distance") then prompt:SetAttribute("Distance", prompt.MaxActivationDistance) end

            prompt.MaxActivationDistance = prompt:GetAttribute("Distance") * value
        end
    end
end)
end)() end,
    [22] = function()local wax,script,require=ImportGlobals(22)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
local Tabs = Script.Tabs

local CaptionStyles = {"Linoria"}
if wax.shared.ExecutorSupport["firesignal"] then
    table.insert(CaptionStyles, "Doors")
end

--// Visuals \\--
local ESPTabBox = Tabs.Visuals:AddLeftTabbox() do
    local ESPTab = ESPTabBox:AddTab("透视") do
        ESPTab:AddToggle("DoorESP", {
            Text = "门",
            Default = false,
        }):AddColorPicker("DoorEspColor", {
            Default = Color3.new(0, 1, 1),
        })
    
        ESPTab:AddToggle("ObjectiveESP", {
            Text = "钥匙",
            Default = false,
        }):AddColorPicker("ObjectiveEspColor", {
            Default = Color3.new(0, 1, 0),
        })
    
        ESPTab:AddToggle("EntityESP", {
            Text = "怪物",
            Default = false,
        }):AddColorPicker("EntityEspColor", {
            Default = Color3.new(1, 0, 0),
        })
    
        ESPTab:AddToggle("ItemESP", {
            Text = "物品",
            Default = false,
        }):AddColorPicker("ItemEspColor", {
            Default = Color3.new(1, 0, 1),
        })
    
        ESPTab:AddToggle("ChestESP", {
            Text = "箱子",
            Default = false,
        }):AddColorPicker("ChestEspColor", {
            Default = Color3.new(1, 1, 0),
        })
    
        ESPTab:AddToggle("PlayerESP", {
            Text = "玩家",
            Default = false,
        }):AddColorPicker("PlayerEspColor", {
            Default = Color3.new(1, 1, 1),
        })
    
        ESPTab:AddToggle("HidingSpotESP", {
            Text = Script.HidingPlaceName[Script.Floor.Value],
            Default = false,
        }):AddColorPicker("HidingSpotEspColor", {
            Default = Color3.new(0, 0.5, 0),
        })
    
        ESPTab:AddToggle("GoldESP", {
            Text = "金币",
            Default = false,
        }):AddColorPicker("GoldEspColor", {
            Default = Color3.new(1, 1, 0),
        })
    
        ESPTab:AddToggle("GuidingLightESP", {
            Text = "引导之光",
            Default = false,
        }):AddColorPicker("GuidingLightEspColor", {
            Default = Color3.new(0, 0.5, 1),
        })
    end

    local ESPSettingsTab = ESPTabBox:AddTab("设置") do
        ESPSettingsTab:AddToggle("ESPRainbow", {
            Text = "彩虹透视",
            Default = false,
        })

        ESPSettingsTab:AddDivider()

        ESPSettingsTab:AddToggle("ESPHighlight", {
            Text = "开启高亮",
            Default = true
        })

        ESPSettingsTab:AddSlider("ESPFillTransparency", {
            Text = "内填充透明度",
            Default = 0.75,
            Min = 0,
            Max = 1,
            Rounding = 2
        })
    
        ESPSettingsTab:AddSlider("ESPOutlineTransparency", {
            Text = "外填充透明度",
            Default = 0,
            Min = 0,
            Max = 1,
            Rounding = 2
        })

        ESPSettingsTab:AddDivider()

        ESPSettingsTab:AddToggle("ESPDistance", {
            Text = "显示距离",
            Default = true
        })
    
        ESPSettingsTab:AddSlider("ESPTextSize", {
            Text = "字体大小",
            Default = 22,
            Min = 16,
            Max = 26,
            Rounding = 0
        })
    
        ESPSettingsTab:AddDivider()

        ESPSettingsTab:AddToggle("ESPTracer", {
            Text = "开启线条追踪",
            Default = false
        })

        ESPSettingsTab:AddDropdown("ESPTracerStart", {
            AllowNull = false,
            Values = {"Bottom", "Center", "Top", "Mouse"},
            Default = "Bottom",
            Multi = false,

            Text = "线起始位置"
        })

        ESPSettingsTab:AddDivider()

        ESPSettingsTab:AddToggle("ESPArrow", {
            Text = "使用箭头",
            Default = false
        })

        ESPSettingsTab:AddSlider("ESPArrowCenterOffset", {
            Text = "箭头中心偏移",
            Default = 300,
            Min = 0,
            Max = 500,
            Rounding = 0
        })
    end
end

local AmbientGroupBox = Tabs.Visuals:AddLeftGroupbox("氛围") do
    AmbientGroupBox:AddSlider("Brightness", {
        Text = "亮度",
        Default = 0,
        Min = 0,
        Max = 3,
        Rounding = 1,
    })

    AmbientGroupBox:AddToggle("Fullbright", {
        Text = "高亮",
        Default = false,
    })

    AmbientGroupBox:AddToggle("NoFog", {
        Text = "没有雾",
        Default = false,
    })

    AmbientGroupBox:AddToggle("AntiLag", {
        Text = "反卡顿",
        Default = false,
    })
end

local NotifyTabBox = Tabs.Visuals:AddRightTabbox() do
    local NotifyTab = NotifyTabBox:AddTab("Notifier") do
        NotifyTab:AddDropdown("NotifyEntity", {
            AllowNull = true,
            Values = {"Blitz", "Lookman", "Rush", "Ambush", "Eyes", "Halt Room", "A60", "A120", "Jeff The Killer", "Gloombat Swarm", "Void/Glitch"},
            Default = {},
            Multi = true,

            Text = "提示实体"
        })

        NotifyTab:AddToggle("NotifyPadlock", {
            Text = "图书馆密码提示",
            Default = false,
        })

        NotifyTab:AddToggle("NotifyOxygen", {
            Text = "氧气提示",
            Default = false,
        })

        NotifyTab:AddToggle("NotifyHideTime", {
            Text = "提示躲藏时间",
            Default = false,
        })
    end

    local NotifySettingsTab = NotifyTabBox:AddTab("设置") do
        NotifySettingsTab:AddToggle("NotifyChat", {
            Text = "聊天提示",
            Tooltip = "实体和密码锁",
            Default = false,
        })

        NotifySettingsTab:AddInput("NotifyEntityMessage", {
            Default = "已经生成!",
            Numeric = false,
            Finished = true,
            ClearTextOnFocus = false,

            Text = "实体提示信息"
        })

        NotifySettingsTab:AddDivider()
        
        NotifySettingsTab:AddToggle("NotifySound", {
            Text = "播放警戒声音",
            Default = true,
        })

        NotifySettingsTab:AddSlider("NotifyVolume", {
            Text = "提示音量",
            Default = 2,
            Min = 0,
            Max = 5,
            Rounding = 1
        })

        NotifySettingsTab:AddDropdown("NotifySide", {
            AllowNull = false,
            Values = {"Left", "Right"},
            Default = "Right",
            Multi = false,

            Text = "提示位置"
        })

        NotifySettingsTab:AddDropdown("NotifyStyle", {
            AllowNull = false,
            Values = {"Linoria", "Doors"},
            Default = "Linoria",
            Multi = false,

            Text = "提示样式"
        })

        NotifySettingsTab:AddDivider()
        
        NotifySettingsTab:AddDropdown("CaptionStyle", {
            AllowNull = false,
            Values = CaptionStyles,
            Default = "Linoria",
            Multi = false,

            Text = "提示样子"
        })
    end
end

local SelfTabBox = Tabs.Visuals:AddRightTabbox() do
    local SelfTab = SelfTabBox:AddTab("玩家菜单") do
        SelfTab:AddToggle("ThirdPerson", {
            Text = "第三人称",
            Default = false
        }):AddKeyPicker("ThirdPersonKey", {
            Default = "V",
            Text = "第三人称",
            Mode = "Toggle",
            SyncToggleState = not shared.Library.IsMobile -- ????
        })
        
        SelfTab:AddSlider("FOV", {
            Text = "扬视角",
            Default = 70,
            Min = 70,
            Max = 120,
            Rounding = 0
        })
        
        SelfTab:AddToggle("NoCamBob", {
            Text = "无晃动",
            Default = false,
            Visible = wax.shared.ExecutorSupport["require"]
        })
    
        SelfTab:AddToggle("NoCamShake", {
            Text = "无抖动",
            Default = false,
            Visible = wax.shared.ExecutorSupport["require"]
        })
    
        SelfTab:AddToggle("NoCutscenes", {
            Text = "无过场动画",
            Default = false,
        })
    
        SelfTab:AddToggle("TranslucentHidingSpot", {
            Text = "透明" .. Script.HidingPlaceName[Script.Floor.Value],
            Default = false
        })
        
        SelfTab:AddSlider("HidingTransparency", {
            Text = "躲藏透明度",
            Default = 0.5,
            Min = 0,
            Max = 1,
            Rounding = 1,
            Compact = true,
        })
    end

    local EffectsTab = SelfTabBox:AddTab("效果") do
        EffectsTab:AddToggle("NoGlitchEffect", {
            Text = "移除故障跳脸",
            Default = false
        })

        EffectsTab:AddToggle("NoVoidEffect", {
            Text = "移除虚空传送",
            Default = false
        })

        EffectsTab:AddToggle("NoSpiderJumpscare", {
            Text = "移除蜘蛛跳杀",
            Default = false
        })
    end
end

--// ESP \\--
Toggles.DoorESP:OnChanged(function(value)
    if value then
        if workspace.CurrentRooms[Script.CurrentRoom]:FindFirstChild("Door") then
            Script.Functions.DoorESP(workspace.CurrentRooms[Script.CurrentRoom])
        end

        if workspace.CurrentRooms[Script.NextRoom]:FindFirstChild("Door") then
            Script.Functions.DoorESP(workspace.CurrentRooms[Script.NextRoom])
        end
    else
        for _, connection in pairs(Script.FeatureConnections.Door) do
            connection:Disconnect()
        end

        for _, esp in pairs(Script.ESPTable.Door) do
            esp.Destroy()
        end
    end
end)

Options.DoorEspColor:OnChanged(function(value)
    for _, esp in pairs(Script.ESPTable.Door) do
        esp.Update({
            FillColor = value,
            OutlineColor = value,
            TextColor = value,
        })
    end
end)

Toggles.ObjectiveESP:OnChanged(function(value)
    if value then
        local currentRoomModel = workspace.CurrentRooms:FindFirstChild(Script.CurrentRoom)
        if currentRoomModel then
            for _, asset in pairs(currentRoomModel:GetDescendants()) do
                task.spawn(Script.Functions.ObjectiveESP, asset)
            end
        end
    else
        for _, esp in pairs(Script.ESPTable.Objective) do
            esp.Destroy()
        end
    end
end)

Options.ObjectiveEspColor:OnChanged(function(value)
    for _, esp in pairs(Script.ESPTable.Objective) do
        esp.Update({
            FillColor = value,
            OutlineColor = value,
            TextColor = value,
        })
    end
end)

Toggles.EntityESP:OnChanged(function(value)
    if value then
        for _, entity in pairs(workspace:GetChildren()) do
            if table.find(Script.EntityTable.Names, entity.Name) then
                Script.Functions.EntityESP(entity)
            end
        end

        local currentRoomModel = workspace.CurrentRooms:FindFirstChild(Script.CurrentRoom)
        if currentRoomModel then
            for _, entity in pairs(currentRoomModel:GetDescendants()) do
                if table.find(Script.EntityTable.SideNames, entity.Name) then
                    Script.Functions.SideEntityESP(entity)
                end
            end
        end
    else
        for _, esp in pairs(Script.ESPTable.Entity) do
            esp.Destroy()
        end
        for _, esp in pairs(Script.ESPTable.SideEntity) do
            esp.Destroy()
        end
    end
end)

Options.EntityEspColor:OnChanged(function(value)
    for _, esp in pairs(Script.ESPTable.Entity) do
        esp.Update({
            FillColor = value,
            OutlineColor = value,
            TextColor = value,
        })
    end
end)

Toggles.ItemESP:OnChanged(function(value)
    if value then
        for _, item in pairs(workspace.Drops:GetChildren()) do
            if Script.Functions.ItemCondition(item) then
                Script.Functions.ItemESP(item, true)
            end
        end

        local currentRoomModel = workspace.CurrentRooms:FindFirstChild(Script.CurrentRoom)
        if currentRoomModel then
            for _, item in pairs(currentRoomModel:GetDescendants()) do
                if Script.Functions.ItemCondition(item) then
                    Script.Functions.ItemESP(item)
                end
            end
        end
    else
        for _, esp in pairs(Script.ESPTable.DroppedItem) do
            esp.Destroy()
        end

        for _, esp in pairs(Script.ESPTable.Item) do
            esp.Destroy()
        end
    end
end)

Options.ItemEspColor:OnChanged(function(value)
    for _, esp in pairs(Script.ESPTable.DroppedItem) do
        esp.Update({
            FillColor = value,
            OutlineColor = value,
            TextColor = value,
        })
    end

    for _, esp in pairs(Script.ESPTable.Item) do
        esp.Update({
            FillColor = value,
            OutlineColor = value,
            TextColor = value,
        })
    end
end)

Toggles.ChestESP:OnChanged(function(value)
    if value then
        local currentRoomModel = workspace.CurrentRooms:FindFirstChild(Script.CurrentRoom)
        if currentRoomModel then
            for _, chest in pairs(currentRoomModel:GetDescendants()) do
                if chest:GetAttribute("Storage") == "ChestBox" or chest.Name == "Toolshed_Small" then
                    Script.Functions.ChestESP(chest)
                end
            end
        end
    else
        for _, esp in pairs(Script.ESPTable.Chest) do
            esp.Destroy()
        end
    end
end)

Options.ChestEspColor:OnChanged(function(value)
    for _, esp in pairs(Script.ESPTable.Chest) do
        esp.Update({
            FillColor = value,
            OutlineColor = value,
            TextColor = value,
        })
    end
end)

Toggles.PlayerESP:OnChanged(function(value)
    if value then
        for _, player in pairs(shared.Players:GetPlayers()) do
            if player == shared.LocalPlayer or not player.Character then continue end
            
            Script.Functions.PlayerESP(player.Character)
        end
    else
        for _, connection in pairs(Script.FeatureConnections.Player) do
            connection:Disconnect()
        end
        for _, esp in pairs(Script.ESPTable.Player) do
            esp.Destroy()
        end
    end
end)

Options.PlayerEspColor:OnChanged(function(value)
    for _, esp in pairs(Script.ESPTable.Player) do
        esp.Update({
            FillColor = value,
            OutlineColor = value,
            TextColor = value,
        })
    end
end)

Toggles.HidingSpotESP:OnChanged(function(value)
    if value then
        local currentRoomModel = workspace.CurrentRooms:FindFirstChild(Script.CurrentRoom)
        if currentRoomModel then
            for _, wardrobe in pairs(currentRoomModel:GetDescendants()) do
                if wardrobe:GetAttribute("LoadModule") == "Wardrobe" or wardrobe:GetAttribute("LoadModule") == "Bed" or wardrobe.Name == "Rooms_Locker" or wardrobe.Name == "RetroWardrobe" then
                    Script.Functions.HidingSpotESP(wardrobe)
                end
            end
        end 
    else
        for _, esp in pairs(Script.ESPTable.HidingSpot) do
            esp.Destroy()
        end
    end
end)

Options.HidingSpotEspColor:OnChanged(function(value)
    for _, esp in pairs(Script.ESPTable.HidingSpot) do
        esp.Update({
            FillColor = value,
            OutlineColor = value,
            TextColor = value,
        })
    end
end)

Toggles.GoldESP:OnChanged(function(value)
    if value then
        local currentRoomModel = workspace.CurrentRooms:FindFirstChild(Script.CurrentRoom)
        if currentRoomModel then
            for _, gold in pairs(currentRoomModel:GetDescendants()) do
                if gold.Name == "GoldPile" then
                    Script.Functions.GoldESP(gold)
                end
            end
        end
    else
        for _, esp in pairs(Script.ESPTable.Gold) do
            esp.Destroy()
        end
    end
end)

Options.GoldEspColor:OnChanged(function(value)
    for _, esp in pairs(Script.ESPTable.Gold) do
        esp.Update({
            FillColor = value,
            OutlineColor = value,
            TextColor = value,
        })
    end
end)

Toggles.GuidingLightESP:OnChanged(function(value)
    if value then
        for _, guidance in pairs(shared.Camera:GetChildren()) do
            if guidance:IsA("BasePart") and guidance.Name == "Guidance" then
                Script.Functions.GuidingLightEsp(guidance)
            end
        end
    else
        for _, esp in pairs(Script.ESPTable.Guiding) do
            esp.Destroy()
        end
    end
end)

Options.GuidingLightEspColor:OnChanged(function(value)
    for _, esp in pairs(Script.ESPTable.Guiding) do
        esp.Update({
            FillColor = value,
            OutlineColor = value,
            TextColor = value,
        })
    end
end)

--// ESP Settings \\--
Toggles.ESPRainbow:OnChanged(function(value)
    shared.ESPLibrary.Rainbow.Set(value)
end)

Toggles.ESPHighlight:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.SetVisible(value, false)
        end
    end
end)

Options.ESPFillTransparency:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ FillTransparency = value })
        end
    end
end)

Options.ESPOutlineTransparency:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ OutlineTransparency = value })
        end
    end
end)

Toggles.ESPDistance:OnChanged(function(value)
    shared.ESPLibrary.Distance.Set(value)
end)

Options.ESPTextSize:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ TextSize = value })
        end
    end
end)

Toggles.ESPTracer:OnChanged(function(value)
    shared.ESPLibrary.Tracers.Set(value)
end)

Options.ESPTracerStart:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ Tracer = { From = value } })
        end
    end
end)

Toggles.ESPArrow:OnChanged(function(value)
    shared.ESPLibrary.Arrows.Set(value)
end)

Options.ESPArrowCenterOffset:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ Arrow = { CenterOffset = value } })
        end
    end
end)

--// Ambient \\--
Options.Brightness:OnChanged(function(value)
    shared.Lighting.Brightness = value
end)

Toggles.Fullbright:OnChanged(function(value)
    if value then
        shared.Lighting.Ambient = Color3.new(1, 1, 1)
    else
        if Script.Alive then
            shared.Lighting.Ambient = workspace.CurrentRooms[shared.LocalPlayer:GetAttribute("CurrentRoom")]:GetAttribute("Ambient")
        else
            shared.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end
end)

Toggles.NoFog:OnChanged(function(value)
    if not shared.Lighting:GetAttribute("FogStart") then shared.Lighting:SetAttribute("FogStart", shared.Lighting.FogStart) end
    if not shared.Lighting:GetAttribute("FogEnd") then shared.Lighting:SetAttribute("FogEnd", shared.Lighting.FogEnd) end

    shared.Lighting.FogStart = value and 0 or shared.Lighting:GetAttribute("FogStart")
    shared.Lighting.FogEnd = value and math.huge or shared.Lighting:GetAttribute("FogEnd")

    local fog = shared.Lighting:FindFirstChildOfClass("Atmosphere")
    if fog then
        if not fog:GetAttribute("Density") then fog:SetAttribute("Density", fog.Density) end

        fog.Density = value and 0 or fog:GetAttribute("Density")
    end
end)

shared.Connect:GiveSignal(shared.Lighting:GetPropertyChangedSignal("Brightness"):Connect(function()
    shared.Lighting.Brightness = Options.Brightness.Value
end))

shared.Connect:GiveSignal(shared.Lighting:GetPropertyChangedSignal("Ambient"):Connect(function()
    if Toggles.Fullbright.Value then
        shared.Lighting.Ambient = Color3.new(1, 1, 1)
    end
end))

shared.Connect:GiveSignal(shared.Lighting:GetPropertyChangedSignal("FogStart"):Connect(function()
    if Toggles.NoFog.Value then
        shared.Lighting.FogStart = 0
    end
end))

shared.Connect:GiveSignal(shared.Lighting:GetPropertyChangedSignal("FogEnd"):Connect(function()
    if Toggles.NoFog.Value then
        shared.Lighting.FogEnd = math.huge
    end
end))

Toggles.AntiLag:OnChanged(function(value)
    for _, object in pairs(workspace.CurrentRooms:GetDescendants()) do
        if object:IsA("BasePart") then
            if not object:GetAttribute("Material") then object:SetAttribute("Material", object.Material) end
            if not object:GetAttribute("Reflectance") then object:SetAttribute("Reflectance", object.Reflectance) end

            object.Material = value and Enum.Material.Plastic or object:GetAttribute("Material")
            object.Reflectance = value and 0 or object:GetAttribute("Reflectance")
        elseif object:IsA("Decal") then
            if not object:GetAttribute("Transparency") then object:SetAttribute("Transparency", object.Transparency) end

            if not table.find(Script.SlotsName, object.Name) then
                object.Transparency = value and 1 or object:GetAttribute("Transparency")
            end
        end
    end

    workspace.Terrain.WaterReflectance = if value then 0 else 1
    workspace.Terrain.WaterTransparency = if value then 0 else 1
    workspace.Terrain.WaterWaveSize = if value then 0 else 0.05
    workspace.Terrain.WaterWaveSpeed = if value then 0 else 8
    shared.Lighting.GlobalShadows = not value
end)

--// Notifier \\--
if Script.IsBackdoor then
    local clientRemote = Script.FloorReplicated.ClientRemote
    local haste_incoming_progress = nil

    shared.Connect:GiveSignal(clientRemote.Haste.Remote.OnClientEvent:Connect(function(value)
        if not value and Toggles.NotifyEntity.Value then
            haste_incoming_progress = Instance.new("Part", shared.Workspace); do
                haste_incoming_progress.Anchored = true
                haste_incoming_progress.CanCollide = false
                haste_incoming_progress.Name = "_internal_mspaint_haste"
                haste_incoming_progress.Transparency = 1
            end

            shared.Notify:Alert({
                Title = "实体",
                Description = "急速入境，请尽快找到杠杆!",
                Time = haste_incoming_progress,

                Warning = true
            })

            repeat task.wait() until not haste_incoming_progress or not Toggles.NotifyEntity.Value or not shared.Character:GetAttribute("Alive")
            if haste_incoming_progress then haste_incoming_progress:Destroy() end
        end
        
        if value and haste_incoming_progress then
            haste_incoming_progress:Destroy()
        end
    end))
end

shared.Connect:GiveSignal(Script.RemotesFolder.HideMonster.OnClientEvent:Connect(function()
    if Script.IsBackdoor or Script.IsRooms or Script.IsRetro then return end

    local hideTime = Script.Functions.CalculateHideTime(Script.CurrentRoom) or math.huge
    local finalTime = tick() + math.round(hideTime)

    if Toggles.NotifyHideTime.Value and hideTime ~= math.huge then
        while shared.Character:GetAttribute("Hiding") and Script.Alive and not shared.Library.Unloaded and Toggles.NotifyHideTime.Value do
            local remainingTime = math.max(0, finalTime - tick())

            if wax.shared.ExecutorSupport["firesignal"] then
                if Options.NotifyStyle.Value == "Doors" then
                    firesignal(Script.RemotesFolder.Caption.OnClientEvent, string.format("%.1f", remainingTime))
                elseif Options.NotifyStyle.Value == "Linoria" then
                    Script.Functions.Captions(string.format("%.1f", remainingTime))
                end

            else
                Script.Functions.Captions(string.format("%.1f", remainingTime))
            end

            task.wait()
        end
    end
end))

Options.NotifyVolume:OnChanged(function(value)
    shared.NotifyVolume = value
end)

Options.NotifySide:OnChanged(function(value)
    shared.Library.NotifySide = value
end)

Options.NotifyStyle:OnChanged(function(value)
    shared.NotifyStyle = value
end)

Toggles.NoCutscenes:OnChanged(function(value)
    if Script.MainGame then
        local cutscenes = Script.MainGame:FindFirstChild("Cutscenes", true)
        if cutscenes then
            for _, cutscene in pairs(cutscenes:GetChildren()) do
                if table.find(Script.CutsceneExclude, cutscene.Name) then continue end
    
                local defaultName = cutscene.Name:gsub("_", "")
                cutscene.Name = value and "_" .. defaultName or defaultName
            end
        end
    end

    if Script.FloorReplicated then
        for _, cutscene in pairs(Script.FloorReplicated:GetChildren()) do
            if not cutscene:IsA("ModuleScript") or table.find(Script.CutsceneExclude, cutscene.Name) then continue end

            local defaultName = cutscene.Name:gsub("_", "")
            cutscene.Name = value and "_" .. defaultName or defaultName
        end
    end
end)

Toggles.TranslucentHidingSpot:OnChanged(function(value)
    if value and shared.Character:GetAttribute("Hiding") then
        for _, obj in pairs(workspace.CurrentRooms:GetDescendants()) do
            if not obj:IsA("ObjectValue") and obj.Name ~= "HiddenPlayer" then continue end

            if obj.Value == shared.Character then
                task.spawn(function()
                    local affectedParts = {}
                    for _, v in pairs(obj.Parent:GetChildren()) do
                        if not v:IsA("BasePart") then continue end

                        v.Transparency = Options.HidingTransparency.Value
                        table.insert(affectedParts, v)
                    end

                    repeat task.wait()
                        for _, part in pairs(affectedParts) do
                            task.wait()
                            part.Transparency = Options.HidingTransparency.Value
                        end
                    until not shared.Character:GetAttribute("Hiding") or not Toggles.TranslucentHidingSpot.Value
                    
                    for _, v in pairs(affectedParts) do
                        v.Transparency = 0
                    end
                end)

                break
            end
        end
    end
end)

--// Self \\--
Toggles.NoGlitchEffect:OnChanged(function(value)
    if not Script.EntityModules then return end
    local module = Script.EntityModules:FindFirstChild("Glitch") or Script.EntityModules:FindFirstChild("_Glitch")

    if module then
        module.Name = if value then "_Glitch" else "Glitch"
    end
end)

Toggles.NoVoidEffect:OnChanged(function(value)
    if not Script.EntityModules then return end
    local module = Script.EntityModules:FindFirstChild("Void") or Script.EntityModules:FindFirstChild("_Void")

    if module then
        module.Name = if value then "_Void" else "Void"
    end
end)

Toggles.NoSpiderJumpscare:OnChanged(function(value)
    if not Script.MainGame then return end
    local module = Script.MainGame:FindFirstChild("SpiderJumpscare", true) or Script.MainGame:FindFirstChild("_SpiderJumpscare", true)

    if module then
        module.Name = if value then "_SpiderJumpscare" else "SpiderJumpscare"
    end
end)
end)() end,
    [24] = function()local wax,script,require=ImportGlobals(24)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
local Tabs = Script.Tabs

---// Main \\--
local SniperGroupbox = Tabs.Main:AddLeftGroupbox("Sniper") do
    SniperGroupbox:AddToggle("ElevatorSniper", {
        Text = "Elevator Sniper",
        Default = false
    })

    SniperGroupbox:AddDropdown("ElevatorSniperTarget", {
        SpecialType = "Player",
        Multi = false,

        Text = "Target"
    })
end

local OtherGroupbox = Tabs.Main:AddRightGroupbox("Other") do
    OtherGroupbox:AddToggle("Twerk", {
        Text = "Twerk",
        Default = false
    })

    OtherGroupbox:AddToggle("LoopAchievements", {
        Text = "Loop Achievements",
        Default = false
    })

    OtherGroupbox:AddSlider("LoopAchievementsSpeed", {
        Text = "Speed",
        Default = 0.05,
        Min = 0.05,
        Max = 1,
        Rounding = 2,
        Compact = true
    })

    OtherGroupbox:AddDivider()

    OtherGroupbox:AddButton("Create Retro Elevator", function()
        local data = {
            ["FriendsOnly"] = Script.CreateElevatorFrame.Settings.FriendsOnly:GetAttribute("Setting"),
            ["Destination"] = "Hotel",
            ["Mods"] = {
                "RetroMode"
            },
            ["MaxPlayers"] = Script.CreateElevatorFrame.Settings.MaxPlayers.Toggle.Text
        }

        Script.CreateElevator:FireServer(data)
    end)
end

if wax.shared.ExecutorSupport["_SupportsFileSystem"] then
    local PresetGroupbox = Tabs.Main:AddLeftGroupbox("Presets") do
        PresetGroupbox:AddInput('Elevator_PresetName', { Text = 'Preset name' })
        PresetGroupbox:AddButton({
            Text = "Create Preset",
            Func = function()
                if Script.PresetHelper.IsFile(Options.Elevator_PresetName.Value .. ".json") then
                    shared.Notify:Alert({
                        Description = "Preset already exists!"
                    })
                    return
                end
    
                local presetData = {
                    Floor = "Hotel",
                    MaxPlayers = 1,
                    Modifiers = {},
                    FriendsOnly = true
                }
    
                for _, floor in pairs(Script.CreateElevatorFrame.Floors:GetChildren()) do
                    if floor:IsA("TextLabel") and floor.Visible then
                        presetData.Floor = floor.Name
                        break
                    end
                end
    
                for _, modifier in pairs(Script.CreateElevatorFrame.Modifiers:GetChildren()) do
                    if modifier:GetAttribute("Enabled") then
                        table.insert(presetData.Modifiers, modifier.Name)    
                    end
                end
    
                presetData.MaxPlayers = tonumber(Script.CreateElevatorFrame.Settings.MaxPlayers.Toggle.Text)
                presetData.FriendsOnly = Script.CreateElevatorFrame.Settings.FriendsOnly:GetAttribute("Setting")
    
                Script.Functions.CreatePreset(Options.Elevator_PresetName.Value, presetData)
                shared.Notify:Alert({
                    Description = 'Created elevator preset "' .. Options.Elevator_PresetName.Value .. '" with ' .. #presetData.Modifiers .. " modifiers"
                })
    
                Script.Functions.LoadPresets()
                Options.Elevator_PresetList:SetValues(Script.ElevatorPresets)
                Options.Elevator_PresetList:SetValue(nil)
            end
        })
    
        PresetGroupbox:AddDivider()
    
        PresetGroupbox:AddDropdown('Elevator_PresetList', { Text = 'Preset list', Values = Script.ElevatorPresets, AllowNull = true })
        PresetGroupbox:AddButton('Load Preset', function()
            Script.Functions.LoadPreset(Options.Elevator_PresetList.Value)
        end)
    
        PresetGroupbox:AddButton('Override Preset', function()
            local presetData = {
                Floor = "Hotel",
                MaxPlayers = 1,
                Modifiers = {},
                FriendsOnly = true
            }
    
            for _, floor in pairs(Script.CreateElevatorFrame.Floors:GetChildren()) do
                if floor:IsA("TextLabel") and floor.Visible then
                    presetData.Floor = floor.Name
                    break
                end
            end
    
            for _, modifier in pairs(Script.CreateElevatorFrame.Modifiers:GetChildren()) do
                if modifier:GetAttribute("Enabled") then
                    table.insert(presetData.Modifiers, modifier.Name)    
                end
            end
    
            presetData.MaxPlayers = tonumber(Script.CreateElevatorFrame.Settings.MaxPlayers.Toggle.Text)
            presetData.FriendsOnly = Script.CreateElevatorFrame.Settings.FriendsOnly:GetAttribute("Setting")
    
            shared.Notify:Alert({
                Description = "Overrided preset: " .. Options.Elevator_PresetList.Value
            })
    
            Script.Functions.CreatePreset(Options.Elevator_PresetList.Value, presetData)
            
            Script.Functions.LoadPresets()
            Options.Elevator_PresetList:SetValues(Script.ElevatorPresets)
            Options.Elevator_PresetList:SetValue(nil)
        end)
    
        PresetGroupbox:AddButton('Delete Preset', function()
            if not Script.PresetHelper.IsFile(Options.Elevator_PresetList.Value .. ".json") then
                shared.Notify:Alert({
                    Description = "Preset does not exist!"
                })
                return
            end
    
            local success, err = pcall(function()
                Script.PresetHelper.DeleteFile(Options.Elevator_PresetList.Value .. ".json")
            end)
    
            if not success then
                shared.Notify:Alert({
                    Description = "Failed to delete preset: " .. Options.Elevator_PresetList.Value
                })
                return
            end
    
            shared.Notify:Alert({
                Description = "Deleted preset: " .. Options.Elevator_PresetList.Value
            })
            
            Script.Functions.LoadPresets()
            Options.Elevator_PresetList:SetValues(Script.ElevatorPresets)
            Options.Elevator_PresetList:SetValue(nil)
        end)
    
        PresetGroupbox:AddButton('Refresh Presets', function()
            Script.Functions.LoadPresets()
            Options.Elevator_PresetList:SetValues(Script.ElevatorPresets)
            Options.Elevator_PresetList:SetValue(nil)
        end)
    
    end
end

--// Sniper \\--
shared.Connect:GiveSignal(shared.RunService.RenderStepped:Connect(function()
    if Toggles.ElevatorSniper.Value and Options.ElevatorSniperTarget.Value then
        local targetCharacter = workspace:FindFirstChild(Options.ElevatorSniperTarget.Value)
        if not targetCharacter then return end

        local targetElevatorID = targetCharacter:GetAttribute("InGameElevator")
        local currentElevatorID = shared.Character:GetAttribute("InGameElevator")
        if currentElevatorID == targetElevatorID then return end

        if targetElevatorID ~= nil then    
            local targetElevator = Script.LobbyElevators:FindFirstChild("LobbyElevator-" .. targetElevatorID) 

            if not targetElevator then
                for _, elevator in pairs(Script.LobbyElevators:GetChildren()) do
                    if elevator.Name:match(Options.ElevatorSniperTarget.Value) then
                        targetElevator = elevator
                    end
                end
            end

            if targetElevator then
                Script.RemotesFolder.ElevatorJoin:FireServer(targetElevator)
            end
        elseif currentElevatorID ~= nil then
            Script.RemotesFolder.ElevatorExit:FireServer()
        end
    end
end))

--// Other \\--
Toggles.LoopAchievements:OnChanged(function(value)
    if value then
        Script.Functions.LoopAchievements()
    end
end)

Toggles.Twerk:OnChanged(function(value)
    shared.Twerk:Set(value)
end)
end)() end,
    [26] = function()local wax,script,require=ImportGlobals(26)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
local Tabs = Script.Tabs

--// Exploits \\--
local AimbotGroupBox = Tabs.Exploits:AddLeftGroupbox("Aimbot") do
    AimbotGroupBox:AddToggle("EnableAimbot", {
        Text = "Enable Aimbot",
        Default = false
    }):AddKeyPicker("EnableAimbotKey", {
        Mode = shared.Library.IsMobile and "Toggle" or "Hold",
        Default = "MB2",
        Text = "Enable Aimbot",
        SyncToggleState = shared.Library.IsMobile
    })

    AimbotGroupBox:AddToggle("AimbotSmooth", {
        Text = "Enable Aimbot Smoothness",
        Default = false
    })

    AimbotGroupBox:AddSlider("AimbotSmoothness", {
        Text = "Smoothness",
        Default = 20,
        Min = 0,
        Max = 100,
        Rounding = 0,
        Compact = true
    })

    AimbotGroupBox:AddDropdown("AimbotTargetPart", {
        AllowNull = false,
        Values = {"Head", "HumanoidRootPart"},
        Default = "Head",
        Multi = false,

        Text = "Target Part"
    })

    AimbotGroupBox:AddDropdown("AimbotClosestMethod", {
        AllowNull = false,
        Values = {"Mouse", "Character"},
        Default = "Mouse",
        Multi = false,

        Text = "Get Closest From"
    })

    AimbotGroupBox:AddDivider()

    AimbotGroupBox:AddToggle("AimbotTeam", {
        Text = "Team Check",
        Default = false
    })
    AimbotGroupBox:AddToggle("AimbotWall", {
        Text = "Wall Check",
        Default = false
    })
end

local TrollingGroupBox = Tabs.Exploits:AddRightGroupbox("Trolling") do
    TrollingGroupBox:AddToggle("Twerk", {
        Text = "Twerk",
        Default = false
    })
end


Toggles.Twerk:OnChanged(function(value)
    shared.Twerk:Set(value)
end)
end)() end,
    [27] = function()local wax,script,require=ImportGlobals(27)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
local Tabs = Script.Tabs

Script.LastVoidValue = workspace.FallenPartsDestroyHeight
Script.LastSpeed = if shared.Humanoid then shared.Humanoid.WalkSpeed else 16

--// Main \\--
local PlayerGroupBox = Tabs.Main:AddLeftGroupbox("Player") do
    PlayerGroupBox:AddToggle("SpeedHack", {
        Text = "Speed Hack",
        Default = false
    })

    PlayerGroupBox:AddSlider("WalkSpeed", {
        Text = "Walk Speed",
        Default = 16,
        Min = 0,
        Max = 100,
        Rounding = 0,
        Compact = true
    })

    PlayerGroupBox:AddToggle("JumpPowerHack", {
        Text = "Jump Power Hack",
        Default = false
    })

    PlayerGroupBox:AddSlider("JumpPower", {
        Text = "Jump Power",
        Default = 50,
        Min = 0,
        Max = 200,
        Rounding = 0,
        Compact = true
    })

    PlayerGroupBox:AddDivider()

    PlayerGroupBox:AddToggle("InstaInteract", {
        Text = "Instant Interact",
        Default = false
    })

    PlayerGroupBox:AddToggle("DisableRobloxVoid", {
        Text = "Disable Roblox Void",
        Default = false
    })

    PlayerGroupBox:AddDivider()

    PlayerGroupBox:AddToggle("Noclip", {
        Text = "Noclip",
        Default = false
    }):AddKeyPicker("NoclipKey", {
        Mode = "Toggle",
        Default = "N",
        Text = "Noclip",
        SyncToggleState = true
    })

    PlayerGroupBox:AddToggle("Fly", {
        Text = "Fly",
        Default = false
    }):AddKeyPicker("FlyKey", {
        Mode = "Toggle",
        Default = "F",
        Text = "Fly",
        SyncToggleState = true
    })
    
    PlayerGroupBox:AddSlider("FlySpeed", {
        Text = "Fly Speed",
        Default = 16,
        Min = 0,
        Max = 100,
        Rounding = 0,
        Compact = true
    })
end

--// Player \\--
Toggles.SpeedHack:OnChanged(function(value)
    if not shared.Humanoid then return end

    if value then
        Script.LastSpeed = shared.Humanoid.WalkSpeed
    end

    shared.Humanoid.WalkSpeed = if value then Options.WalkSpeed.Value else Script.LastSpeed
end)

Toggles.JumpPowerHack:OnChanged(function(value)
    if not shared.Humanoid then return end

    if value then
        Script.LastJumpPower = if shared.Humanoid.UseJumpPower then shared.Humanoid.JumpPower else shared.Humanoid.JumpHeight
    end

    if shared.Humanoid.UseJumpPower then
        shared.Humanoid.JumpPower = if value then Options.JumpPower.Value else Script.LastJumpPower
    else
        shared.Humanoid.JumpHeight = if value then Options.JumpPower.Value else Script.LastJumpPower
    end
end)

Toggles.DisableRobloxVoid:OnChanged(function(value)
    if value then
        workspace.FallenPartsDestroyHeight = (0 / 0)
    else
        workspace.FallenPartsDestroyHeight = Script.LastVoidValue
    end
end)

Toggles.Noclip:OnChanged(function(value)
    if not shared.Character then return end

    for _, part in pairs(shared.Character:GetDescendants()) do
        if not part:IsA("BasePart") then continue end
        part.CanCollide = value
    end
end)

Toggles.Fly:OnChanged(function(value)
    if not shared.Fly.FlyBody then shared.Fly:Setup() end

    shared.Fly:Set(value)
end)

Options.FlySpeed:OnChanged(function(value)
    shared.Fly:SetSpeed(value)
end)
end)() end,
    [28] = function()local wax,script,require=ImportGlobals(28)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
local Tabs = Script.Tabs

--// Visuals \\--
local ESPTabBox = Tabs.Visuals:AddLeftTabbox() do
    local ESPTab = ESPTabBox:AddTab("ESP") do
        ESPTab:AddToggle("PlayerESP", {
            Text = "Player",
            Default = false,
        }):AddColorPicker("PlayerEspColor", {
            Default = Color3.new(1, 1, 1),
        })
    end

    local ESPSettingsTab = ESPTabBox:AddTab("Settings") do
        ESPSettingsTab:AddToggle("ESPTeamColor", {
            Text = "Team Color",
            Default = false,
        })

        ESPSettingsTab:AddToggle("ESPRainbow", {
            Text = "Rainbow ESP",
            Default = false,
        })

        ESPSettingsTab:AddDivider()

        ESPSettingsTab:AddToggle("ESPHighlight", {
            Text = "Enable Highlight",
            Default = true
        })

        ESPSettingsTab:AddSlider("ESPFillTransparency", {
            Text = "Fill Transparency",
            Default = 0.75,
            Min = 0,
            Max = 1,
            Rounding = 2
        })
    
        ESPSettingsTab:AddSlider("ESPOutlineTransparency", {
            Text = "Outline Transparency",
            Default = 0,
            Min = 0,
            Max = 1,
            Rounding = 2
        })

        ESPSettingsTab:AddDivider()

        ESPSettingsTab:AddToggle("ESPDistance", {
            Text = "Show Distance",
            Default = true
        })
    
        ESPSettingsTab:AddSlider("ESPTextSize", {
            Text = "Text Size",
            Default = 22,
            Min = 16,
            Max = 26,
            Rounding = 0
        })
    
        ESPSettingsTab:AddDivider()

        ESPSettingsTab:AddToggle("ESPTracer", {
            Text = "启用示踪剂",
            Default = false
        })

        ESPSettingsTab:AddDropdown("ESPTracerStart", {
            AllowNull = false,
            Values = {"Bottom", "Center", "Top", "Mouse"},
            Default = "Bottom",
            Multi = false,

            Text = "跟踪器开始位置"
        })

        ESPSettingsTab:AddDivider()

        ESPSettingsTab:AddToggle("ESPArrow", {
            Text = "启用箭头",
            Default = false
        })

        ESPSettingsTab:AddSlider("ESPArrowCenterOffset", {
            Text = "箭头中心偏移",
            Default = 300,
            Min = 0,
            Max = 500,
            Rounding = 0
        })
    end
end

local AmbientGroupBox = Tabs.Visuals:AddRightGroupbox("Ambient") do
    AmbientGroupBox:AddToggle("Fullbright", {
        Text = "Fullbright",
        Default = false,
    })

    AmbientGroupBox:AddToggle("NoFog", {
        Text = "No Fog",
        Default = false,
    })

    AmbientGroupBox:AddToggle("AntiLag", {
        Text = "Anti-Lag",
        Default = false,
    })
end

--// ESP \\--
Toggles.PlayerESP:OnChanged(function(value)
    if value then
        for _, player in pairs(shared.Players:GetPlayers()) do
            if not (player ~= shared.LocalPlayer and player.Character) then continue end
            
            Script.Functions.PlayerESP(player)
        end
    else
        for _, connection in pairs(Script.FeatureConnections.Player) do
            connection:Disconnect()
        end
        for _, esp in pairs(Script.ESPTable.Player) do
            esp.Destroy()
        end
    end
end)

Options.PlayerEspColor:OnChanged(function(value)
    if Toggles.ESPTeamColor then return end
    for _, esp in pairs(Script.ESPTable.Player) do
        esp.Update({
            FillColor = value,
            OutlineColor = value,
            TextColor = value,
        })
    end
end)

--// ESP Settings \\--
Toggles.ESPTeamColor:OnChanged(function(value)
    for player, esp in pairs(Script.ESPTable.Player) do
        local color = if value then player.TeamColor.Color else Options.PlayerEspColor.Value
        esp.Update({
            FillColor = color,
            OutlineColor = color,
            TextColor = color,
        })
    end
end)

Toggles.ESPRainbow:OnChanged(function(value)
    shared.ESPLibrary.Rainbow.Set(value)
end)

Toggles.ESPHighlight:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.SetVisible(value, false)
        end
    end
end)

Options.ESPFillTransparency:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ FillTransparency = value })
        end
    end
end)

Options.ESPOutlineTransparency:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ OutlineTransparency = value })
        end
    end
end)

Toggles.ESPDistance:OnChanged(function(value)
    shared.ESPLibrary.Distance.Set(value)
end)

Options.ESPTextSize:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ TextSize = value })
        end
    end
end)

Toggles.ESPTracer:OnChanged(function(value)
    shared.ESPLibrary.Tracers.Set(value)
end)

Options.ESPTracerStart:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ Tracer = { From = value } })
        end
    end
end)

Toggles.ESPArrow:OnChanged(function(value)
    shared.ESPLibrary.Arrows.Set(value)
end)

Options.ESPArrowCenterOffset:OnChanged(function(value)
    for _, espType in pairs(Script.ESPTable) do
        for _, esp in pairs(espType) do
            esp.Update({ Arrow = { CenterOffset = value } })
        end
    end
end)

--// Ambient \\--
Toggles.Fullbright:OnChanged(function(value)
    if not value then Script.LastBright = shared.Lighting.Brightness end

    shared.Lighting.Brightness = if value then 2 else shared.Lighting.Brightness
    shared.Lighting.GlobalShadows = value
end)

Toggles.NoFog:OnChanged(function(value)
    if not shared.Lighting:GetAttribute("FogStart") then shared.Lighting:SetAttribute("FogStart", shared.Lighting.FogStart) end
    if not shared.Lighting:GetAttribute("FogEnd") then shared.Lighting:SetAttribute("FogEnd", shared.Lighting.FogEnd) end

    shared.Lighting.FogStart = value and 0 or shared.Lighting:GetAttribute("FogStart")
    shared.Lighting.FogEnd = value and math.huge or shared.Lighting:GetAttribute("FogEnd")

    local fog = shared.Lighting:FindFirstChildOfClass("Atmosphere")
    if fog then
        if not fog:GetAttribute("Density") then fog:SetAttribute("Density", fog.Density) end

        fog.Density = value and 0 or fog:GetAttribute("Density")
    end
end)

shared.Connect:GiveSignal(shared.Lighting:GetPropertyChangedSignal("Brightness"):Connect(function()
    if Toggles.Fullbright.Value then
        shared.Lighting.Brightness = 2
    end
end))

shared.Connect:GiveSignal(shared.Lighting:GetPropertyChangedSignal("FogStart"):Connect(function()
    if Toggles.NoFog.Value then
        shared.Lighting.FogStart = 0
    end
end))

shared.Connect:GiveSignal(shared.Lighting:GetPropertyChangedSignal("FogEnd"):Connect(function()
    if Toggles.NoFog.Value then
        shared.Lighting.FogEnd = math.huge
    end
end))

shared.Connect:GiveSignal(shared.Lighting:GetPropertyChangedSignal("GlobalShadows"):Connect(function()
    if Toggles.Fullbright.Value then
        shared.Lighting.GlobalShadows = Toggles.Fullbright.Value
    end
end))

Toggles.AntiLag:OnChanged(function(value)
    for _, object in pairs(workspace:GetDescendants()) do
        if object:IsA("BasePart") then
            if not object:GetAttribute("Material") then object:SetAttribute("Material", object.Material) end
            if not object:GetAttribute("Reflectance") then object:SetAttribute("Reflectance", object.Reflectance) end

            object.Material = value and Enum.Material.Plastic or object:GetAttribute("Material")
            object.Reflectance = value and 0 or object:GetAttribute("Reflectance")
        elseif object:IsA("Decal") then
            if not object:GetAttribute("Transparency") then object:SetAttribute("Transparency", object.Transparency) end
            object.Transparency = value and 1 or object:GetAttribute("Transparency")
        end
    end

    workspace.Terrain.WaterReflectance = if value then 0 else 1
    workspace.Terrain.WaterTransparency = if value then 0 else 1
    workspace.Terrain.WaterWaveSize = if value then 0 else 0.05
    workspace.Terrain.WaterWaveSpeed = if value then 0 else 8
    shared.Lighting.GlobalShadows = not value
end)
end)() end,
    [31] = function()local wax,script,require=ImportGlobals(31)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

--// Functions \\--
function Script.Functions.SetupCharacterConnection(newCharacter)
    shared.Character = newCharacter
    shared.Humanoid = shared.Character:WaitForChild("Humanoid")

    Script.System = shared.Character:WaitForChild("System")
    Script.Event = Script.System:WaitForChild("Event")
    Script.Action = Script.System:WaitForChild("Action")

    Script.Functions.SetupCharacterDeathConnection(newCharacter)

    if shared.Humanoid then
        Script.LastSpeed = shared.Humanoid.WalkSpeed
        Script.LastJumpPower = shared.Humanoid.UseJumpPower and shared.Humanoid.JumpPower or shared.Humanoid.JumpHeight

        if Toggles.SpeedHack.Value then shared.Humanoid.WalkSpeed = Options.WalkSpeed.Value end
        
        if Toggles.JumpPowerHack.Value then
            if shared.Humanoid.UseJumpPower then
                shared.Humanoid.JumpPower = Options.JumpPower.Value
            else
                shared.Humanoid.JumpHeight = Options.JumpPower.Value
            end
        end

        shared.Twerk:Setup()
        if Toggles.Twerk.Value then
            shared.Twerk:Enable()
        end

        shared.Connect:GiveSignal(shared.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
            if shared.Humanoid.WalkSpeed ~= Options.WalkSpeed.Value then
                Script.LastSpeed = shared.Humanoid.WalkSpeed
                if Toggles.SpeedHack.Value then shared.Humanoid.WalkSpeed = Options.WalkSpeed.Value end
            end
        end))

        shared.Connect:GiveSignal(shared.Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
            if not shared.Humanoid.UseJumpPower then return end
            if shared.Humanoid.JumpPower ~= Options.JumpPower.Value then
                Script.LastJumpPower = shared.Humanoid.JumpPower
                if Toggles.JumpPowerHack.Value then shared.Humanoid.JumpPower = Options.JumpPower.Value end
            end
        end))
        shared.Connect:GiveSignal(shared.Humanoid:GetPropertyChangedSignal("JumpHeight"):Connect(function()
            if shared.Humanoid.UseJumpPower then return end
            if shared.Humanoid.JumpHeight ~= Options.JumpPower.Value then
                Script.LastJumpPower = shared.Humanoid.JumpHeight
                if Toggles.JumpPowerHack.Value then shared.Humanoid.JumpHeight = Options.JumpPower.Value end
            end
        end))
    end

    if Toggles.Godmode.Value then
        Script.DidGodmode = true

        repeat task.wait() until #Script.Map.Floor:GetChildren() > 0
        
        Script.Event:FireServer("FallDamage", {
            Sliding = false,
            OriginalDamage = (0/0),
            Sound = "LR^SS",
            Softened = true,
            Broken = false,
            Model = Script.Map.Floor:FindFirstChildOfClass("Model"),
            Range = 19,
            Damage = (0/0)
        })
    end

    if Toggles.NoFall.Value then
        local fallDamage = shared.Character:WaitForChild("FallDamage")
        if fallDamage then
            fallDamage.Enabled = false
        end
    end

    shared.RootPart = shared.Character:WaitForChild("HumanoidRootPart")
end

function Script.Functions.SetupCharacterDeathConnection(newCharacter)
    shared.Connect:GiveSignal(newCharacter:WaitForChild("Humanoid").Died:Connect(function()
        if Toggles.AutoRespawn.Value then
            Script.Functions.Respawn()
        end
    end))
end

function Script.Functions.SetupLightingConnection()
    shared.Connect:GiveSignal(shared.Lighting:GetPropertyChangedSignal("Ambient"):Connect(function()
        if shared.Lighting.Ambient ~= Script.CurrentAmbient and shared.Lighting.Ambient ~= Color3.new(1, 1, 1) then
            Script.CurrentAmbient = shared.Lighting.Ambient
        end

        if Toggles.Fullbright.Value then
            shared.Lighting.Ambient = Color3.new(1, 1, 1)
        end
    end))

    shared.Connect:GiveSignal(shared.Lighting:GetPropertyChangedSignal("ColorShift_Bottom"):Connect(function()
        if shared.Lighting.ColorShift_Bottom ~= Script.CurrentColorShift_Bottom and shared.Lighting.ColorShift_Bottom ~= Color3.new(1, 1, 1) then
            Script.CurrentColorShift_Bottom = shared.Lighting.ColorShift_Bottom
        end

        if Toggles.Fullbright.Value then
            shared.Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
        end
    end))

    shared.Connect:GiveSignal(shared.Lighting:GetPropertyChangedSignal("ColorShift_Top"):Connect(function()
        if shared.Lighting.ColorShift_Top ~= Script.CurrentColorShift_Top and shared.Lighting.ColorShift_Top ~= Color3.new(1, 1, 1) then
            Script.CurrentColorShift_Top = shared.Lighting.ColorShift_Top
        end

        if Toggles.Fullbright.Value then
            shared.Lighting.ColorShift_Top = Color3.new(1, 1, 1)
        end
    end))

    if shared.Lighting:FindFirstChild("FoggyDay_Atmosphere") then
        shared.Connect:GiveSignal(shared.Lighting["FoggyDay_Atmosphere"]:GetPropertyChangedSignal("Density"):Connect(function()
            if shared.Lighting["FoggyDay_Atmosphere"].Density ~= Script.CurrentFoggyDayDensity and shared.Lighting["FoggyDay_Atmosphere"].Density ~= 0 then
                Script.CurrentFoggyDayDensity = shared.Lighting["FoggyDay_Atmosphere"].Density
            end

            if Toggles.NoFog.Value then
                shared.Lighting["FoggyDay_Atmosphere"].Density = 0
            end
        end))
    end

    if Toggles.Fullbright.Value then
        shared.Lighting.Ambient = Color3.new(1, 1, 1)
        shared.Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
        shared.Lighting.ColorShift_Top = Color3.new(1, 1, 1)
    end

    if Toggles.NoFog.Value then
        shared.Lighting.FogEnd = 9e9

        if shared.Lighting:FindFirstChild("FoggyDay_Atmosphere") then
            shared.Lighting["FoggyDay_Atmosphere"].Density = 0
        end
    end
end

function Script.Functions.SetupBloxstrapRPCConnection()
    if not wax.shared.BloxstrapRPC then return end

    shared.Connect:GiveSignal(Script.CurrentDay:GetPropertyChangedSignal("Text"):Connect(function()
        Script.Functions.UpdateBloxstrapRPC()
    end))

    Script.Functions.UpdateBloxstrapRPC()
end

function Script.Functions.IsLoaded(model)
    return model.PrimaryPart ~= nil
end

function Script.Functions.SetupChild(child, options)
    if not Script.Functions.IsLoaded(child) then
        child:GetPropertyChangedSignal("PrimaryPart"):Wait()
    end

    repeat task.wait() until options["Condition"]() or shared.Library.Unloaded
    if shared.Library.Unloaded then return end

    local esp = Script.Functions[options["ESPfunction"]](child)

    local shouldDestroyESP = false
    if Script.Functions.IsLoaded(child) then
        task.spawn(function()
            child:GetPropertyChangedSignal("PrimaryPart"):Wait()
            shouldDestroyESP = true
        end)

        task.spawn(function()
            repeat task.wait() until shouldDestroyESP or not options["Condition"]() or shared.Library.Unloaded
            shouldDestroyESP = true
        end)
    end
    
    repeat task.wait() until shouldDestroyESP
    esp.Destroy()

    if shared.Library.Unloaded then return end
    Script.Functions.SetupChild(child, options)
end

function Script.Functions.SetupExploitInfModulesConnection()
    shared.Connect:GiveSignal(Script.PlayerStats:WaitForChild("Energy").Value:GetPropertyChangedSignal("Text"):Connect(function()
        if Toggles.InfiniteEnergy.Value and not Toggles.Godmode.Value then
            Script.Event:FireServer("DecreaseStat", {
                Stats = {
                    Energy = -100
                }
            })
        end
    end))

    shared.Connect:GiveSignal(Script.PlayerStats:WaitForChild("Hunger").Value:GetPropertyChangedSignal("Text"):Connect(function()
        if Toggles.InfiniteHunger.Value and not Toggles.Godmode.Value then
            Script.Event:FireServer("DecreaseStat", {
                Stats = {
                    Hunger = -100
                }
            })
        end
    end))
end

function Script.Functions.SetupOtherPlayerConnection()
    for _, player in pairs(shared.Players:GetPlayers()) do
        if player == shared.LocalPlayer then continue end

        task.spawn(Script.Functions.SetupChild, player.Character, {
            Condition = function()
                return Toggles.PlayerESP and Toggles.PlayerESP.Value
            end,
            ESPfunction = "PlayerESP",
            Descendant = player.Character.Parent
        })
    end

    shared.Connect:GiveSignal(shared.Players.PlayerAdded:Connect(function(player)
        if player == shared.LocalPlayer then return end

        task.spawn(Script.Functions.SetupChild, player.Character, {
            Condition = function()
                return Toggles.PlayerESP and Toggles.PlayerESP.Value
            end,
            ESPfunction = "PlayerESP",
            Descendant = player.Character.Parent
        })
    end))
end


function Script.Functions.SetupEmployeeConnection()
    for _, employee in ipairs(Script.Employees:GetChildren()) do
        task.spawn(Script.Functions.SetupChild, employee, {
            Condition = function()
                return Toggles.EmployeeESP and Toggles.EmployeeESP.Value
            end,
            ESPfunction = "EmployeeESP",
            Descendant = Script.Employees
        })
    end

    shared.Connect:GiveSignal(Script.Employees.ChildAdded:Connect(function(employee)
        task.spawn(Script.Functions.SetupChild, employee, {
            Condition = function()
                return Toggles.EmployeeESP and Toggles.EmployeeESP.Value
            end,
            ESPfunction = "EmployeeESP",
            Descendant = Script.Employees
        })
    end))
end


function Script.Functions.SetupItemConnection()
    for _, item in ipairs(Script.Items:GetChildren()) do
        task.spawn(Script.Functions.SetupChild, item, {
            Condition = function()
                return Toggles.ItemESP and Toggles.ItemESP.Value
            end,
            ESPfunction = "ItemESP",
            Descendant = Script.Items
        })
    end

    shared.Connect:GiveSignal(Script.Items.ChildAdded:Connect(function(item)
        task.spawn(Script.Functions.SetupChild, item, {
            Condition = function()
                return Toggles.ItemESP and Toggles.ItemESP.Value
            end,
            ESPfunction = "ItemESP",
            Descendant = Script.Items
        })
    end))
end
end)() end,
    [32] = function()local wax,script,require=ImportGlobals(32)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
local ESPLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/MS-ESP/refs/heads/main/source.lua"))()
shared.ESPLibrary = ESPLibrary

type ESP = {
    Color: Color3,
    IsEntity: boolean,
    IsDoubleDoor: boolean,
    Object: Instance,
    Offset: Vector3,
    Text: string,
    TextParent: Instance,
    Type: string
}

function Script.Functions.ESP(args: ESP)
    if not args.Object then return Script.Functions.Warn("ESP Object is nil") end

    local ESPManager = {
        Object = args.Object,
        Text = args.Text or "No Text",
        Color = args.Color or Color3.new(),
        Offset = args.Offset or Vector3.zero,
        IsEntity = args.IsEntity or false,
        IsDoubleDoor = args.IsDoubleDoor or false,
        Type = args.Type or "None",
        OnDestroy = args.OnDestroy or nil,

        Invisible = false,
        Humanoid = nil
    }

    if ESPManager.IsEntity and ESPManager.Object.PrimaryPart then
        if ESPManager.Object.PrimaryPart.Transparency == 1 then
            ESPManager.Invisible = true
            ESPManager.Object.PrimaryPart.Transparency = 0.99
        end

        local humanoid = ESPManager.Object:FindFirstChildOfClass("Humanoid")
        if not humanoid then humanoid = Instance.new("Humanoid", ESPManager.Object) end
        ESPManager.Humanoid = humanoid
    end

    local ESPInstance = ESPLibrary.ESP.Highlight({
        Name = ESPManager.Text,
        Model = ESPManager.Object,
        StudsOffset = ESPManager.Offset,

        FillColor = ESPManager.Color,
        OutlineColor = ESPManager.Color,
        TextColor = ESPManager.Color,
        TextSize = Options.ESPTextSize.Value or 16,

        FillTransparency = Options.ESPFillTransparency.Value,
        OutlineTransparency = Options.ESPOutlineTransparency.Value,

        Tracer = {
            Enabled = Toggles.ESPTracer.Value,
            From = Options.ESPTracerStart.Value,
            Color = ESPManager.Color
        },
        
        Arrow = {
            Enabled = Toggles.ESPArrow.Value,
            CenterOffset = Options.ESPArrowCenterOffset.Value,
            Color = ESPManager.Color
        },

        OnDestroy = ESPManager.OnDestroy or function()
            if ESPManager.Object.PrimaryPart and ESPManager.Invisible then ESPManager.Object.PrimaryPart.Transparency = 1 end
            if ESPManager.Humanoid then ESPManager.Humanoid:Destroy() end
        end
    })

    table.insert(Script.ESPTable[args.Type], ESPInstance)

    return ESPInstance
end

function Script.Functions.PlayerESP(character: Model)
    if not (character and character.PrimaryPart and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0) then return end

    local playerEsp = Script.Functions.ESP({
        Type = "Player",
        Object = character,
        Text = string.format("%s [%.1f]", character.Name, character.Humanoid.Health),
        TextParent = character.PrimaryPart,
        Color = Options.PlayerEspColor.Value
    })

    Script.FeatureConnections.Player[character.Name] = character.Humanoid.HealthChanged:Connect(function(newHealth)
        if newHealth > 0 then
            playerEsp.SetText(string.format("%s [%.1f]", character.Name, newHealth))
        else
            if Script.FeatureConnections.Player[character.Name] then Script.FeatureConnections.Player[character.Name]:Disconnect() end
            playerEsp.Destroy()
        end
    end)

    return playerEsp
end

function Script.Functions.EmployeeESP(employee: Model)
    if not (employee and employee.PrimaryPart and employee:FindFirstChild("Enemy")) then return end

    return Script.Functions.ESP({
        Type = "Employee",
        Object = employee,
        Text = employee.Name,
        TextParent = employee.PrimaryPart,
        Color = Options.EmployeeEspColor.Value
    })
end

function Script.Functions.ItemESP(item: Model)
    if not (item and item.PrimaryPart) then return end

    return Script.Functions.ESP({
        Type = "Item",
        Object = item,
        Text = item.Name,
        TextParent = item.PrimaryPart,
        Color = Options.ItemEspColor.Value
    })
end
end)() end,
    [35] = function()local wax,script,require=ImportGlobals(35)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

--// Functions \\--
function Script.Functions.PromptCondition(prompt)
    local modelAncestor = prompt:FindFirstAncestorOfClass("Model")
    return 
        prompt:IsA("ProximityPrompt") and (
            not table.find(Script.PromptTable.Excluded.Prompt, prompt.Name) 
            and not table.find(Script.PromptTable.Excluded.Parent, prompt.Parent and prompt.Parent.Name or "") 
            and not (table.find(Script.PromptTable.Excluded.ModelAncestor, modelAncestor and modelAncestor.Name or ""))
        )
end

function Script.Functions.ItemCondition(item)
    return item:IsA("Model") and (item:GetAttribute("Pickup") or item:GetAttribute("PropType")) and not item:GetAttribute("FuseID")
end

function Script.Functions.VoiceCondition(sound: Sound)
    return sound:IsA("Sound") and table.find(Script.Voicelines, sound.SoundId)
end

function Script.Functions.ChildCheck(child)
    -- optimization (ty lsplash)
    if (child.Name == "AnimSaves" or child.Name == "Keyframe" or child:IsA("KeyframeSequence")) then
        child:Destroy()
        return
    end
    
    -- skip
    if not (child:IsA("ProximityPrompt") or child:IsA("Model") or child:IsA("BasePart") or child:IsA("Decal") or child:IsA("Sound")) then
        return
    end
            
    if Script.Functions.PromptCondition(child) then
        task.defer(function()
            if not child:GetAttribute("Hold") then child:SetAttribute("Hold", child.HoldDuration) end
            if not child:GetAttribute("Distance") then child:SetAttribute("Distance", child.MaxActivationDistance) end
            if not child:GetAttribute("Clip") then child:SetAttribute("Clip", child.RequiresLineOfSight) end
        end)

        task.defer(function()
            child.MaxActivationDistance = child:GetAttribute("Distance") * Options.PromptReachMultiplier.Value
    
            if Toggles.InstaInteract.Value then
                child.HoldDuration = 0
            end
    
            if Toggles.PromptClip.Value then
                child.RequiresLineOfSight = false
            end
        end)

        table.insert(Script.PromptTable.GamePrompts, child)
    elseif child:IsA("Model") then
        if child.Name == "ElevatorBreaker" and Toggles.AutoBreakerSolver.Value then
            Script.Functions.SolveBreakerBox(child)
        end

        if Script.IsMines and Toggles.TheMinesAnticheatBypass.Value and child.Name == "Ladder" then
            Script.Functions.ESP({
                Type = "None",
                Object = child,
                Text = "阶梯",
                Color = Color3.new(0, 0, 1)
            })
        end

        if (child.Name == "GiggleCeiling" and Toggles.AntiGiggle.Value) or (child.Name == "Snare" and Toggles.AntiSnare.Value) then
            local hitbox = child:WaitForChild("Hitbox", 5)
            if hitbox then hitbox.CanTouch = false end
        elseif (child:GetAttribute("LoadModule") == "DupeRoom" or child:GetAttribute("LoadModule") == "SpaceSideroom") and Toggles.AntiDupe.Value then
            Script.Functions.DisableDupe(child, true, child:GetAttribute("LoadModule") == "SpaceSideroom")
        end

        if (Script.IsHotel or Script.IsFools) and (child.Name == "ChandelierObstruction" or child.Name == "Seek_Arm") and Toggles.AntiSeekObstructions.Value then
            for i,v in pairs(child:GetDescendants()) do
                if v:IsA("BasePart") then v.CanTouch = false end
            end
        end

        if Script.IsFools then
            if Toggles.FigureGodmodeFools.Value and child.Name == "FigureRagdoll" then
                for i, v in pairs(child:GetDescendants()) do
                    if v:IsA("BasePart") then
                        if not v:GetAttribute("Clip") then v:SetAttribute("Clip", v.CanCollide) end

                        v.CanTouch = false

                        -- woudn't want figure to just dip into the ground
                        task.spawn(function()
                            repeat task.wait() until (Script.LatestRoom.Value == 50 or Script.LatestRoom.Value == 100)
                            task.wait(5)
                            v.CanCollide = false
                        end)
                    end
                end
            end
        end
    elseif child:IsA("BasePart") then
        if child.Parent then
            if tonumber(child.Name) and child.Name == child.Parent.Name then
                child.Size *= Vector3.new(1, 100, 1)
            elseif child.Name == "Egg" and Toggles.AntiGloomEgg.Value then
                child.CanTouch = false
            end
        else
            if child.Name == "Egg" and Toggles.AntiGloomEgg.Value then
                child.CanTouch = false
            end
        end

        if Toggles.AntiLag.Value then
            if not child:GetAttribute("Material") then child:SetAttribute("Material", child.Material) end
            if not child:GetAttribute("Reflectance") then child:SetAttribute("Reflectance", child.Reflectance) end
    
            child.Material = Enum.Material.Plastic
            child.Reflectance = 0
        end

        if Script.IsMines then
            if Toggles.AntiBridgeFall.Value and child.Name == "PlayerBarrier" and child.Size.Y == 2.75 and (child.Rotation.X == 0 or child.Rotation.X == 180) then
                local clone = child:Clone()
                clone.CFrame = clone.CFrame * CFrame.new(0, 0, -5)
                clone.Color = Color3.new(1, 1, 1)
                clone.Name = "AntiBridge"
                clone.Size = Vector3.new(clone.Size.X, clone.Size.Y, 11)
                clone.Transparency = 0
                clone.Parent = child.Parent
                
                table.insert(Script.Temp.Bridges, clone)
            elseif Toggles.AntiPipeGap.Value and child.Name == "KillBrick" and child.Parent.Name == "Assets" then
                local clone = child:Clone()
                clone.Color = Color3.new(1, 1, 1)
                clone.Name = "AntiPipeGap"
                clone.Position += Vector3.new(0, 20, 0)
                clone.Size = Vector3.new(9, 4, clone.Size.Z)
                clone.Transparency = 0
                clone.Parent = child.Parent
                
                table.insert(Script.Temp.PipeBridges, clone)
            elseif Toggles.AntiSeekFlood.Value and child.Name == "SeekFloodline" then
                child.CanCollide = true
            end
        end
    elseif child:IsA("Decal") and Toggles.AntiLag.Value then
        if not child:GetAttribute("Transparency") then child:SetAttribute("Transparency", child.Transparency) end

        if not table.find(Script.SlotsName, child.Name) then
            child.Transparency = 1
        end
    elseif Script.Functions.VoiceCondition(child) and shared.CheckToggle("NoVoiceActing", true) then
        child:Destroy()
    end
end

function Script.Functions.IsPromptInRange(prompt: ProximityPrompt)
    return Script.Functions.DistanceFromCharacter(prompt:FindFirstAncestorWhichIsA("BasePart") or prompt:FindFirstAncestorWhichIsA("Model") or prompt.Parent) <= prompt.MaxActivationDistance
end

function Script.Functions.GetNearestAssetWithCondition(condition: () -> ())
    local nearestDistance = math.huge
    local nearest
    for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
        if not room:FindFirstChild("Assets") then continue end

        for _, asset in pairs(room.Assets:GetChildren()) do
            if condition(asset) and Script.Functions.DistanceFromCharacter(asset) < nearestDistance then
                nearestDistance = Script.Functions.DistanceFromCharacter(asset)
                nearest = asset
            end
        end
    end

    return nearest
end

function Script.Functions.GetAllPromptsWithCondition(condition)
    assert(typeof(condition) == "function", "Expected a function as condition argument but got " .. typeof(condition))
    
    local validPrompts = {}
    for _, prompt in pairs(Script.PromptTable.GamePrompts) do
        if not prompt or not prompt:IsDescendantOf(workspace) then continue end

        local success, returnData = pcall(function()
            return condition(prompt)
        end)

        assert(success, "An error has occured while running condition function.\n" .. tostring(returnData))
        assert(typeof(returnData) == "boolean", "Expected condition function to return a boolean")
        
        if returnData then
            table.insert(validPrompts, prompt)
        end
    end

    return validPrompts
end

function Script.Functions.GetNearestPromptWithCondition(condition)
    local prompts = Script.Functions.GetAllPromptsWithCondition(condition)

    local nearestPrompt = nil
    local oldHighestDistance = math.huge
    for _, prompt in pairs(prompts) do
        local promptParent = prompt:FindFirstAncestorWhichIsA("BasePart") or prompt:FindFirstAncestorWhichIsA("Model")

        if promptParent and Script.Functions.DistanceFromCharacter(promptParent) < oldHighestDistance then
            nearestPrompt = prompt
            oldHighestDistance = Script.Functions.DistanceFromCharacter(promptParent)
        end
    end

    return nearestPrompt
end
end)() end,
    [36] = function()local wax,script,require=ImportGlobals(36)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

--// Functions \\--
function Script.Functions.GenerateAutoWardrobeExclusions(targetWardrobePrompt: ProximityPrompt)
    if not workspace.CurrentRooms:FindFirstChild(Script.CurrentRoom) then return {targetWardrobePrompt.Parent} end
    local ignore = { targetWardrobePrompt.Parent }

    if workspace.CurrentRooms[Script.CurrentRoom]:FindFirstChild("Assets") then
        for _, asset in pairs(workspace.CurrentRooms[Script.CurrentRoom].Assets:GetChildren()) do
            if asset.Name == "Pillar" then table.insert(ignore, asset) end
        end
    end

    return ignore
end

function Script.Functions.AutoWardrobe(child, index: number | nil)
    -- Entity check
    if not child then return end
    if not child:IsDescendantOf(workspace) then return end

    -- Toggles check
    if not Toggles.AutoWardrobeNotif or not Toggles.AutoWardrobe then return end
    if not Toggles.AutoWardrobe.Value or not Script.Alive then
        index = index or table.find(Script.Temp.AutoWardrobeEntities, child)
        if index then
            table.remove(Script.Temp.AutoWardrobeEntities, index)
        end

        return
    end

    local NotifPrefix = "Auto " .. Script.HidingPlaceName[Script.Floor.Value];
    task.spawn(function() 
        shared.Notify:Log({
            Title = NotifPrefix,
            Description = "寻找一个隐藏的地方",
    
            LinoriaMessage = "[" .. NotifPrefix .. "] 寻找一个隐藏的地方..."
        }, Toggles.AutoWardrobeNotif.Value)
    end)

    local entityIndex = #Script.Temp.AutoWardrobeEntities + 1
    Script.Temp.AutoWardrobeEntities[entityIndex] = child

    -- Get wardrobe
    local distance = Script.EntityTable.AutoWardrobe.Distance[child.Name].Distance;
    local targetWardrobeChecker = function(prompt)
        if not prompt.Parent then return false end
        if not prompt.Parent:FindFirstChild("HiddenPlayer") then return false end
        if prompt.Parent:FindFirstChild("Main") and prompt.Parent.Main:FindFirstChild("HideEntityOnSpot") then
            if prompt.Parent.Main.HideEntityOnSpot.Whispers.Playing == true then return false end -- Hide
        end

        return prompt.Name == "HidePrompt" and (prompt.Parent:GetAttribute("LoadModule") == "Wardrobe" or prompt.Parent:GetAttribute("LoadModule") == "Bed" or prompt.Parent.Name == "Rooms_Locker") and not prompt.Parent.HiddenPlayer.Value and (Script.Functions.DistanceFromCharacter(prompt.Parent) < prompt.MaxActivationDistance * Options.PromptReachMultiplier.Value)
    end
    local targetWardrobePrompt = Script.Functions.GetNearestPromptWithCondition(targetWardrobeChecker)
    local getPrompt = function()
        if not targetWardrobePrompt or Script.Functions.DistanceFromCharacter(targetWardrobePrompt:FindFirstAncestorWhichIsA("Model"):GetPivot().Position) > 15 then
            repeat task.wait()
                targetWardrobePrompt = Script.Functions.GetNearestPromptWithCondition(targetWardrobeChecker)
            until targetWardrobePrompt ~= nil or shared.Character:GetAttribute("Hiding") or (not Toggles.AutoWardrobe.Value or not Script.Alive or not child or not child:IsDescendantOf(workspace)) or shared.Library.Unloaded

            if (not Toggles.AutoWardrobe.Value or not Script.Alive or not child or not child:IsDescendantOf(workspace)) or shared.Library.Unloaded then
                return
            end
        end
    end
    getPrompt()

    -- Hide Checks
    if shared.Character:GetAttribute("Hiding") then return end
    if not Toggles.AutoWardrobe.Value or not Script.Alive or shared.Library.Unloaded then return end  

    -- Hide
    task.spawn(function() 
        shared.Notify:Log({
            Title = NotifPrefix,
            Description = "开始...",
    
            LinoriaMessage = "[" .. NotifPrefix .. "] 开始..."
        }, Toggles.AutoWardrobeNotif.Value)
    end)
    
    local exclusion = Script.Functions.GenerateAutoWardrobeExclusions(targetWardrobePrompt)
    local atempts, maxAtempts = 0, 60
    local isSafeCheck = function(addMoreDist)
        local isSafe = true
        for _, entity in pairs(Script.Temp.AutoWardrobeEntities) do
            if isSafe == false then break end

            local distanceEntity = Script.EntityTable.AutoWardrobe.Distance[child.Name].Distance;

            local entityDeleted = (entity == nil or entity.Parent == nil)
            local inView = Script.Functions.IsInViewOfPlayer(entity.PrimaryPart, distanceEntity + (addMoreDist == true and 15 or 0), exclusion)
            local isClose = Script.Functions.DistanceFromCharacter(entity:GetPivot().Position) < distanceEntity + (addMoreDist == true and 15 or 0)

            isSafe = entityDeleted == true and true or (inView == false and isClose == false);
            if isSafe == false then break end
        end

        return isSafe
    end
    local waitForSafeExit; waitForSafeExit = function()
        if child.Name == "A120" then
            repeat task.wait() until not child:IsDescendantOf(workspace) or (child.PrimaryPart and child.PrimaryPart.Position.Y < -10) or (not Script.Alive or not shared.Character:GetAttribute("Hiding"))
        else   
            local didPlayerSeeEntity = false
            task.spawn(function()
                repeat task.wait()
                    if not Script.Alive or not child or not child:IsDescendantOf(workspace) then break end

                    if shared.Character:GetAttribute("Hiding") and Script.Functions.IsInViewOfPlayer(child.PrimaryPart, distance, exclusion) then
                        didPlayerSeeEntity = true
                        break
                    end
                until false == true
            end)

            repeat task.wait(0.15)
                local isSafe = isSafeCheck()
                if didPlayerSeeEntity == true and isSafe == true then
                    task.spawn(function() 
                        shared.Notify:Log({
                            Title = NotifPrefix,
                            Description = "离开储物柜,实体很远.",
                            
                            LinoriaMessage = "[" .. NotifPrefix .. "] 离开储物柜,实体很远."
                        }, Toggles.AutoWardrobeNotif.Value)
                    end)

                    break
                else
                    if isSafe == true and not child:IsDescendantOf(workspace) then 
                        task.spawn(function() 
                            shared.Notify:Log({
                                Title = NotifPrefix,
                                Description = "退出储物柜,实体被删除.",
                                
                                LinoriaMessage = "[" .. NotifPrefix .. "] 退出储物柜,实体被删除."
                            }, Toggles.AutoWardrobeNotif.Value)
                        end)

                        break 
                    end          
                end

                if not Script.Alive then  
                    if Toggles.AutoWardrobeNotif.Value then shared.Notify:Log("[" .. NotifPrefix .. "] 停止（你死了）.") end             
                    task.spawn(function() 
                        shared.Notify:Log({
                            Title = NotifPrefix,
                            Description = "停止（你死了）",
                            
                            LinoriaMessage = "[" .. NotifPrefix .. "] 停止（你死了）."
                        }, Toggles.AutoWardrobeNotif.Value)
                    end)

                    break 
                end                             
            until false == true          
        end

        return true
    end
    local hide = function()
        if (shared.Character:GetAttribute("Hiding") and shared.RootPart.Anchored) then return false end

        getPrompt()
        repeat task.wait()
            atempts += 1

            shared.forcefireproximityprompt(targetWardrobePrompt)
        until atempts > maxAtempts or not Script.Alive or (shared.Character:GetAttribute("Hiding") and shared.RootPart.Anchored)

        if atempts > maxAtempts or not Script.Alive then return false end
        return true
    end

    if child.Name == "AmbushMoving" then
        local LastPos = child:GetPivot().Position
        local IsMoving = false
        task.spawn(function()
            repeat task.wait(0.01)
                local diff = (LastPos - child:GetPivot().Position) / 0.01
                LastPos = child:GetPivot().Position
                IsMoving = diff.Magnitude > 0
            until not child or not child:IsDescendantOf(workspace)
        end)

        repeat task.wait()
            task.spawn(function() 
                shared.Notify:Log({
                    Title = NotifPrefix,
                    Description = "等待伏击足够接近...",
    
                    LinoriaMessage = "[" .. NotifPrefix .. "] 等待伏击足够接近...",
                }, Toggles.AutoWardrobeNotif.Value)
            end)

            repeat task.wait() until (IsMoving == true and Script.Functions.DistanceFromCharacter(child:GetPivot().Position) <= distance) or (not child or not child:IsDescendantOf(workspace))
            if not child or not child:IsDescendantOf(workspace) then break end
            
            local success = hide()
            if success then
                task.spawn(function() 
                    shared.Notify:Log({
                        Title = NotifPrefix,
                        Description = "等待它安全退出...",
    
                        LinoriaMessage = "[" .. NotifPrefix .. "] 等待它安全退出...",
                    }, Toggles.AutoWardrobeNotif.Value)
                end)

                repeat task.wait() until (IsMoving == false and Script.Functions.DistanceFromCharacter(child:GetPivot().Position) >= distance) or (not child or not child:IsDescendantOf(workspace));
                if not child or not child:IsDescendantOf(workspace) then break end

                Script.RemotesFolder.CamLock:FireServer()
            end
        until (not child or not child:IsDescendantOf(workspace)) or not Script.Alive
    else
        repeat task.wait() until isSafeCheck(true, true) == false

        repeat
            local success = hide()
            if success then
                local finished = waitForSafeExit()
                repeat task.wait() until finished == true        
                Script.RemotesFolder.CamLock:FireServer()
            end
            
            task.wait()
        until isSafeCheck()
    end

    table.remove(Script.Temp.AutoWardrobeEntities, entityIndex)
    task.spawn(function() 
        shared.Notify:Log({
            Title = NotifPrefix,
            Description = "Finished.",
    
            LinoriaMessage = "[" .. NotifPrefix .. "] Finished.",
        }, Toggles.AutoWardrobeNotif.Value)
    end)
end
end)() end,
    [37] = function()local wax,script,require=ImportGlobals(37)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

--// Functions \\--
function Script.Functions.EnableBreaker(breaker, value)
    breaker:SetAttribute("Enabled", value)

    if value then
        breaker:FindFirstChild("PrismaticConstraint", true).TargetPosition = -0.2
        breaker.Light.Material = Enum.Material.Neon
        breaker.Light.Attachment.Spark:Emit(1)
        breaker.Sound.Pitch = 1.3
    else
        breaker:FindFirstChild("PrismaticConstraint", true).TargetPosition = 0.2
        breaker.Light.Material = Enum.Material.Glass
        breaker.Sound.Pitch = 1.2
    end

    breaker.Sound:Play()
end

function Script.Functions.SolveBreakerBox(breakerBox)
    if not Options.AutoBreakerSolverMethod then return end
    if not breakerBox then return end

    local code = breakerBox:FindFirstChild("Code", true)
    local correct = breakerBox:FindFirstChild("Correct", true)

    repeat task.wait() until code.Text ~= "..." or not breakerBox:IsDescendantOf(workspace)
    if not breakerBox:IsDescendantOf(workspace) then return end

    shared.Notify:Alert({
        Title = "自动断路器求解器",
        Description = "解决断路器盒...",
        Reason = ""
    })

    if Options.AutoBreakerSolverMethod.Value == "Legit" then
        Script.Temp.UsedBreakers = {}
        if shared.Connections["Reset"] then shared.Connections["Reset"]:Disconnect() end
        if shared.Connections["Code"] then shared.Connections["Code"]:Disconnect() end

        local breakers = {}
        for _, breaker in pairs(breakerBox:GetChildren()) do
            if breaker.Name == "BreakerSwitch" then
                local id = string.format("%02d", breaker:GetAttribute("ID"))
                breakers[id] = breaker
            end
        end

        if code:FindFirstChild("Frame") then
            Script.Functions.AutoBreaker(code, breakers)

            shared.Connections["Reset"] = correct:GetPropertyChangedSignal("Playing"):Connect(function()
                if correct.Playing then table.clear(Script.Temp.UsedBreakers) end
            end)

            shared.Connections["Code"] = code:GetPropertyChangedSignal("Text"):Connect(function()
                task.delay(0.1, Script.Functions.AutoBreaker, code, breakers)
            end)
        end
    else
        repeat task.wait(0.1)
            Script.RemotesFolder.EBF:FireServer()
        until not workspace.CurrentRooms["100"]:FindFirstChild("DoorToBreakDown")

        shared.Notify:Alert({
            Title = "自动断路器求解器",
            Description = "断路器盒已成功解决.",
        })
    end
end

function Script.Functions.AutoBreaker(code, breakers)
    local newCode = code.Text
    if not tonumber(newCode) and newCode ~= "??" then return end

    local isEnabled = code.Frame.BackgroundTransparency == 0
    local breaker = breakers[newCode]

    if newCode == "??" and #Script.Temp.UsedBreakers == 9 then
        for i = 1, 10 do
            local id = string.format("%02d", i)

            if not table.find(Script.Temp.UsedBreakers, id) then
                breaker = breakers[id]
            end
        end
    end

    if breaker then
        table.insert(Script.Temp.UsedBreakers, newCode)
        if breaker:GetAttribute("Enabled") ~= isEnabled then
            Script.Functions.EnableBreaker(breaker, isEnabled)
        end
    end
end
end)() end,
    [38] = function()local wax,script,require=ImportGlobals(38)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

--// Functions \\--
function Script.Functions.CameraCheck(child)
    if child:IsA("BasePart") and child.Name == "Guidance" and Toggles.GuidingLightESP.Value then
        Script.Functions.GuidingLightEsp(child)
    end
end

function Script.Functions.SetupCameraConnection(camera)
    for _, child in pairs(camera:GetChildren()) do
        task.spawn(Script.Functions.CameraCheck, child)
    end

    shared.Connections["CameraChildAdded"] = camera.ChildAdded:Connect(function(child)
        task.spawn(Script.Functions.CameraCheck, child)
    end)
end

function Script.Functions.SetupRoomConnection(room)
    if Options.NotifyEntity.Value["Halt Room"] and room:GetAttribute("RawName") == "HaltHallway" then
        shared.Notify:Alert({
            Title = "实体",
            Description = "停止将在下一个房间产生!",
            Image = Script.EntityTable.NotifyReason["HaltRoom"].Image,

            Warning = true
        })
    end

    for _, child in pairs(room:GetDescendants()) do
        if Toggles.DeleteSeek.Value and shared.RootPart and child.Name == "Collision" then
            task.spawn(Script.Functions.DeleteSeek, child)
        end

        task.spawn(Script.Functions.ChildCheck, child)
    end

    shared.Connections[room.Name .. "DescendantAdded"] = room.DescendantAdded:Connect(function(child)
        if tonumber(room.Name) == Script.CurrentRoom then
            if Script.Functions.ObjectiveESP(child) then
                return
            elseif Toggles.ItemESP.Value and Script.Functions.ItemCondition(child) then
                Script.Functions.ItemESP(child)
                return
            elseif Toggles.GoldESP.Value and child.Name == "GoldPile" then
                Script.Functions.GoldESP(child)
                return
            end
        end

        if Toggles.DeleteSeek.Value and shared.RootPart and child.Name == "Collision" then
            task.spawn(Script.Functions.DeleteSeek, child)
        end

        task.delay(0.1, Script.Functions.ChildCheck, child)
    end)
end

function Script.Functions.SetupDropConnection(drop)
    if Toggles.ItemESP.Value then
        Script.Functions.ItemESP(drop, true)
    end

    task.spawn(function()
        local prompt = drop:WaitForChild("ModulePrompt", 3)

        if prompt then
            table.insert(Script.PromptTable.GamePrompts, prompt)
        end
    end)
end

function Script.Functions.SetupCharacterConnection(newCharacter)
    shared.Character = newCharacter
    if shared.Character then
        if Toggles.EnableJump.Value then
            shared.Character:SetAttribute("CanJump", true)
        end

        for _, oldConnection in pairs(Script.FeatureConnections.Character) do
            oldConnection:Disconnect()
        end

        Script.FeatureConnections.Character["ChildAdded"] = shared.Character.ChildAdded:Connect(function(child)
            if not (child:IsA("Tool") and child.Name:match("LibraryHintPaper")) then return end

            task.wait(0.1)
            local code = Script.Functions.GetPadlockCode(child)
            local output, count = string.gsub(code, "_", "x")
            local padlock = workspace:FindFirstChild("Padlock", true)

            if Toggles.AutoLibrarySolver.Value and tonumber(code) and Script.Functions.DistanceFromCharacter(padlock) <= Options.AutoLibraryDistance.Value then
                Script.RemotesFolder.PL:FireServer(code)
            end

            if Toggles.NotifyPadlock.Value and count < 5 then
                shared.Notify:Alert({
                    Title = "挂锁代码",
                    Description = string.format("图书馆密码: %s", output),
                    Reason = if tonumber(code) then "解决了库挂锁代码" else "你仍然缺少一些书",
                })

                if Toggles.NotifyChat.Value and count == 0 then
                    shared.RBXGeneral:SendAsync(string.format("图书馆密码: %s", output))
                end
            end
        end)

        Script.FeatureConnections.Character["CanJump"] = shared.Character:GetAttributeChangedSignal("CanJump"):Connect(function()
            if not Toggles.EnableJump then return end
            if not Toggles.EnableJump.Value then return end

            if not shared.Character:GetAttribute("CanJump") then
                shared.Character:SetAttribute("CanJump", true)
            end
        end)

        Script.FeatureConnections.Character["Crouching"] = shared.Character:GetAttributeChangedSignal("Crouching"):Connect(function()
            if not Toggles.AntiHearing then return end
            if not Toggles.AntiHearing.Value then return end

            if not shared.Character:GetAttribute("Crouching") then
                Script.RemotesFolder.Crouch:FireServer(true)
            end
        end)

        Script.FeatureConnections.Character["Hiding"] = shared.Character:GetAttributeChangedSignal("Hiding"):Connect(function()
            if not shared.Character:GetAttribute("Hiding") then return end
            if not Toggles.TranslucentHidingSpot or not Options.HidingTransparency then return end
            if not Toggles.TranslucentHidingSpot.Value then return end

            for _, obj in pairs(workspace.CurrentRooms:GetDescendants()) do
                if not obj:IsA("ObjectValue") and obj.Name ~= "HiddenPlayer" then continue end

                if obj.Value == shared.Character then
                    task.spawn(function()
                        local affectedParts = {}
                        for _, part in pairs(obj.Parent:GetChildren()) do
                            if not part:IsA("BasePart") or part.Name:match("Collision") then continue end

                            part.Transparency = Options.HidingTransparency.Value
                            table.insert(affectedParts, part)
                        end

                        repeat task.wait()
                            for _, part in pairs(affectedParts) do
                                task.wait()
                                part.Transparency = Options.HidingTransparency.Value
                            end
                        until not shared.Character:GetAttribute("Hiding") or not Toggles.TranslucentHidingSpot.Value
                        
                        for _, part in pairs(affectedParts) do
                            part.Transparency = 0
                        end
                    end)

                    break
                end
            end
        end)

        Script.FeatureConnections.Character["Oxygen"] = shared.Character:GetAttributeChangedSignal("Oxygen"):Connect(function()
            if not Toggles.NotifyOxygen then return end
            if not Toggles.NotifyOxygen.Value then return end
            if shared.Character:GetAttribute("Oxygen") >= 100 then return end

            if wax.shared.ExecutorSupport["firesignal"] then 
                if Options.CaptionStyle.Value == "Doors" then
                    firesignal(Script.RemotesFolder.Caption.OnClientEvent, string.format("Oxygen: %.1f", shared.Character:GetAttribute("Oxygen")))
                elseif Options.CaptionStyle.Value == "Linoria" then
                    Script.Functions.Captions(string.format("Oxygen: %.1f", shared.Character:GetAttribute("Oxygen")))
                end
            else
                Script.Functions.Captions(string.format("Oxygen: %.1f", shared.Character:GetAttribute("Oxygen")))
            end
        end)
    end

    shared.Humanoid = shared.Character:WaitForChild("Humanoid")
    if shared.Humanoid then
        for _, oldConnection in pairs(Script.FeatureConnections.Humanoid) do
            oldConnection:Disconnect()
        end

        shared.Twerk:Setup()
        if Toggles.Twerk.Value then
            shared.Twerk:Enable()
        end

        Script.FeatureConnections.Humanoid["Move"] = shared.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
            if not Toggles.FastClosetExit then return end

            if Toggles.FastClosetExit.Value and shared.Humanoid.MoveDirection.Magnitude > 0 and shared.Character:GetAttribute("Hiding") then
                Script.RemotesFolder.CamLock:FireServer()
            end
        end)

        Script.FeatureConnections.Humanoid["Jump"] = shared.Humanoid:GetPropertyChangedSignal("JumpHeight"):Connect(function()
            if not Toggles.SpeedBypass then return end

            if not Toggles.SpeedBypass.Value and Script.LatestRoom.Value < 100 and not Script.FakeRevive.Enabled then
                if shared.Humanoid.JumpHeight > 0 then
                    Script.LastSpeed = Options.WalkSpeed.Value
                    Options.WalkSpeed:SetMax(18)
                elseif Script.LastSpeed > 0 then
                    Options.WalkSpeed:SetMax(22)
                    Options.WalkSpeed:SetValue(Script.LastSpeed)
                    Script.LastSpeed = 0
                end
            end
        end)

        Script.FeatureConnections.Humanoid["Died"] = shared.Humanoid.Died:Connect(function()
            if Script.CollisionClone then
                Script.CollisionClone:Destroy()
            end
        end)

        if Script.IsFools then
            Script.Tracks.ItemHoldTrack = shared.Humanoid:LoadAnimation(Script.Anims.HoldAnim)
            Script.Tracks.ItemThrowTrack = shared.Humanoid:LoadAnimation(Script.Anims.ThrowAnim)
        end
    end

    shared.RootPart = shared.Character:WaitForChild("HumanoidRootPart")
    if shared.RootPart then
        if Toggles.NoAccel.Value then
            Script.Temp.NoAccelValue = shared.RootPart.CustomPhysicalProperties.Density
            
            local existingProperties = shared.RootPart.CustomPhysicalProperties
            shared.RootPart.CustomPhysicalProperties = PhysicalProperties.new(100, existingProperties.Friction, existingProperties.Elasticity, existingProperties.FrictionWeight, existingProperties.ElasticityWeight)
        end

        Script.FeatureConnections.RootPart["RootChildAdded"] = shared.RootPart.ChildAdded:Connect(function(child)
            if shared.CheckToggle("NoVoiceActing", true) and Script.Functions.VoiceCondition(child) then
                child:Destroy() 
            end
        end)

        Script.FeatureConnections.RootPart["Touched"] = shared.RootPart.Touched:Connect(function(touchedPart)
            if tonumber(touchedPart.Name) and touchedPart.Name == touchedPart.Parent.Name then
                shared.LocalPlayer:SetAttribute("CurrentRoom", tonumber(touchedPart.Name))
            end
        end)
    end

    Script.Collision = shared.Character:WaitForChild("Collision")
    if Script.Collision then
        if Toggles.UpsideDown.Value then
            Script.Collision.Rotation = Vector3.new(Script.Collision.Rotation.X, Script.Collision.Rotation.Y, -90)
        end

        --[[
        Script.FeatureConnections.Player["Godmode"] = Script.Collision:GetPropertyChangedSignal("CFrame"):Connect(function()
            if not Toggles.Godmode.Value then return end
            shared.RunService.Stepped:Wait()
            
            local raycast = workspace:Raycast(shared.RootPart.Position, Vector3.new(0, -100, 0))

            if raycast then
                Script.Collision.Position = shared.RootPart.Position - Vector3.new(0, raycast.Distance - 0.9, 0)
            end
        end)

        Script.FeatureConnections.Player["GodmodeCanCollide"] = Script.Collision:GetPropertyChangedSignal("CanCollide"):Connect(function()
            if not Toggles.Godmode.Value then return end

            Script.Collision.CanCollide = false
            shared.RootPart.CollisionGroup = "Player"
            shared.RootPart.CollisionGroup = "PlayerCrouching"
        end)

        Script.FeatureConnections.Player["GodmodeCrouchCanCollide"] = Script.Collision.CollisionCrouch:GetPropertyChangedSignal("CanCollide"):Connect(function()
            if not Toggles.Godmode.Value then return end

            Script.Collision.CanCollide = false
            Script.Collision.CollisionCrouch.CanCollide = false
            shared.RootPart.CollisionGroup = "PlayerCrouching"
            
            local crouchAnimID = shared.Character.Animations.Crouch.AnimationId
            for _, track in pairs(shared.Humanoid:GetPlayingAnimationTracks()) do
                if track.Animation.AnimationId == crouchAnimID then
                    track:Stop(0)
                    break
                end
            end
        end)]]

        Script.CollisionClone = Script.Collision:Clone()
        Script.CollisionClone.CanCollide = false
        Script.CollisionClone.Massless = true
        Script.CollisionClone.Name = "CollisionClone"
        if Script.CollisionClone:FindFirstChild("CollisionCrouch") then
            Script.CollisionClone.CollisionCrouch:Destroy()
        end

        Script.CollisionClone.Parent = shared.Character
    end

    if Script.IsMines then
        if shared.Character then
            shared.Connections["AnticheatBypassTheMines"] = shared.Character:GetAttributeChangedSignal("Climbing"):Connect(function()
                if not Toggles.TheMinesAnticheatBypass then return end
                if not Toggles.TheMinesAnticheatBypass.Value then return end
                if not shared.Character:GetAttribute("Climbing") then return end

                task.wait(1)
                shared.Character:SetAttribute("Climbing", false)

                Script.Bypassed = true

                for _, ladderEsp in pairs(Script.ESPTable.None) do
                    ladderEsp.Destroy()
                end

                Options.WalkSpeed:SetMax(75)
                Options.FlySpeed:SetMax(75)

                shared.Notify:Alert({
                    Title = "抗灰分地旁路",
                    Description = "成功地绕过了抗灰分!",
                    Reason = "这只会持续到下一个切割型!",

                    LinoriaMessage = "绕过抗灰烬！ 这只会持续到下一个切割型",

                    Time = 7
                })
                if workspace:FindFirstChild("_internal_mspaint_acbypassprogress") then workspace:FindFirstChild("_internal_mspaint_acbypassprogress"):Destroy() end
            end)
        end

        if shared.Humanoid then
            shared.Humanoid.MaxSlopeAngle = Options.MaxSlopeAngle.Value
        end
    end
end

function Script.Functions.SetupOtherPlayerConnection(player: Player)
    if player.Character then
        task.spawn(Script.Functions.SetupOtherCharacterConnection, player.Character)
    end

    shared.Connect:GiveSignal(player.CharacterAdded:Connect(function(newCharacter)
        if Toggles.PlayerESP and Toggles.PlayerESP.Value then
            task.delay(1, Script.Functions.PlayerESP, newCharacter)
        end

        task.delay(1, Script.Functions.SetupOtherCharacterConnection, newCharacter)
    end))
end

function Script.Functions.SetupOtherCharacterConnection(character: Model)
    shared.Connections[character.Name .. "ChildAdded"] = character.ChildAdded:Connect(function(child)
        if not (child:IsA("Tool") and child.Name:match("LibraryHintPaper")) then return end

        task.wait(0.1)
        local code = Script.Functions.GetPadlockCode(child)
        local output, count = string.gsub(code, "_", "x")
        local padlock = workspace:FindFirstChild("Padlock", true)

        if Toggles.AutoLibrarySolver.Value and tonumber(code) and Script.Functions.DistanceFromCharacter(padlock) <= Options.AutoLibraryDistance.Value then
            Script.RemotesFolder.PL:FireServer(code)
        end

        if Toggles.NotifyPadlock.Value and count < 5 then
            shared.Notify:Alert({
                Title = "挂锁代码",
                Description = string.format("图书馆密码: %s", output),
                Reason = if tonumber(code) then "解决了库挂锁代码" else "你仍然缺少一些书",
            })

            if Toggles.NotifyChat.Value and count == 0 then
                shared.RBXGeneral:SendAsync(string.format("Library Code: %s", output))
            end
        end
    end)

    local otherRootPart = character:WaitForChild("HumanoidRootPart")
    if otherRootPart then
        shared.Connections[character.Name .. "RootChildAdded"] = otherRootPart.ChildAdded:Connect(function(child)
            if shared.CheckToggle("NoVoiceActing", true) and Script.Functions.VoiceCondition(child) then
                child:Destroy() 
            end
        end)
    end
end

end)() end,
    [39] = function()local wax,script,require=ImportGlobals(39)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
local ESPLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/MS-ESP/refs/heads/main/source.lua"))()
shared.ESPLibrary = ESPLibrary

type ESP = {
    Color: Color3,
    IsEntity: boolean,
    IsDoubleDoor: boolean,
    Object: Instance,
    Offset: Vector3,
    Text: string,
    TextParent: Instance,
    Type: string
}

function Script.Functions.ESP(args: ESP)
    if not args.Object then return Script.Functions.Warn("ESP Object is nil") end

    local ESPManager = {
        Object = args.Object,
        Text = args.Text or "No Text",
        Color = args.Color or Color3.new(),
        Offset = args.Offset or Vector3.zero,
        IsEntity = args.IsEntity or false,
        IsDoubleDoor = args.IsDoubleDoor or false,
        Type = args.Type or "None",
        OnDestroy = args.OnDestroy or nil,

        Invisible = false,
        Humanoid = nil
    }

    if ESPManager.IsEntity and ESPManager.Object.PrimaryPart then
        if ESPManager.Object.PrimaryPart.Transparency == 1 then
            ESPManager.Invisible = true
            ESPManager.Object.PrimaryPart.Transparency = 0.99
        end

        local humanoid = ESPManager.Object:FindFirstChildOfClass("Humanoid")
        if not humanoid then humanoid = Instance.new("Humanoid", ESPManager.Object) end
        ESPManager.Humanoid = humanoid
    end

    local ESPInstance = ESPLibrary.ESP.Highlight({
        Name = ESPManager.Text,
        Model = ESPManager.Object,
        StudsOffset = ESPManager.Offset,

        FillColor = ESPManager.Color,
        OutlineColor = ESPManager.Color,
        TextColor = ESPManager.Color,
        TextSize = Options.ESPTextSize.Value or 16,

        FillTransparency = Options.ESPFillTransparency.Value,
        OutlineTransparency = Options.ESPOutlineTransparency.Value,

        Tracer = {
            Enabled = true,
            From = Options.ESPTracerStart.Value,
            Color = ESPManager.Color
        },
        
        Arrow = {
            Enabled = true,
            CenterOffset = Options.ESPArrowCenterOffset.Value,
            Color = ESPManager.Color
        },

        OnDestroy = ESPManager.OnDestroy or function()
            if ESPManager.Object.PrimaryPart and ESPManager.Invisible then ESPManager.Object.PrimaryPart.Transparency = 1 end
            if ESPManager.Humanoid then ESPManager.Humanoid:Destroy() end
        end
    })

    table.insert(Script.ESPTable[args.Type], ESPInstance)

    return ESPInstance
end

function Script.Functions.DoorESP(room)
    local door = room:WaitForChild("Door", 5)

    if door then
        local doorNumber = tonumber(room.Name) + 1
        if Script.IsMines then
            doorNumber += 100
        end

        local opened = door:GetAttribute("Opened")
        local locked = room:GetAttribute("RequiresKey")

        local doorState = if opened then "[打开]" elseif locked then "[上锁的]" else ""
        local doorIdx = Script.Functions.RandomString()

        local doorEsp = Script.Functions.ESP({
            Type = "Door",
            Object = door:WaitForChild("Door"),
            Text = string.format("门 %s %s", doorNumber, doorState),
            Color = Options.DoorEspColor.Value,

            OnDestroy = function()
                if Script.FeatureConnections.Door[doorIdx] then Script.FeatureConnections.Door[doorIdx]:Disconnect() end
            end
        })

        Script.FeatureConnections.Door[doorIdx] = door:GetAttributeChangedSignal("Opened"):Connect(function()
            if doorEsp then doorEsp.SetText(string.format("门%s [打开的]", doorNumber)) end
            if Script.FeatureConnections.Door[doorIdx] then Script.FeatureConnections.Door[doorIdx]:Disconnect() end
        end)
    end
end 

function Script.Functions.ObjectiveESP(child)
    -- Backdoor
    if child.Name == "TimerLever" then
        Script.Functions.ESP({
            Type = "Objective",
            Object = child,
            Text = string.format("时间拉杆 [+%s]", child.TakeTimer.TextLabel.Text),
            Color = Options.ObjectiveEspColor.Value
        })
    -- Backdoor + Hotel
    elseif child.Name == "KeyObtain" then
        Script.Functions.ESP({
            Type = "Objective",
            Object = child,
            Text = "钥匙",
            Color = Options.ObjectiveEspColor.Value
        })
    -- Hotel
    elseif child.Name == "ElectricalKeyObtain" then
        Script.Functions.ESP({
            Type = "Objective",
            Object = child,
            Text = "电气室钥匙",
            Color = Options.ObjectiveEspColor.Value
        })
    elseif child.Name == "LeverForGate" then
        Script.Functions.ESP({
            Type = "Objective",
            Object = child,
            Text = "闸门拉杆",
            Color = Options.ObjectiveEspColor.Value
        })
    elseif child.Name == "LiveHintBook" then
        Script.Functions.ESP({
            Type = "Objective",
            Object = child,
            Text = "书",
            Color = Options.ObjectiveEspColor.Value
        })
    elseif child.Name == "LiveBreakerPolePickup" then
        Script.Functions.ESP({
            Type = "Objective",
            Object = child,
            Text = "断路器",
            Color = Options.ObjectiveEspColor.Value
        })
    -- Mines
    elseif child.Name == "MinesGenerator" then
        Script.Functions.ESP({
            Type = "Objective",
            Object = child,
            Text = "发电机",
            Color = Options.ObjectiveEspColor.Value
        })
    elseif child.Name == "MinesGateButton" then
        Script.Functions.ESP({
            Type = "Objective",
            Object = child,
            Text = "闸门按钮",
            Color = Options.ObjectiveEspColor.Value
        })
    elseif child.Name == "FuseObtain" then
        Script.Functions.ESP({
            Type = "Objective",
            Object = child,
            Text = "保险丝",
            Color = Options.ObjectiveEspColor.Value
        })
    elseif child.Name == "MinesAnchor" then
        local sign = child:WaitForChild("Sign", 5)

        if sign and sign:FindFirstChild("TextLabel") then
            Script.Functions.ESP({
                Type = "Objective",
                Object = child,
                Text = string.format("锚点 %s", sign.TextLabel.Text),
                Color = Options.ObjectiveEspColor.Value
            })
        end
    elseif child.Name == "WaterPump" then
        local wheel = child:WaitForChild("Wheel", 5)
        local onFrame = child:FindFirstChild("OnFrame", true)

        if wheel and (onFrame and onFrame.Visible) then
            local pumpIdx = Script.Functions.RandomString()

            local pumpEsp = Script.Functions.ESP({
                Type = "Objective",
                Object = wheel,
                Text = "水闸",
                Color = Options.ObjectiveEspColor.Value,

                OnDestroy = function()
                    if Script.FeatureConnections.Pump[pumpIdx] then Script.FeatureConnections.Pump[pumpIdx]:Disconnect() end
                end
            })

            Script.FeatureConnections.Pump[pumpIdx] = onFrame:GetPropertyChangedSignal("Visible"):Connect(function()
                if pumpEsp then pumpEsp.Destroy() end
            end)
        end
    else 
        return false
    end

    return true
end

function Script.Functions.EntityESP(entity)
    Script.Functions.ESP({
        Type = "Entity",
        Object = entity,
        Text = Script.Functions.GetShortName(entity.Name),
        Color = Options.EntityEspColor.Value,
        IsEntity = entity.Name ~= "JeffTheKiller",
    })
end

function Script.Functions.SideEntityESP(entity)
    if entity.Name == "Snare" and not entity:FindFirstChild("Hitbox") then return end

    Script.Functions.ESP({
        Type = "SideEntity",
        Object = entity,
        Text = Script.Functions.GetShortName(entity.Name),
        TextParent = entity.PrimaryPart,
        Color = Options.EntityEspColor.Value,
    })
end

function Script.Functions.ItemESP(item, dropped)
    Script.Functions.ESP({
        Type = dropped and "DroppedItem" or "Item",
        Object = item,
        Text = Script.Functions.GetShortName(item.Name),
        Color = Options.ItemEspColor.Value
    })
end

function Script.Functions.ChestESP(chest)
    local text = chest.Name:gsub("Box", ""):gsub("_Vine", ""):gsub("_Small", ""):gsub("Locked", "")
    local locked = chest:GetAttribute("Locked")
    local state = if locked then "[上锁的]" else ""

    Script.Functions.ESP({
        Type = "Chest",
        Object = chest,
        Text = string.format("%s %s", text, state),
        Color = Options.ChestEspColor.Value
    })
end

function Script.Functions.PlayerESP(character: Model)
    if not (character and character.PrimaryPart and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0) then return end

    local playerEsp = Script.Functions.ESP({
        Type = "Player",
        Object = character,
        Text = string.format("%s [%.1f]", character.Name, character.Humanoid.Health),
        TextParent = character.PrimaryPart,
        Color = Options.PlayerEspColor.Value
    })

    Script.FeatureConnections.Player[character.Name] = character.Humanoid.HealthChanged:Connect(function(newHealth)
        if newHealth > 0 then
            playerEsp.SetText(string.format("%s [%.1f]", character.Name, newHealth))
        else
            if Script.FeatureConnections.Player[character.Name] then Script.FeatureConnections.Player[character.Name]:Disconnect() end
            playerEsp.Destroy()
        end
    end)
end

function Script.Functions.HidingSpotESP(spot)
    Script.Functions.ESP({
        Type = "HidingSpot",
        Object = spot,
        Text = if spot:GetAttribute("LoadModule") == "Bed" then "床" else Script.HidingPlaceName[Script.Floor.Value],
        Color = Options.HidingSpotEspColor.Value
    })
end

function Script.Functions.GoldESP(gold)
    Script.Functions.ESP({
        Type = "Gold",
        Object = gold,
        Text = string.format("金币 [%s]", gold:GetAttribute("GoldValue")),
        Color = Options.GoldEspColor.Value
    })
end

function Script.Functions.GuidingLightEsp(guidance)
    local part = guidance:Clone()
    part.Anchored = true
    part.Size = Vector3.new(3, 3, 3)
    part.Transparency = 0.5
    part.Name = "_Guidance"

    part:ClearAllChildren()
    part.Parent = shared.Workspace

    Script.Temp.Guidance[guidance] = part

    local guidanceEsp = Script.Functions.ESP({
        Type = "Guiding",
        Object = part,
        Text = "引导之光",
        Color = Options.GuidingLightEspColor.Value
    })

    guidance.AncestryChanged:Connect(function()
        if not guidance:IsDescendantOf(workspace) then
            if Script.Temp.Guidance[guidance] then Script.Temp.Guidance[guidance] = nil end
            if part then part:Destroy() end
            if guidanceEsp then guidanceEsp.Destroy() end
        end
    end)
end
end)() end,
    [40] = function()local wax,script,require=ImportGlobals(40)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

--// Functions \\--
function Script.Functions.CalculateHideTime(room: number)
    for _, range in ipairs(Script.HideTimeValues) do
        if room >= range.min and room <= range.max then
            return math.round(range.a * (room - range.b) + range.c)
        end
    end    

    return nil
end

function Script.Functions.GetShortName(entityName: string)
    if Script.EntityTable.ShortNames[entityName] then
        return Script.EntityTable.ShortNames[entityName]
    end

    for suffix, fix in pairs(Script.SuffixPrefixes) do
        entityName = entityName:gsub(suffix, fix)
    end

    return entityName
end

function Script.Functions.DisableDupe(dupeRoom, value, isSpaceRoom)
    if isSpaceRoom then
        local collision = dupeRoom:WaitForChild("Collision", 5)
        
        if collision then
            collision.CanCollide = value
            collision.CanTouch = not value
        end
    else
        local doorFake = dupeRoom:WaitForChild("DoorFake", 5)
        
        if doorFake then
            doorFake:WaitForChild("Hidden", 5).CanTouch = not value
    
            local lock = doorFake:WaitForChild("Lock", 5)
            if lock and lock:FindFirstChild("UnlockPrompt") then
                lock.UnlockPrompt.Enabled = not value
            end
        end
    end
end

function Script.Functions.DeleteSeek(collision: BasePart)
    if not shared.RootPart then return end

    task.spawn(function()
        local attemps = 0
        repeat task.wait() attemps += 1 until collision.Parent or attemps > 200
        
        if collision:IsDescendantOf(workspace) and (collision.Parent and collision.Parent.Name == "TriggerEventCollision") then
            shared.Notify:Alert({
                Title = "删除Seek",
                Description = "正在删除Seek...",
                Reason = "",
            })

            task.delay(4, function()
                if collision:IsDescendantOf(workspace) then
                    shared.Notify:Alert({
                        Title = "删除Seek FE",
                        Description = "失败!",
                        Reason = "",
                    })
                end
            end)
            
            if shared.firetouch then
                shared.RootPart.Anchored = true
                task.delay(0.25, function() shared.RootPart.Anchored = false end)

                repeat
                    if collision:IsDescendantOf(workspace) then shared.firetouch(collision, shared.RootPart, 1) end
                    task.wait()
                    if collision:IsDescendantOf(workspace) then shared.firetouch(collision, shared.RootPart, 0) end
                    task.wait()
                until not collision:IsDescendantOf(workspace) or not Toggles.DeleteSeek.Value
            else
                collision:PivotTo(CFrame.new(shared.RootPart.Position))
                shared.RootPart.Anchored = true
                repeat task.wait() until not collision:IsDescendantOf(workspace) or not Toggles.DeleteSeek.Value
                shared.RootPart.Anchored = false
            end
            
            if not collision:IsDescendantOf(workspace) then
                shared.Notify:Log({
                    Title = "删除Seek FE",
                    Description = "删除成功!",
                })
            end
        end
    end)
end

function Script.Functions.AvoidEntity(value: boolean, oldNoclip: boolean)
    if not shared.RootPart or not Script.Collision then return end

    local lastCFrame = shared.RootPart.CFrame
    task.wait()
    if value then
        Toggles.Noclip:SetValue(true)
        Script.Collision.Position += Vector3.new(0, 24, 0)
        task.wait()
        Script.Collision:PivotTo(lastCFrame)
    else
        Script.Collision.Position -= Vector3.new(0, 24, 0)
        task.wait()
        Script.Collision:PivotTo(lastCFrame)
        Toggles.Noclip:SetValue(oldNoclip or false)
    end
end
end)() end,
    [41] = function()local wax,script,require=ImportGlobals(41)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

type tPathfind = {
    esp: boolean,
    room_number: number, -- the room number
    real: table,
    fake: table,
    destroyed: boolean -- if the pathfind was destroyed for the Teleport
}

type tGroupTrack = {
    nodes: table,
    hasStart: boolean,
    hasEnd: boolean,
}

--// Functions \\--
local function changeNodeColor(node: Model, color: Color3): Model
    if color == nil then
        node.Color = Script.MinecartPathNodeColor.Yellow
        node.Transparency = 1
        node.Size = Vector3.new(1.0, 1.0, 1.0)
        return
    end
    node.Color = color
    node.Material = Enum.Material.Neon
    node.Transparency = 0
    node.Shape = Enum.PartType.Ball
    node.Size = Vector3.new(0.7, 0.7, 0.7)
    return node
end

local function tPathfindNew(n: number)
    local create: tPathfind = {
        esp = false,
        room_number = n,
        real = {},
        fake = {},
        destroyed = false
    }
    return create
end

local function tGroupTrackNew(startNode: Part | nil): tGroupTrack
    local create: tGroupTrack = {
        nodes = startNode and {startNode} or {},
        hasStart = false,
        hasEnd   = false,
    }
    return create
end

function Script.Functions.Minecart.Pathfind(room: Model, lastRoom: number)
    if not (lastRoom >= 40 and lastRoom <= 49) and not (lastRoom >= 95 and lastRoom <= 100) then return end
    
    local nodes = room:WaitForChild("RunnerNodes", 5.0) --well, skill issue ig
    if (nodes == nil) then return end

    nodes = nodes:GetChildren()

    local numOfNodes = #nodes
    if numOfNodes <= 1 then return end --This is literally impossible but... umm. acutally, yea why not.

    --[[
        Pathfind is a computational expensive process to make, 
        however we don't have node loops, 
        so we can ignore a few verifications.
        If you want to understand how this is working, search for "Pathfiding Algorithms"

        The shortest explanation i can give is that, this is a custom pathfinding to find "gaps" between
        nodes and creating "path" groups. With the groups estabilished we can make the correct validations.
    ]]
    --Distance weights [DO NOT EDIT, unless something breaks...]
    local _shortW = 4
    local _longW = 24

    local doorModel = room:WaitForChild("Door", 5) -- Will be used to find the correct last node.

    local _startNode = nodes[1]
    local _lastNode = nil --we need to find this node.

    local _gpID = 1
    local stackNode = {} --Group all track groups here.
    stackNode[_gpID] = tGroupTrackNew()
    
    --Ensure sort all nodes properly (reversed)
    table.sort(nodes, function(a, b)
        local _Asub, _ = string.gsub(a.Name, "MinecartNode", "")
        local _Bsub, _ = string.gsub(b.Name, "MinecartNode", "")
        return tonumber(_Asub) > tonumber(_Bsub)
    end)

    local _last = 1
    for i= _last + 1, numOfNodes, 1 do
        local nodeA: Part = nodes[_last]
        local nodeB: Part = _lastNode and nodes[i] or doorModel

        local distance = (nodeA:GetPivot().Position - nodeB:GetPivot().Position).Magnitude

        local isEndNode = distance <= _shortW
        local isNodeNear = (distance > _shortW and distance <= _longW)

        local _currNodeTask = "Track"
        if isNodeNear or isEndNode then
            if not _lastNode then -- this will only be true, once.
                _currNodeTask = "End"
                _lastNode = nodeA
            end
        else
            _currNodeTask = "Fake"
        end

        --check if group is diff, ignore "End" or "Start" tasks
        if (_currNodeTask == "Fake" or _currNodeTask == "End") and _lastNode then
            _gpID += 1
            stackNode[_gpID] = tGroupTrackNew()
            if _currNodeTask == "End" then
                stackNode[_gpID].hasEnd = true
            end
        end
        table.insert(stackNode[_gpID].nodes, nodeA)

        _last = i
    end
    stackNode[_gpID].hasStart = true --after the reversed path finding, the last group has the start node.
    table.insert(stackNode[_gpID].nodes, _startNode)
    local hasMoreThanOneGroup = _gpID > 1

    local _closestNodes = {} --unwanted nodes if any
    local hasIncorrectPath = false -- if this is true, we're cooked. No path for you ):
    if hasMoreThanOneGroup then
        for _gpI, v: tGroupTrack in ipairs(stackNode) do
            _closestNodes[_gpI] = {}
            if _gpI <= 1 then continue end

            table.sort(v.nodes, function(a,b)
                local _Asub, _ = string.gsub(a.Name, "MinecartNode", "")
                local _Bsub, _ = string.gsub(b.Name, "MinecartNode", "")
                return tonumber(_Asub) < tonumber(_Bsub)
            end)

            local _gplast = 1
            local hasNodeJump = false
            for _gpS=_gplast+1, #v.nodes, 1 do
                local nodeA: Part = v.nodes[_gplast]
                local nodeB: Part = v.nodes[_gpS]

                local distance = (nodeA:GetPivot().Position - nodeB:GetPivot().Position).Magnitude

                hasNodeJump = (distance >= _longW)
                if not hasNodeJump then _gplast = _gpS continue end

                local nodeSearchPath = nodeB

                --Search again with the nodeSearchPath
                local closestDistance = math.huge

                local _gpFlast = #v.nodes
                for i = _gpFlast - 1, 1, -1 do
                    local fnode = v.nodes[_gpFlast]
                    local Sdistance = (nodeSearchPath:GetPivot().Position - fnode:GetPivot().Position).Magnitude
                    _gpFlast = i

                    if Sdistance == 0.00 then continue end --node is self

                    if Sdistance <= closestDistance then
                        closestDistance = Sdistance
                        table.insert(_closestNodes[_gpI], fnode)
                        table.remove(v.nodes, _gpFlast + 1)
                        continue
                    end
                    break
                end

                local _FoundAmount = #_closestNodes[_gpI]
                if _FoundAmount < 1 then 
                    hasIncorrectPath = true
                end
                break
            end
        end
    end

    if hasIncorrectPath then return end

    --finally, draw the correct path. gg
    local realNodes = {} --our precious nodes finally here :pray:
    local fakeNodes = {} --we hate you but ok
    for _gpFI, v: tGroupTrack in ipairs(stackNode) do
        local finalWrongNode = false
        if _gpFI == 1 and hasMoreThanOneGroup then
            finalWrongNode = true 
        end

        for _, vfinal in ipairs(v.nodes) do
            if finalWrongNode then
                table.insert(fakeNodes, vfinal)
                continue
            end
            table.insert(realNodes, vfinal)
        end

        --Draw wrong path calculated on DeepPath.
        for _, nfinal in ipairs(_closestNodes[_gpFI]) do
            table.insert(fakeNodes, nfinal)
        end
    end

    table.sort(realNodes, function(a, b)
        local _Asub, _ = string.gsub(a.Name, "MinecartNode", "")
        local _Bsub, _ = string.gsub(b.Name, "MinecartNode", "")
        return tonumber(_Asub) < tonumber(_Bsub)
    end)

    --build pathfind
    local buildPathfind = tPathfindNew(lastRoom)
    buildPathfind.real = realNodes
    buildPathfind.fake = fakeNodes
    table.insert(Script.MinecartPathfind, buildPathfind) --add to table

    Script.Functions.Minecart.DrawNodes()

    if Toggles.MinecartTeleport.Value and (lastRoom >= 45 and lastRoom <= 49) then
        Script.Functions.Minecart.NodeDestroy(tonumber(room.Name))
        Script.Functions.Minecart.Teleport(tonumber(room.Name))
    end
end

function Script.Functions.Minecart.NodeDestroy(roomNum: number)
    local roomConfig = Script.WhitelistConfig[roomNum]
    if not roomConfig then return end

    local _firstKeep = roomConfig.firstKeep
    local _lastKeep  = roomConfig.lastKeep

    local realNodes = nil
    local fakeNodes = nil
    for _, path: tPathfind in ipairs(Script.MinecartPathfind) do
        if path.room_number ~= roomNum then continue end
        if path.destroyed then continue end

        realNodes = path.real
        fakeNodes = path.fake
    end

    if realNodes then
        local _removeTotal = #realNodes - (_firstKeep + _lastKeep) --remove nodes that arent in the first or last
        for _ = 1, _removeTotal do
            local node = realNodes[_firstKeep + 1]
            node:Destroy()
            
            table.remove(realNodes, _firstKeep + 1)
        end
    else
        print("[nodedestroy]无法摧毁真实节点.")
    end

    if fakeNodes then
        --Destroy all the fake nodes
        for _, node in ipairs(fakeNodes) do
            node:Destroy()
        end
        fakeNodes = {} --if we now all the nodes will be destroyed then just make that.
    else
        print("[nodedestroy]无法摧毁假节点.")
    end

    print(string.format("[nodedestroy]任务完成,剩下：真实节点: %d | 假节点 %s", #realNodes, #fakeNodes))
end

local isMinecartTeleporting = false --for debug purpouses.
function Script.Functions.Minecart.Teleport(roomNum: number)
    if roomNum == 45 and not isMinecartTeleporting then
        isMinecartTeleporting = true
        task.spawn(function()
            local progressPart = Instance.new("Part", workspace) do
                progressPart.Anchored = true
                progressPart.CanCollide = false
                progressPart.Name = "_internal_mspaint_minecart_teleport"
                progressPart.Transparency = 1
            end
            shared.Notify:Alert({
                Title = "Minecart传送",
                Description = "Minecart Teleport准备好了！ 等待minecart...",

                Time = progressPart
            })

            local minecartRig
            local minecartRoot
            repeat task.wait(0.1) 
                minecartRig = shared.Camera:FindFirstChild("MinecartRig")
                if not minecartRig then continue end
                minecartRoot = minecartRig:FindFirstChild("Root")
            until minecartRig and minecartRoot

            if workspace:FindFirstChild("_internal_mspaint_minecart_teleport") then workspace:FindFirstChild("_internal_mspaint_minecart_teleport"):Destroy() end
            task.wait(3)

            for _, path: tPathfind in ipairs(Script.MinecartPathfind) do
                local roomOfThePath = path.room_number

                if roomOfThePath >= 45 then -- ignore ground chase
                    local getLastNode = path.real[#path.real]

                    repeat 
                        task.wait()
                        minecartRoot.CFrame = getLastNode.CFrame
                    until workspace.CurrentRooms[tostring(Script.CurrentRoom)]:WaitForChild("Door"):GetAttribute("Opened")
                    task.wait(2)
                    if Script.CurrentRoom == 49 then break end
                end
            end
        end)
    end
end


--If ESP Toggle is changed, you can call this function directly.
function Script.Functions.Minecart.DrawNodes()
    local pathESP_enabled = Toggles.MinecartPathVisualiser.Value
    local espRealColor = if pathESP_enabled then Script.MinecartPathNodeColor.Green else Script.MinecartPathNodeColor.Disabled
    
    for idx, path: tPathfind in ipairs(Script.MinecartPathfind) do
        if path.esp and pathESP_enabled then continue end -- if status is unchanged.

        --[ESP] Draw the real path
        local realPath = path.real
        for _, _real in pairs(realPath) do
            changeNodeColor(_real, espRealColor)
        end

        path.esp = pathESP_enabled --update if path esp status was changed.
    end
end
end)() end,
    [42] = function()local wax,script,require=ImportGlobals(42)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

--// Functions \\--
function Script.Functions.GetPadlockCode(paper: Tool)
    if paper:FindFirstChild("UI") then
        local code = {}

        for _, image: ImageLabel in pairs(paper.UI:GetChildren()) do
            if image:IsA("ImageLabel") and tonumber(image.Name) then
                code[image.ImageRectOffset.X .. image.ImageRectOffset.Y] = {tonumber(image.Name), "_"}
            end
        end

        for _, image: ImageLabel in pairs(shared.PlayerGui.PermUI.Hints:GetChildren()) do
            if image.Name == "Icon" then
                if code[image.ImageRectOffset.X .. image.ImageRectOffset.Y] then
                    code[image.ImageRectOffset.X .. image.ImageRectOffset.Y][2] = image.TextLabel.Text
                end
            end
        end

        local normalizedCode = {}
        for _, num in pairs(code) do
            normalizedCode[num[1]] = num[2]
        end

        return table.concat(normalizedCode)
    end

    return "_____"
end
end)() end,
    [43] = function()local wax,script,require=ImportGlobals(43)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

--// Functions \\--
function Script.Functions.DistanceFromCharacter(position: Instance | Vector3, getPositionFromCamera: boolean | nil)
    if not position then return 9e9 end
    if typeof(position) == "Instance" then
        position = position:GetPivot().Position
    end

    if getPositionFromCamera and (shared.Camera or workspace.CurrentCamera) then
        local cameraPosition = if shared.Camera then shared.Camera.CFrame.Position else workspace.CurrentCamera.CFrame.Position

        return (cameraPosition - position).Magnitude
    end

    if shared.RootPart then
        return (shared.RootPart.Position - position).Magnitude
    elseif shared.Camera then
        return (shared.Camera.CFrame.Position - position).Magnitude
    end

    return 9e9
end

function Script.Functions.IsInViewOfPlayer(instance: Instance, range: number | nil, exclude: table | nil)
    if not instance then return false end
    if not Script.Collision then return false end

    local raycastParams = RaycastParams.new()
    raycastParams.FilterType = Enum.RaycastFilterType.Exclude

    local filter = exclude or {}
    table.insert(filter, shared.Character)

    raycastParams.FilterDescendantsInstances = filter

    local direction = (instance:GetPivot().Position - Script.Collision.Position).unit * (range or 9e9)
    local raycast = workspace:Raycast(Script.Collision.Position, direction, raycastParams)

    if raycast and raycast.Instance then
        if raycast.Instance:IsDescendantOf(instance) or raycast.Instance == instance then
            return true
        end

        return false
    end

    return false
end
end)() end,
    [45] = function()local wax,script,require=ImportGlobals(45)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
Script.PresetHelper = wax.shared.FileHelper.new("mspaint/doors/presets")
Script.ElevatorPresetData = {}
Script.ElevatorPresets = {}

-- Functions
function Script.Functions.CreatePreset(name: string, data: table)
    local presetData = Script.Functions.EnforceTypes(data, {
        Floor = "Hotel",
        MaxPlayers = 1,
        Modifiers = nil,
        FriendsOnly = true
    })

    Script.PresetHelper.CreateFile(name .. ".json", shared.HttpService:JSONEncode(presetData))
end

function Script.Functions.LoadPresets()
    table.clear(Script.ElevatorPresets)
    table.clear(Script.ElevatorPresetData)

    for _, file in pairs(Script.PresetHelper.GetFilesClean()) do
        local success, ret = pcall(function()
            local data = Script.PresetHelper.ReadFile(file .. ".json")
            return shared.HttpService:JSONDecode(data)
        end)

        if success then
            Script.ElevatorPresetData[file] = Script.Functions.EnforceTypes(ret, {
                Floor = "Hotel",
                MaxPlayers = 1,
                Modifiers = nil,
                FriendsOnly = true
            })

            table.insert(Script.ElevatorPresets, file)
        else
            shared.Notify:Alert({
                Description = "Failed to load preset: " .. file
            })
        end
    end

    Options.Elevator_PresetList:SetValues(Script.ElevatorPresets)
    Options.Elevator_PresetList:SetValue(nil)
end

function Script.Functions.LoadPreset(name: string)
    local success, ret = pcall(function()
        local data = Script.PresetHelper.ReadFile(name .. ".json")
        return shared.HttpService:JSONDecode(data)
    end)

    if not success then
        shared.Notify:Alert({
            Description = "Failed to load preset: " .. name .. ".json"
        })
        return
    end

    local presetData = Script.Functions.EnforceTypes(ret, {
        Floor = "Hotel",
        MaxPlayers = 1,
        Modifiers = nil,
        FriendsOnly = true
    })

    local data = {
        ["FriendsOnly"] = presetData.FriendsOnly,
        ["Destination"] = presetData.Floor,
        ["Mods"] = presetData.Modifiers or {},
        ["MaxPlayers"] = tostring(presetData.MaxPlayers)
    }

    Script.CreateElevator:FireServer(data)

    shared.Notify:Alert({
        Description = "Loaded elevator preset: " .. name
    })
end
end)() end,
    [47] = function()local wax,script,require=ImportGlobals(47)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

Script.AimbotRayParams = RaycastParams.new()
Script.AimbotRayParams.FilterType = Enum.RaycastFilterType.Exclude

--// Functions \\--
function Script.Functions.AimbotCondition(player: Player)
    if not (player ~= shared.LocalPlayer and player.Character and player.Character[Options.AimbotTargetPart.Value] and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0) then return end
    if Toggles.AimbotTeam.Value and shared.LocalPlayer.Team ~= nil and player.Team == shared.LocalPlayer.Team then return end

    return true
end

function Script.Functions.WallCheck(partPosition: Vector3)
    Script.AimbotRayParams.FilterDescendantsInstances = {shared.Character}
    return workspace:Raycast(shared.Camera.CFrame.Position, shared.Camera.CFrame.Position - partPosition, Script.AimbotRayParams) ~= nil
end

function Script.Functions.GetClosestFromMouse()
    local closestDistance = math.huge
    local closestCharacter = nil

    for _, player in pairs(shared.Players:GetPlayers()) do
        if not Script.Functions.AimbotCondition(player) then continue end

        local charPos, onScreen = shared.Camera:WorldToViewportPoint(player.Character[Options.AimbotTargetPart.Value].Position)
        if not onScreen then continue end

        if Toggles.AimbotWall.Value and Script.Functions.WallCheck(player.Character[Options.AimbotTargetPart.Value].Position) then continue end

        local playerDistance = (shared.UserInputService:GetMouseLocation() - Vector2.new(charPos.X, charPos.Y)).Magnitude

        if playerDistance < closestDistance then
            closestDistance = playerDistance
            closestCharacter = player.Character
        end
    end

    return closestCharacter
end

function Script.Functions.GetClosestFromCharacter()
    local closestDistance = math.huge
    local closestCharacter = nil

    for _, player in pairs(shared.Players:GetPlayers()) do
        if not Script.Functions.AimbotCondition(player) then continue end

        local _, onScreen = shared.Camera:WorldToViewportPoint(player.Character[Options.AimbotTargetPart.Value].Position)
        if not onScreen then continue end

        if Toggles.AimbotWall.Value and Script.Functions.WallCheck(player.Character[Options.AimbotTargetPart.Value].Position) then continue end

        local playerDistance = Script.Functions.DistanceFromCharacter(player.Character)

        if playerDistance < closestDistance then
            closestDistance = playerDistance
            closestCharacter = player.Character
        end
    end

    return closestCharacter
end
end)() end,
    [48] = function()local wax,script,require=ImportGlobals(48)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

--// Functions \\--
function Script.Functions.ChildCheck(child)
    if not (child:IsA("BasePart") or child:IsA("Decal")) then
        return
    end

    if child:IsA("BasePart") then
        if Toggles.AntiLag.Value then
            if not child:GetAttribute("Material") then child:SetAttribute("Material", child.Material) end
            if not child:GetAttribute("Reflectance") then child:SetAttribute("Reflectance", child.Reflectance) end
    
            child.Material = Enum.Material.Plastic
            child.Reflectance = 0
        end
    elseif child:IsA("Decal") and Toggles.AntiLag.Value then
        if not child:GetAttribute("Transparency") then child:SetAttribute("Transparency", child.Transparency) end
        child.Transparency = 1
    end
end


end)() end,
    [49] = function()local wax,script,require=ImportGlobals(49)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

--// Functions \\--
function Script.Functions.SetupChildConnection()
    for _, child in pairs(shared.Workspace:GetDescendants()) do
        task.spawn(Script.Functions.ChildCheck, child)
    end

    shared.Connections["ChildConnection"] = shared.Workspace.DescendantAdded:Connect(function(child)
        task.delay(0.1, Script.Functions.ChildCheck, child)
    end)
end

function Script.Functions.SetupCharacterConnection(newCharacter)
    shared.Character = newCharacter
    shared.Humanoid = shared.Character:WaitForChild("Humanoid")
    if shared.Humanoid then
        Script.LastSpeed = shared.Humanoid.WalkSpeed

        shared.Twerk:Setup()
        if Toggles.Twerk.Value then
            shared.Twerk:Enable()
        end

        shared.Connect:GiveSignal(shared.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
            if shared.Humanoid.WalkSpeed ~= Options.WalkSpeed.Value then
                Script.LastSpeed = shared.Humanoid.WalkSpeed
                if Toggles.SpeedHack.Value then shared.Humanoid.WalkSpeed = Options.WalkSpeed.Value end
            end
        end))


        shared.Connect:GiveSignal(shared.Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
            if not shared.Humanoid.UseJumpPower then return end
            if shared.Humanoid.JumpPower ~= Options.JumpPower.Value then
                Script.LastJumpPower = shared.Humanoid.JumpPower
                if Toggles.JumpPowerHack.Value then shared.Humanoid.JumpPower = Options.JumpPower.Value end
            end
        end))
        shared.Connect:GiveSignal(shared.Humanoid:GetPropertyChangedSignal("JumpHeight"):Connect(function()
            if shared.Humanoid.UseJumpPower then return end
            if shared.Humanoid.JumpHeight ~= Options.JumpPower.Value then
                Script.LastJumpPower = shared.Humanoid.JumpHeight
                if Toggles.JumpPowerHack.Value then shared.Humanoid.JumpHeight = Options.JumpPower.Value end
            end
        end))
    end

    shared.RootPart = shared.Character:WaitForChild("HumanoidRootPart")
end

function Script.Functions.SetupOtherPlayerConnection(player: Player)
    if player.Character then
        if Toggles.PlayerESP and Toggles.PlayerESP.Value then
            Script.Functions.PlayerESP(player)
        end
    end

    shared.Connect:GiveSignal(player.CharacterAdded:Connect(function(newCharacter)
        task.delay(0.1, function()
            if Toggles.PlayerESP and Toggles.PlayerESP.Value then
                Script.Functions.PlayerESP(player)
            end
        end)
    end))
end

function Script.Functions.SetupBloxstrapRPCConnection()
    shared.Connect:GiveSignal(shared.Players.PlayerAdded:Connect(function(player)
        Script.Functions.UpdateBloxstrapRPC()
    end))

    shared.Connect:GiveSignal(shared.Players.PlayerRemoving:Connect(function(player)
        Script.Functions.UpdateBloxstrapRPC()
    end))
end
end)() end,
    [50] = function()local wax,script,require=ImportGlobals(50)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script
local ESPLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/MS-ESP/refs/heads/main/source.lua"))()
shared.ESPLibrary = ESPLibrary

type ESP = {
    Color: Color3,
    Object: Instance,
    Offset: Vector3,
    Text: string,
    TextParent: Instance,
    Type: string,
    Player: Player,
}

function Script.Functions.ESP(args: ESP)
    if not args.Object then return Script.Functions.Warn("ESP Object is nil") end

    local ESPManager = {
        Object = args.Object,
        Text = args.Text or "No Text",
        Color = args.Color or Color3.new(),
        Offset = args.Offset or Vector3.zero,
        Type = args.Type or "None",
        Player = args.Player or false,
        OnDestroy = args.OnDestroy or nil,

        Invisible = false,
        Humanoid = nil
    }

    local ESPInstance = ESPLibrary.ESP.Highlight({
        Name = ESPManager.Text,
        Model = ESPManager.Object,
        StudsOffset = ESPManager.Offset,

        FillColor = ESPManager.Color,
        OutlineColor = ESPManager.Color,
        TextColor = ESPManager.Color,
        TextSize = Options.ESPTextSize.Value or 16,

        FillTransparency = Options.ESPFillTransparency.Value,
        OutlineTransparency = Options.ESPOutlineTransparency.Value,

        Tracer = {
            Enabled = true,
            From = Options.ESPTracerStart.Value,
            Color = ESPManager.Color
        },
        
        Arrow = {
            Enabled = true,
            CenterOffset = Options.ESPArrowCenterOffset.Value,
            Color = ESPManager.Color
        },

        OnDestroy = ESPManager.OnDestroy or function()
            if ESPManager.Object.PrimaryPart and ESPManager.Invisible then ESPManager.Object.PrimaryPart.Transparency = 1 end
            if ESPManager.Humanoid then ESPManager.Humanoid:Destroy() end
        end
    })
    
    if ESPManager.Player then
        Script.ESPTable[ESPManager.Type][ESPManager.Player] = ESPInstance
    else
        table.insert(Script.ESPTable[ESPManager.Type], ESPInstance)
    end

    return ESPInstance
end

function Script.Functions.PlayerESP(player: Player)
    if not (player.Character and player.Character.PrimaryPart and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0) then return end

    local playerEsp = Script.Functions.ESP({
        Type = "Player",
        Object = player.Character,
        Text = string.format("%s [%.1f]", player.Name, player.Character.Humanoid.Health),
        TextParent = player.Character.PrimaryPart,
        Player = player,
        Color = if Toggles.ESPTeamColor.Value then player.TeamColor.Color else Options.PlayerEspColor.Value
    })

    Script.FeatureConnections.Player[player.Name .. "TeamColor"] = player:GetPropertyChangedSignal("TeamColor"):Connect(function()
        if Toggles.ESPTeamColor.Value then
            playerEsp.Update({
                FillColor = player.TeamColor.Color,
                OutlineColor = player.TeamColor.Color,
                TextColor = player.TeamColor.Color,
            })
        end
    end)

    Script.FeatureConnections.Player[player.Name .. "Health"] = player.Character.Humanoid.HealthChanged:Connect(function(newHealth)
        if newHealth > 0 then
            playerEsp.SetText(string.format("%s [%.1f]", player.Name, newHealth))
        else
            if Script.FeatureConnections.Player[player.Name .. "Health"] then Script.FeatureConnections.Player[player.Name .. "Health"]:Disconnect() end
            playerEsp.Destroy()
        end
    end)
end
end)() end,
    [51] = function()local wax,script,require=ImportGlobals(51)local ImportGlobals return (function(...)--// Linoria \\--
local Toggles = shared.Toggles
local Options = shared.Options

--// Variables \\--
local Script = shared.Script

--// Functions \\--
function Script.Functions.DistanceFromCharacter(position: Instance | Vector3, getPositionFromCamera: boolean | nil)
    if not position then return 9e9 end
    if typeof(position) == "Instance" then
        position = position:GetPivot().Position
    end

    if getPositionFromCamera and (shared.Camera or workspace.CurrentCamera) then
        local cameraPosition = if shared.Camera then shared.Camera.CFrame.Position else workspace.CurrentCamera.CFrame.Position

        return (cameraPosition - position).Magnitude
    end

    if shared.RootPart then
        return (shared.RootPart.Position - position).Magnitude
    elseif shared.Camera then
        return (shared.Camera.CFrame.Position - position).Magnitude
    end

    return 9e9
end
end)() end,
    [53] = function()local wax,script,require=ImportGlobals(53)local ImportGlobals return (function(...)local BloxstrapRPC = {}

type RichPresence = {
    details:     string?,
    state:       string?,
    timeStart:   number?,
    timeEnd:     number?,
    smallImage:  RichPresenceImage?,
    largeImage:  RichPresenceImage?
}

type RichPresenceImage = {
    assetId:    number?,
    hoverText:  string?,
    clear:      boolean?,
    reset:      boolean?
}

function BloxstrapRPC.SendMessage(command: string, data: any)
    local json = shared.HttpService:JSONEncode({
        command = command, 
        data = data
    })
    
    print("[BloxstrapRPC] " .. json)
end

function BloxstrapRPC.SetRichPresence(data: RichPresence)
    if data.timeStart ~= nil then
        data.timeStart = math.round(data.timeStart)
    end
    
    if data.timeEnd ~= nil then
        data.timeEnd = math.round(data.timeEnd)
    end
    
    BloxstrapRPC.SendMessage("SetRichPresence", data)
end 

return BloxstrapRPC
end)() end,
    [54] = function()local wax,script,require=ImportGlobals(54)local ImportGlobals return (function(...)local Connect = {}
shared.Connections = {}

function Connect:GiveSignal(signal: RBXScriptConnection | RBXScriptSignal)
    table.insert(shared.Connections, signal)
end

function Connect:DisconnectSignal(signal: RBXScriptConnection | RBXScriptSignal)
    if not signal then return end

    if signal.Connected then
        signal:Disconnect()
    end
end

return Connect
end)() end,
    [55] = function()local wax,script,require=ImportGlobals(55)local ImportGlobals return (function(...)local ExecutorSupport = {}
local ExecutorSupportInfo = {}

local executorName = string.split(identifyexecutor() or "None", " ")[1]
local brokenFeatures = {
    ["Arceus"] = { "require" },
    ["Codex"] = { "require" },
    ["VegaX"] = { "require" },
}

function test(name: string, func: () -> (), shouldCallback: boolean)
    if typeof(brokenFeatures[executorName]) == "table" and table.find(brokenFeatures[executorName], name) then return false end -- garbage executor 🤯
    
    local success, errorMessage = false, nil
    if shouldCallback ~= false then
        success, errorMessage = pcall(func)
    else
        success = typeof(func) == "function"
    end
    
    ExecutorSupportInfo[name] = string.format("%s [%s]%s", (if success then "✅" else "❌"), name, (if errorMessage then (": " .. tostring(errorMessage)) else ""))
    ExecutorSupport[name] = success
    return success
end

test("readfile", readfile, false)
test("listfiles", listfiles, false)
test("writefile", writefile, false)
test("makefolder", makefolder, false)
test("appendfile", appendfile, false)
test("isfile", isfile, false)
test("isfolder", isfolder, false)
test("delfile", delfile, false)
test("delfolder", delfolder, false)
test("loadfile", loadfile, false)

test("queue_on_teleport", queue_on_teleport, false)
test("getcallingscript", getcallingscript, false)

test("require", function()
    --wax.require(shared.Players.LocalPlayer:WaitForChild("PlayerScripts"):FindFirstChildWhichIsA("ModuleScript", true))
    wax.require(shared.Players.LocalPlayer:WaitForChild("PlayerScripts", math.huge):WaitForChild("PlayerModule", 5))
end)
test("hookmetamethod", function()
    local object = setmetatable({}, { __index = newcclosure(function() return false end), __metatable = "Locked!" })
    local ref = hookmetamethod(object, "__index", function() return true end)
    assert(object.test == true, "Failed to hook a metamethod and change the return value")
    assert(ref() == false, "Did not return the original function")
end)
test("getnamecallmethod", function()
    pcall(function()
        game:NAMECALL_METHODS_ARE_IMPORTANT()
    end)

    assert(getnamecallmethod() == "NAMECALL_METHODS_ARE_IMPORTANT", "getnamecallmethod did not return the real namecall method")
end)
test("hookfunction", function()
    local function test()
		return true
	end
	local ref = hookfunction(test, function()
		return false
	end)
	assert(test() == false, "Function should return false")
	assert(ref() == true, "Original function should return true")
	assert(test ~= ref, "Original function should not be same as the reference")
end)
test("firesignal", function()
    local event = Instance.new("BindableEvent")
    local fired = false

    event.Event:Once(function(value) fired = value end)
        
    firesignal(event.Event, true)
    task.wait(0.1)
    event:Destroy()

    assert(fired, "Failed to fire a BindableEvent")
end)
local canFirePrompt = test("fireproximityprompt", function()
    local prompt = Instance.new("ProximityPrompt", Instance.new("Part", shared.Workspace))
    local triggered = false

    prompt.Triggered:Once(function() triggered = true end)

    fireproximityprompt(prompt)
    task.wait(0.1)

    prompt.Parent:Destroy()
    assert(triggered, "Failed to fire proximity prompt")
end)

--// Fixes \\--
if not canFirePrompt then
    local function fireProximityPrompt(prompt: ProximityPrompt, lookToPrompt, doNotDoInstant)
        if not prompt:IsA("ProximityPrompt") then
            return error("ProximityPrompt expected, got " .. typeof(prompt))
        end

        local connection
        local promptPosition = prompt.Parent:GetPivot().Position
    
        local originalEnabled = prompt.Enabled
        local originalHold = prompt.HoldDuration
        local originalLineOfSight = prompt.RequiresLineOfSight
        local originalCamCFrame = workspace.CurrentCamera.CFrame
        
        prompt.Enabled = true
        prompt.RequiresLineOfSight = false
        if doNotDoInstant ~= true then
            prompt.HoldDuration = 0
        end

        if lookToPrompt == true then
            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, promptPosition)
            connection = workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(function()
                workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, promptPosition)
            end)

            task.wait()
        end

        prompt:InputHoldEnd()
        prompt:InputHoldBegin()
        task.wait(prompt.HoldDuration + 0.05)
        prompt:InputHoldEnd()

        if connection then connection:Disconnect() end

        prompt.Enabled = originalEnabled
        prompt.HoldDuration = originalHold
        prompt.RequiresLineOfSight = originalLineOfSight
        if lookToPrompt == true then workspace.CurrentCamera.CFrame = originalCamCFrame end
    end

    shared.fireproximityprompt = function(...)
        return fireProximityPrompt(...)
    end

    shared.forcefireproximityprompt = function(prompt)
        return fireProximityPrompt(prompt, true)
    end
else
    shared.fireproximityprompt = fireproximityprompt
    shared.forcefireproximityprompt = fireproximityprompt
end

if not isnetworkowner then
    function isnetowner(part: BasePart)
        if not part:IsA("BasePart") then
            return error("BasePart expected, got " .. typeof(part))
        end

        return part.ReceiveAge == 0
    end
    
    shared.isnetworkowner = isnetowner
else
    shared.isnetworkowner = isnetworkowner
end

shared.firetouch = firetouchinterest or firetouchtransmitter

--// Load \\--
ExecutorSupport["_ExecutorName"] = executorName
ExecutorSupport["_SupportsFileSystem"] = (ExecutorSupport["isfile"] and ExecutorSupport["delfile"] and ExecutorSupport["listfiles"] and ExecutorSupport["writefile"] and ExecutorSupport["makefolder"] and ExecutorSupport["isfolder"])

for name, result in pairs(ExecutorSupport) do
    if ExecutorSupportInfo[name] then 
        print(ExecutorSupportInfo[name]) 
    elseif name:gsub("_", "") ~= name then
        print("🛠️ [" .. tostring(name) .. "]", tostring(result))
    else
        print("❓ [" .. tostring(name) .. "]", tostring(result))
    end
end

return ExecutorSupport
end)() end,
    [56] = function()local wax,script,require=ImportGlobals(56)local ImportGlobals return (function(...)local FileHelper = {}

function FileHelper.new(basepath: string)
    local self = setmetatable({}, {
        __index = function(self, key)
            local accessed = rawget(self, key)

            if typeof(accessed) == "function" then
                return function(...)
                    if not shared.ExecutorSupport["_SupportsFileSystem"] then return end
                    
                    return accessed(self, ...)
                end
            end

            return accessed
        end
    })

    self.BasePath = basepath

    self.BuildPresetStructure = function()
        if not isfolder(self.BasePath) then
            makefolder(self.BasePath)
        end
    end

    self.CreateFile = function(name: string, data: string)
        self.BuildPresetStructure()
        writefile(self.BasePath .. "/" .. name, data)
    end

    self.AppendFile = function(name: string, data: string)
        self.BuildPresetStructure()
        appendfile(self.BasePath .. "/" .. name, data)
    end

    self.GetFiles = function()
        return listfiles(self.BasePath)
    end

    self.ReadFile = function(name: string)
        return readfile(self.BasePath .. "/" .. name)
    end

    self.IsFile = function(name: string)
        return isfile(self.BasePath .. "/" .. name)
    end

    self.DeleteFile = function(name: string)
        delfile(self.BasePath .. "/" .. name)
    end

    self.GetFilesClean = function()
        local files = {}
        for _, file in pairs(listfiles(self.BasePath)) do
            local name = FileHelper.GetFileNameFromPath(file)
            if name then
                table.insert(files, name)
            end
        end

        return files
    end

    self.GetFileNameFromPath = function(path: string, extention: string | nil)
        return FileHelper.GetFileNameFromPath(path, extention)
    end

    return self
end

function FileHelper.GetFileNameFromPath(path: string, extention: string | nil)
    local fileExtension = extention or ".json"

    if path:sub(-#fileExtension) == fileExtension then
        path = path:gsub("\\", "/")

        local pos = path:find("/[^/]*$")
        if pos then
            return path:sub(pos + 1, -#fileExtension - 1)
        end
    end
    
    return nil
end

return FileHelper
end)() end,
    [58] = function()local wax,script,require=ImportGlobals(58)local ImportGlobals return (function(...)-- Addons
if getgenv().mspaint_disable_addons or getgenv().mspaint_addons_activated then 
    return {}
end

task.spawn(function()
    if not wax.shared.ExecutorSupport["_SupportsFileSystem"] then
        warn("[mspaint] Your executor doesn't support the FileSystem API. Addons will not work.")
        return
    end

    getgenv().mspaint_addons_activated = true

    if not isfolder("mspaint/addons") then
        print("[mspaint] Addons folder doesn't exist. Creating...")
        makefolder("mspaint/addons")
        return
    end
    
    repeat task.wait() until getgenv().mspaint_loaded == true
    print("[mspaint] Loading addons...")
    
    local function AddAddonElement(LinoriaElement, AddonName, Element)
        if not LinoriaElement then
            warn("[mspaint] Element '" .. tostring(Element.Name) .. " (" .. tostring(Element.Type) .. ")' didn't load: Invalid Linoria element.")
            return
        end

        if typeof(Element) ~= "table" then
            warn("[mspaint] Element '" .. tostring(Element.Name) .. " (" .. tostring(Element.Type) .. ")' didn't load: Invalid data.")
            return
        end 

        if typeof(Element.Type) ~= "string" then 
            warn("[mspaint] Element '" .. tostring(Element.Name) .. " (" .. tostring(Element.Type) .. ")' didn't load: Invalid name.")
            return 
        end

        if typeof(AddonName) ~= "string" then 
            warn("[mspaint] Element '" .. tostring(Element.Name) .. " (" .. tostring(Element.Type) .. ")' didn't load: Invalid addon name.")
            return 
        end

        
        if Element.Type:sub(1, 3) == "Add" then Element.Type = Element.Type:sub(4) end

        -- Elements with no Arguments
        if Element.Type == "Divider" then
            return LinoriaElement:AddDivider()
        end

        if Element.Type == "DependencyBox" then
            return LinoriaElement:AddDependencyBox()
        end

        if typeof(Element.Name) ~= "string" then 
            warn("[mspaint] Element '" .. tostring(Element.Name) .. " (" .. tostring(Element.Type) .. ")' didn't load: Invalid name.")
            return 
        end

        -- Elements with Arguments
        if typeof(Element.Arguments) == "table" then
            if Element.Type == "Label" then
                return LinoriaElement:AddLabel(table.unpack(Element.Arguments))
            end

            if Element.Type == "Toggle" then
                return LinoriaElement:AddToggle(AddonName .. "_" .. Element.Name, Element.Arguments)
            end
            
            if Element.Type == "Button" then
                return LinoriaElement:AddButton(Element.Arguments)
            end
            
            if Element.Type == "Slider" then
                return LinoriaElement:AddSlider(AddonName .. "_" .. Element.Name, Element.Arguments)
            end
            
            if Element.Type == "Input" then
                return LinoriaElement:AddInput(AddonName .. "_" .. Element.Name, Element.Arguments)
            end
            
            if Element.Type == "Dropdown" then
                return LinoriaElement:AddInput(AddonName .. "_" .. Element.Name, Element.Arguments)
            end
            
            if Element.Type == "ColorPicker" then
                return LinoriaElement:AddColorPicker(AddonName .. "_" .. Element.Name, Element.Arguments)        
            end
            
            if Element.Type == "KeyPicker" then
                return LinoriaElement:AddKeyPicker(AddonName .. "_" .. Element.Name, Element.Arguments)
            end
        end

        warn("[mspaint] Element '" .. tostring(Element.Name) .. " (" .. tostring(Element.Type) .. ")' didn't load: Invalid element type.")
        return
    end
    
    local AddonTab, LastGroupbox = nil, "Right"
    
    local function createAddonTab(hasAddons: boolean)
        if not AddonTab then
            AddonTab = shared.Window:AddTab("插件[测试版]")
        end
        
        AddonTab:UpdateWarningBox({
            Visible = true,
            Title = "警告",
            Text =  (if not hasAddons then "你的插件文件夹是空的！" else "此选项卡适用于为MSPAINT制作的未官方插件. 我们对您将使用的插件负责.自从您执行第三方脚本以来,您将自己处于危险之中.")
        })
    end

    local containAddonsLoaded = false
    createAddonTab(false)
    
    for _, file in pairs(listfiles("mspaint/addons")) do
        print("[mspaint] Loading addon '" .. string.gsub(file, "mspaint/addons/", "") .. "'...")
        if file:sub(#file - 3) ~= ".lua" and file:sub(#file - 4) ~= ".luau" and file:sub(#file - 7) ~= ".lua.txt" then continue end
        
        local success, errorMessage = pcall(function()
            local fileContent = readfile(file)
            local addon = loadstring(fileContent)()

            if typeof(addon.Name) ~= "string" or typeof(addon.Elements) ~= "table" then
                warn("Addon '" .. string.gsub(file, "mspaint/addons/", "") .. "' didn't load: Invalid Name/Elements.")
                return 
            end

            if typeof(addon.Game) == "string" then
                if string.lower(addon.Game) ~= string.lower(shared.ScriptLoader) and addon.Game ~= "*" then
                    warn("Addon '" .. string.gsub(file, "mspaint/addons/", "") .. "' didn't load: Wrong game.")
                    return
                end
            elseif typeof(addon.Game) == "table" then
                for i, addonGame in pairs(addon.Game) do
                    addon.Game[i] = string.lower(addonGame)
                end

                if not table.find(addon.Game, string.lower(shared.ScriptLoader)) then
                    warn("Addon '" .. string.gsub(file, "mspaint/addons/", "") .. "' didn't load: Wrong game.")
                    return
                end
            else
                warn("Addon '" .. string.gsub(file, "mspaint/addons/", "") .. "' didn't load: Invalid GameId.")
                return
            end

            addon.Name = addon.Name:gsub("%s+", "")
            if typeof(addon.Title) ~= "string" then
                addon.Title = addon.Name
            end

            if not AddonTab then createAddonTab(true) end
            
            local AddonGroupbox = if LastGroupbox == "Right" then AddonTab:AddLeftGroupbox(addon.Title) else AddonTab:AddRightGroupbox(addon.Title)
            LastGroupbox = if LastGroupbox == "Right" then "Left" else "Right"
            if typeof(addon.Description) == "string" then
                AddonGroupbox:AddLabel(addon.Description, true)
            end

            local function loadElements(linoriaMainElement, elements)
                if not elements or typeof(elements) ~= "table" then return end

                for _, element in pairs(elements) do                      
                    local linoriaElement = AddAddonElement(linoriaMainElement, addon.Name, element)
                    
                    loadElements(linoriaElement, element.Elements)
                end
            end

            loadElements(AddonGroupbox, addon.Elements)
        end)

        if not success then
            warn("[mspaint]无法加载addon '" .. string.gsub(file, "mspaint /插件/", "") .. "':", errorMessage)
        else
            containAddonsLoaded = true
        end
    end
    
    createAddonTab(containAddonsLoaded)
end)

return {}
end)() end,
    [59] = function()local wax,script,require=ImportGlobals(59)local ImportGlobals return (function(...)local UICreator = {}

local repo = "https://raw.githubusercontent.com/deividcomsono/LinoriaLib/refs/heads/main/"

shared.Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

shared.Toggles = getgenv().Linoria.Toggles
shared.Options = getgenv().Linoria.Options

getgenv()._internal_unload_mspaint = function()
    getgenv().mspaint_loading = false
    getgenv().mspaint_loaded = false
    task.spawn(shared.Library.Unload)
end

function UICreator:CreateWindow()
    local Window = shared.Library:CreateWindow({
        Title = "xgo 汉化°̥̥̥̥̥̥̥̥̥MSv3 °̥̥̥̥̥̥" .. shared.ScriptName,
        Center = true,
        AutoShow = true,
        Resizable = true,
        NotifySide = "Right",
        ShowCustomCursor = true,
        TabPadding = 2,
        MenuFadeTime = 0
    })

    --// Notificatins \\--
    shared.NotifyStyle = "Linoria"
    shared.NotifyVolume = 2
    shared.Notify = require("Notify")

    --// Checker \\--
    shared.CheckToggle = function(toggleName: string, value: boolean)
        return shared.Toggles[toggleName] and shared.Toggles[toggleName].Value == value
    end
    shared.CheckOption = function(optionName: string, value: any)
        return shared.Options[optionName] and (typeof(shared.Options[optionName].Value) == "table" and shared.Options[optionName].Value[value] or shared.Options[optionName].Value == value)
    end

    --// Unload Handler \\--
    shared.Library:OnUnload(function()
        print("卸载...")

        shared.Fly:Stop()

        for _, connection in pairs(shared.Connections) do
            connection:Disconnect()
        end

        getgenv().mspaint_loading = false
        getgenv().mspaint_loaded = false
        shared.Library.Unloaded = true
        print("卸载!")
    end)

    return Window
end

function UICreator:CreateSettingsTab()
    local SettingsTab = shared.Window:AddTab("UI设置")

    local MenuGroup = SettingsTab:AddLeftGroupbox("选单")
    local CreditsGroup = SettingsTab:AddRightGroupbox("信息  xgo")

    MenuGroup:AddToggle("ExecuteOnTeleport", { Default = false, Text = "在传送上执行" })
    MenuGroup:AddToggle("KeybindMenuOpen", { Default = false, Text = "打开重要功能菜单", Callback = function(value) shared.Library.KeybindFrame.Visible = value end})
    MenuGroup:AddToggle("ShowCustomCursor", {Text = "自定义光标", Default = true, Callback = function(Value) shared.Library.ShowCustomCursor = Value end})
    MenuGroup:AddDivider()
    MenuGroup:AddLabel("菜单绑定"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "菜单键控" })
    MenuGroup:AddButton("加入 Discord", function()
        local Inviter = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
        Inviter.Join("https://discord.com/invite/cfyMptntHr")
        Inviter.Prompt({
            name = "mspaint",
            invite = "https://discord.com/invite/cfyMptntHr",
        })
    end):AddButton("复制链接", function()
        if setclipboard then
            setclipboard("https://discord.com/invite/cfyMptntHr")
            shared.Library:Notify("复制的discord链接到剪贴板!")
        else
            shared.Library:Notify("discord链接：https://discord.com/invite/cfymptnthth", 10)
        end
    end)
    MenuGroup:AddButton("加入xgo Hub群聊", function()
        local Inviter = loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/114514.lua"))()
        Inviter.Join("259461151")
        Inviter.Prompt({
            name = "xgo Hub",
            invite = "259461151",
        })
    end):AddButton("复制群聊", function()
        if setclipboard then
            setclipboard("259461151")
            shared.Library:Notify("群聊已复制到菜单 欢迎加入!")
        else
            shared.Library:Notify("xgo Hub群聊：259461151", 10)
        end
    end)
    MenuGroup:AddButton("关闭UI（关闭脚本）", function() shared.Library:Unload() end)

    CreditsGroup:AddLabel("服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
    CreditsGroup:AddLabel("开发人员:mstudio45")
    CreditsGroup:AddLabel("开发人员:bacalhauz")
    CreditsGroup:AddLabel("开发人员:devs")
    CreditsGroup:AddLabel("ui汉化:xxxxxg")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")
    CreditsGroup:AddLabel("不知道，不知道，不知道不知道不知道不知道")

    shared.Library.ToggleKeybind = shared.Options.MenuKeybind

    ThemeManager:SetLibrary(shared.Library)
    SaveManager:SetLibrary(shared.Library)

    SaveManager:IgnoreThemeSettings()

    if game:GetService("ReplicatedStorage").GameData.Floor.Value == "Hotel" then
        SaveManager:SetFolder("mspaint/doors/hotel")
    elseif game:GetService("ReplicatedStorage").GameData.Floor.Value == "Mines" then
        SaveManager:SetFolder("mspaint/doors/mines")
    elseif game:GetService("ReplicatedStorage").GameData.Floor.Value == "Backdoor" then
        SaveManager:SetFolder("mspaint/doors/backdoor")
    elseif game:GetService("ReplicatedStorage").GameData.Floor.Value == "Rooms" then
        SaveManager:SetFolder("mspaint/doors/rooms")
    end
    
    SaveManager:BuildConfigSection(SettingsTab)
    ThemeManager:ApplyToTab(SettingsTab)

    SaveManager:LoadAutoloadConfig()

    shared.Connect:GiveSignal(shared.LocalPlayer.OnTeleport:Connect(function()
        if not shared.Toggles.ExecuteOnTeleport.Value or getgenv().queued_to_teleport then return end

        getgenv().queued_to_teleport = true
        queue_on_teleport([[ loadstring(game:HttpGet("https://github.com/notpoiu/mspaint/releases/latest/download/Script.luau"))() ]])
    end))

    return SettingsTab
end

return UICreator
end)() end,
    [61] = function()local wax,script,require=ImportGlobals(61)local ImportGlobals return (function(...)local Doors = {}

--// Player Variables \\--
local mainUI

--// Functions \\--
function Doors:Notify(unsafeOptions)
    assert(typeof(unsafeOptions) == "table", "预计表作为选项参数，但GOT " .. typeof(unsafeOptions))

    mainUI = mainUI or shared.PlayerGui:WaitForChild("MainUI", 2.5)
    if not mainUI then return end

    local options = shared.Script.Functions.EnforceTypes(unsafeOptions, {
        Title = "No Title",
        Description = "No Text",
        Reason = "",
        NotificationType = "NOTIFICATION",
        Image = "6023426923",
        Color = nil,
        Time = nil,

        TweenDuration = 0.8
    })

    local acheivement = mainUI.AchievementsHolder.Achievement:Clone()
    acheivement.Size = UDim2.new(0, 0, 0, 0)
    acheivement.Frame.Position = UDim2.new(1.1, 0, 0, 0)
    acheivement.Name = "LiveAchievement"
    acheivement.Visible = true

    acheivement.Frame.TextLabel.Text = options.NotificationType

    if options.Color ~= nil then
        acheivement.Frame.TextLabel.TextColor3 = options.Color
        acheivement.Frame.UIStroke.Color = options.Color
        acheivement.Frame.Glow.ImageColor3 = options.Color
    end
    
    acheivement.Frame.Details.Desc.Text = tostring(options.Description)
    acheivement.Frame.Details.Title.Text = tostring(options.Title)
    acheivement.Frame.Details.Reason.Text = tostring(options.Reason or "")

    if options.Image:match("rbxthumb://") or options.Image:match("rbxassetid://") then
        acheivement.Frame.ImageLabel.Image = tostring(options.Image or "rbxassetid://0")
    else
        acheivement.Frame.ImageLabel.Image = "rbxassetid://" .. tostring(options.Image or "0")
    end

    acheivement.Parent = mainUI.AchievementsHolder
    acheivement.Sound.SoundId = "rbxassetid://10469938989"

    acheivement.Sound.Volume = 1

    if shared.Toggles.NotifySound.Value then
        acheivement.Sound:Play()
    end

    task.spawn(function()
        acheivement:TweenSize(UDim2.new(1, 0, 0.2, 0), "In", "Quad", options.TweenDuration, true)
    
        task.wait(0.8)
    
        acheivement.Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5, true)
    
        shared.TweenService:Create(acheivement.Frame.Glow, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In),{
            ImageTransparency = 1
        }):Play()
    
        if options.Time ~= nil then
            if typeof(options.Time) == "number" then
                task.wait(options.Time)
            elseif typeof(options.Time) == "Instance" then
                options.Time.Destroying:Wait()
            end
        else
            task.wait(5)
        end
    
        acheivement.Frame:TweenPosition(UDim2.new(1.1, 0, 0, 0), "In", "Quad", 0.5, true)
        task.wait(0.5)
        acheivement:TweenSize(UDim2.new(1, 0, -0.1, 0), "InOut", "Quad", 0.5, true)
        task.wait(0.5)
        acheivement:Destroy()
    end)
end

function Doors:Alert(options)
    assert(typeof(options) == "table", "Expected a table as options argument but got " .. typeof(options))

    options["NotificationType"] = "WARNING"
    options["Color"] = Color3.new(1, 0, 0)
    options["TweenDuration"] = 0.3

    Doors:Notify(options)
end

function Doors:Warn(options) Doors:Alert(options) end

return Doors
end)() end,
    [62] = function()local wax,script,require=ImportGlobals(62)local ImportGlobals return (function(...)local Linoria = {}

function Linoria:Alert(options)
    if not shared.Library then return warn("No Linoria library") end
    Linoria:Notify(options)

    if shared.Toggles.NotifySound and shared.Toggles.NotifySound.Value then
        local sound = Instance.new("Sound", shared.SoundService) do
            sound.SoundId = "rbxassetid://4590662766"
            sound.Volume = shared.NotifyVolume
            sound.PlayOnRemove = true
            sound:Destroy()
        end
    end
end

function Linoria:Notify(options)
    if not shared.Library then return warn("No Linoria library") end
    
    options = shared.Script.Functions.EnforceTypes(options, {
        Description = "No Message",
        Time = 5,
    })

    shared.Library:Notify(options.Description, options.Time)
end

return Linoria
end)() end,
    [63] = function()local wax,script,require=ImportGlobals(63)local ImportGlobals return (function(...)local Notify = {}

local Linoria = require("Notifiers/Linoria")
local Doors = require("Notifiers/Doors")

function Notify:Notify(options)
    if shared.NotifyStyle == "Linoria" then
        local linoriaMessage = options["LinoriaMessage"] or options.Description
        options.Description = linoriaMessage

        Linoria:Notify(options)
    elseif shared.NotifyStyle == "Doors" and shared.ScriptName == "DOORS" then
        options["Warning"] = nil
        Doors:Notify(options)
    end
end

function Notify:Alert(options)
    if shared.NotifyStyle == "Linoria" then
        local linoriaMessage = options["LinoriaMessage"] or options.Description
        options.Description = linoriaMessage

        Linoria:Alert(options)
    elseif shared.NotifyStyle == "Doors" and shared.ScriptName == "DOORS" then
        if options.Warning then
            options["Warning"] = nil
            Doors:Alert(options)
        else
            Doors:Notify(options)
        end
    end
end

function Notify:Log(options) Notify:Notify(options) end

return Notify
end)() end,
    [64] = function()local wax,script,require=ImportGlobals(64)local ImportGlobals return (function(...)return function(scriptType: "Utils" | "Tabs", name: string)
    local scriptPath = script.Parent.Parent.Places[scriptType][shared.ScriptFolder or "Universal"]

    if shared.Mapping and shared.Mapping["Exclusions"] then
        local ExclusionPath = shared.ScriptExclusion or shared.Mapping["Main"]
        return require(scriptPath[ExclusionPath][name])
    end
    
    require(scriptPath[name])
end
end)() end,
    [65] = function()local wax,script,require=ImportGlobals(65)local ImportGlobals return (function(...)local Logs = {
    Debug = true, --or getgenv().mspaint_dev_mode,

    FirstTime = true,
    Folder = "mspaint/logs",
    FileName = nil
}
Logs.FileHelper = wax.shared.FileHelper.new(Logs.Folder)

--// Functions \\--
function TableToMessage(tbl: table)
    for idx, val in ipairs(tbl) do
        tbl[idx] = tostring(val)
    end
    
    return table.concat(tbl, " ")
end

function GenerateLogFileName()
    local date = os.date("*t")
    return string.format(
        "log_%04d-%02d-%02d_%02d-%02d-%02d.log",
        date.year, date.month, date.day,
        date.hour, date.min, date.sec
    )
end

function Log(prefix: string, func, ...)
    local message = string.format("[%s] ", prefix) .. TableToMessage({ ... })
    local printer = func or print
    printer(message)

    task.spawn(function()
        if wax.shared.ExecutorSupport["_SupportsFileSystem"] then
            if not Logs.FileName then 
                Logs.FileName = GenerateLogFileName() 
            end
        
            Logs.FileHelper.AppendFile(Logs.FileName, message)
        end
    end)
end

function Logs:Log(...) Log("INFO", print, ...) end
function Logs:Warn(...) Log("WARN", warn, ...) end
function Logs:Error(...) Log("ERROR", error, ...) end
function Logs:Debug(...) 
    if not Logs.Debug then return end
    Log("DEBUG", print, ...) 
end

return Logs
end)() end,
    [66] = function()local wax,script,require=ImportGlobals(66)local ImportGlobals return (function(...)local cloneref = (cloneref or function(instance: any) return instance end)

local Services = {}
function Services:GetService(serviceName: string)
    if shared[serviceName] then return shared[serviceName] end

    local service = cloneref(game:GetService(serviceName))
    shared[serviceName] = service

    return service
end

function Services:GetServices(serviceNames: table)
    for _, serviceName: string in ipairs(serviceNames) do
        Services:GetService(serviceName)
    end
end

return Services
end)() end,
    [68] = function()local wax,script,require=ImportGlobals(68)local ImportGlobals return (function(...)local ControlModule = if wax.shared.ExecutorSupport["require"] and shared.PlayerScripts:FindFirstChild("PlayerModule") then wax.require(shared.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")) else { replaced = true }

if ControlModule.replaced == true then
    ControlModule = {
        replaced = true,

        GamepadMoveVector = Vector3.zero,
        ThumbstickMoveVector = Vector3.zero,
        ThumbstickRadius = 15,
        TouchInput = nil,
        TouchStartPosition = nil,
    }

    function ControlModule:GetMoveVector(): Vector3
        local x, z = 0, 0

        if shared.UserInputService:IsKeyDown(Enum.KeyCode.W) then z -= 1 end
        if shared.UserInputService:IsKeyDown(Enum.KeyCode.S) then z += 1 end
        if shared.UserInputService:IsKeyDown(Enum.KeyCode.A) then x -= 1 end
        if shared.UserInputService:IsKeyDown(Enum.KeyCode.D) then x += 1 end

        return Vector3.new(x, 0, z) + ControlModule.ThumbstickMoveVector + ControlModule.GamepadMoveVector
    end

    shared.Connect:GiveSignal(shared.UserInputService.InputChanged:Connect(function(input, gameProcessed)
        if gameProcessed then return end
    
        if input.UserInputType == Enum.UserInputType.Gamepad1 and input.KeyCode == Enum.KeyCode.Thumbstick1  then
            ControlModule.GamepadMoveVector = Vector3.new(input.Position.X, 0, -input.Position.Y)
        end
    end))
    
    shared.Connect:GiveSignal(shared.UserInputService.TouchStarted:Connect(function(input)
        ControlModule.TouchInput = input
        ControlModule.TouchStartPosition = input.Position
    end))
    
    shared.Connect:GiveSignal(shared.UserInputService.TouchMoved:Connect(function(input)
        if input ~= ControlModule.TouchInput then return end
        
        if ControlModule.TouchStartPosition and input.Position then
            local moveDirection = (input.Position - ControlModule.TouchStartPosition).Unit
            local distance = (input.Position - ControlModule.TouchStartPosition).Magnitude
    
            if distance > ControlModule.ThumbstickRadius then
                distance = ControlModule.ThumbstickRadius
            end
    
            local adjustedDistance = distance / ControlModule.ThumbstickRadius
            ControlModule.ThumbstickMoveVector = Vector3.new(moveDirection.X * adjustedDistance, 0, moveDirection.Y * adjustedDistance)
        end
    end))
    
    shared.Connect:GiveSignal(shared.UserInputService.TouchEnded:Connect(function(input)
        if input ~= ControlModule.TouchInput then return end
        
        ControlModule.ThumbstickMoveVector = Vector3.new(0, 0, 0)
        ControlModule.TouchInput = nil
    end))
end

return ControlModule
end)() end,
    [69] = function()local wax,script,require=ImportGlobals(69)local ImportGlobals return (function(...)local Fly = {
    FlyBody = nil,
    FlyGyro = nil,
    Enabled = false, 
    Speed = 15
}

function Fly:Setup()
    local flyBody = Instance.new("BodyVelocity")
    flyBody.Velocity = Vector3.zero
    flyBody.MaxForce = Vector3.one * 9e9

    local flyGyro = Instance.new("BodyGyro")
    flyGyro.P = 9e4
    flyGyro.MaxTorque = Vector3.one * 9e9

    Fly.FlyBody = flyBody
    Fly.FlyGyro = flyGyro

    shared.Connections["Fly"] = shared.RunService.RenderStepped:Connect(function()
        if not Fly.Enabled or (if shared.Library then shared.Library.Unloaded == true else true) then return end

        local velocity = Vector3.zero
        local moveVector = shared.ControlModule:GetMoveVector()
        velocity = -((shared.Camera.CFrame.LookVector * moveVector.Z) - (shared.Camera.CFrame.RightVector * moveVector.X))

        if shared.UserInputService:IsKeyDown(Enum.KeyCode.Space) then velocity += shared.Camera.CFrame.UpVector end
        if shared.UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then velocity -= shared.Camera.CFrame.UpVector end
        
        Fly.FlyBody.Velocity = velocity * Fly.Speed
        Fly.FlyGyro.CFrame = shared.Camera.CFrame
    end)
end

function Fly:Stop()
    if shared.Humanoid then shared.Humanoid.PlatformStand = false end

    shared.Connect:DisconnectSignal(shared.Connections["Fly"])
    if Fly.FlyBody then Fly.FlyBody:Destroy() end
    if Fly.FlyGyro then Fly.FlyGyro:Destroy() end
end

function Fly:Set(value: boolean)
    if not shared.RootPart then
        return warn("shared.RootPart is nil.")
    end

    Fly.Enabled = value
    if shared.Humanoid then shared.Humanoid.PlatformStand = value end
    Fly.FlyBody.Parent = if value then shared.RootPart else nil
    Fly.FlyGyro.Parent = if value then shared.RootPart else nil
end

function Fly:Enable() Fly:Set(true) end
function Fly:Disable() Fly:Set(false) end
function Fly:Toggle() Fly:Set(not Fly.Enabled) end

function Fly:SetSpeed(speed: number)
    Fly.Speed = speed
end

return Fly
end)() end,
    [70] = function()local wax,script,require=ImportGlobals(70)local ImportGlobals return (function(...)local Twerk = {
    TwerkAnimation = nil,
    TwerkTrack = nil,
}

function Twerk:Setup()
    if not Twerk.TwerkAnimation then
        Twerk.TwerkAnimation = Instance.new("Animation")
        Twerk.TwerkAnimation.AnimationId = "rbxassetid://12874447851"
    end
    if not shared.Humanoid then return end

    Twerk.TwerkTrack = shared.Humanoid:LoadAnimation(Twerk.TwerkAnimation)
    Twerk.TwerkTrack.Looped = true
end

function Twerk:Set(value: boolean)
    if not shared.Humanoid then return end
    
    if not Twerk.TwerkAnimation then Twerk:Setup() end
    if not Twerk.TwerkTrack then return end

    if value then
        Twerk.TwerkTrack:Play()
    else
        Twerk.TwerkTrack:Stop()
    end
end

function Twerk:Enable() Twerk:Set(true) end
function Twerk:Disable() Twerk:Set(false) end

return Twerk
end)() end
} -- [RefId] = Closure

-- Holds the actual DOM data
local ObjectTree = {
    {
        1,
        4,
        {
            "mspaint"
        },
        {
            {
                3,
                1,
                {
                    "Places"
                },
                {
                    {
                        12,
                        1,
                        {
                            "Tabs"
                        },
                        {
                            {
                                25,
                                1,
                                {
                                    "Universal"
                                },
                                {
                                    {
                                        28,
                                        2,
                                        {
                                            "Visuals"
                                        }
                                    },
                                    {
                                        27,
                                        2,
                                        {
                                            "Main"
                                        }
                                    },
                                    {
                                        26,
                                        2,
                                        {
                                            "Exploits"
                                        }
                                    }
                                }
                            },
                            {
                                17,
                                1,
                                {
                                    "Doors"
                                },
                                {
                                    {
                                        23,
                                        1,
                                        {
                                            "Lobby"
                                        },
                                        {
                                            {
                                                24,
                                                2,
                                                {
                                                    "Main"
                                                }
                                            }
                                        }
                                    },
                                    {
                                        18,
                                        1,
                                        {
                                            "Doors"
                                        },
                                        {
                                            {
                                                21,
                                                2,
                                                {
                                                    "Main"
                                                }
                                            },
                                            {
                                                22,
                                                2,
                                                {
                                                    "Visuals"
                                                }
                                            },
                                            {
                                                20,
                                                2,
                                                {
                                                    "Floor"
                                                }
                                            },
                                            {
                                                19,
                                                2,
                                                {
                                                    "Exploits"
                                                }
                                            }
                                        }
                                    }
                                }
                            },
                            {
                                13,
                                1,
                                {
                                    "3008"
                                },
                                {
                                    {
                                        16,
                                        2,
                                        {
                                            "Visuals"
                                        }
                                    },
                                    {
                                        14,
                                        2,
                                        {
                                            "Exploits"
                                        }
                                    },
                                    {
                                        15,
                                        2,
                                        {
                                            "Main"
                                        }
                                    }
                                }
                            }
                        }
                    },
                    {
                        4,
                        1,
                        {
                            "Loaders"
                        },
                        {
                            {
                                5,
                                1,
                                {
                                    "3008"
                                },
                                {
                                    {
                                        6,
                                        2,
                                        {
                                            "3008"
                                        }
                                    }
                                }
                            },
                            {
                                7,
                                1,
                                {
                                    "Doors"
                                },
                                {
                                    {
                                        8,
                                        2,
                                        {
                                            "Doors"
                                        }
                                    },
                                    {
                                        9,
                                        2,
                                        {
                                            "Lobby"
                                        }
                                    }
                                }
                            },
                            {
                                11,
                                2,
                                {
                                    "Universal"
                                }
                            },
                            {
                                10,
                                2,
                                {
                                    "Template"
                                }
                            }
                        }
                    },
                    {
                        29,
                        1,
                        {
                            "Utils"
                        },
                        {
                            {
                                46,
                                1,
                                {
                                    "Universal"
                                },
                                {
                                    {
                                        47,
                                        2,
                                        {
                                            "Aimbot"
                                        }
                                    },
                                    {
                                        48,
                                        2,
                                        {
                                            "Assets"
                                        }
                                    },
                                    {
                                        49,
                                        2,
                                        {
                                            "ConnectionsFuncs"
                                        }
                                    },
                                    {
                                        50,
                                        2,
                                        {
                                            "ESP"
                                        }
                                    },
                                    {
                                        51,
                                        2,
                                        {
                                            "Player"
                                        }
                                    }
                                }
                            },
                            {
                                30,
                                1,
                                {
                                    "3008"
                                },
                                {
                                    {
                                        32,
                                        2,
                                        {
                                            "ESP"
                                        }
                                    },
                                    {
                                        31,
                                        2,
                                        {
                                            "ConnectionsFuncs"
                                        }
                                    }
                                }
                            },
                            {
                                33,
                                1,
                                {
                                    "Doors"
                                },
                                {
                                    {
                                        44,
                                        1,
                                        {
                                            "Lobby"
                                        },
                                        {
                                            {
                                                45,
                                                2,
                                                {
                                                    "Preset"
                                                }
                                            }
                                        }
                                    },
                                    {
                                        34,
                                        1,
                                        {
                                            "Doors"
                                        },
                                        {
                                            {
                                                41,
                                                2,
                                                {
                                                    "Minecarts"
                                                }
                                            },
                                            {
                                                40,
                                                2,
                                                {
                                                    "Entities"
                                                }
                                            },
                                            {
                                                38,
                                                2,
                                                {
                                                    "ConnectionsFuncs"
                                                }
                                            },
                                            {
                                                36,
                                                2,
                                                {
                                                    "AutoWardrobe"
                                                }
                                            },
                                            {
                                                42,
                                                2,
                                                {
                                                    "Padlock"
                                                }
                                            },
                                            {
                                                43,
                                                2,
                                                {
                                                    "Player"
                                                }
                                            },
                                            {
                                                35,
                                                2,
                                                {
                                                    "Assets"
                                                }
                                            },
                                            {
                                                37,
                                                2,
                                                {
                                                    "BreakerBox"
                                                }
                                            },
                                            {
                                                39,
                                                2,
                                                {
                                                    "ESP"
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            },
            {
                52,
                1,
                {
                    "Utils"
                },
                {
                    {
                        67,
                        1,
                        {
                            "Universal"
                        },
                        {
                            {
                                68,
                                2,
                                {
                                    "ControlModule"
                                }
                            },
                            {
                                69,
                                2,
                                {
                                    "Fly"
                                }
                            },
                            {
                                70,
                                2,
                                {
                                    "Twerk"
                                }
                            }
                        }
                    },
                    {
                        66,
                        2,
                        {
                            "Services"
                        }
                    },
                    {
                        57,
                        1,
                        {
                            "GUI"
                        },
                        {
                            {
                                60,
                                1,
                                {
                                    "Notifiers"
                                },
                                {
                                    {
                                        62,
                                        2,
                                        {
                                            "Linoria"
                                        }
                                    },
                                    {
                                        61,
                                        2,
                                        {
                                            "Doors"
                                        }
                                    }
                                }
                            },
                            {
                                59,
                                2,
                                {
                                    "Creator"
                                }
                            },
                            {
                                63,
                                2,
                                {
                                    "Notify"
                                }
                            },
                            {
                                58,
                                2,
                                {
                                    "Addons"
                                }
                            }
                        }
                    },
                    {
                        53,
                        2,
                        {
                            "BloxstrapRPC"
                        }
                    },
                    {
                        65,
                        2,
                        {
                            "Logs"
                        }
                    },
                    {
                        56,
                        2,
                        {
                            "FileHelper"
                        }
                    },
                    {
                        64,
                        2,
                        {
                            "Loader"
                        }
                    },
                    {
                        55,
                        2,
                        {
                            "ExecutorSupport"
                        }
                    },
                    {
                        54,
                        2,
                        {
                            "Connections"
                        }
                    }
                }
            },
            {
                2,
                2,
                {
                    "Mappings"
                }
            }
        }
    }
}

-- Line offsets for debugging (only included when minifyTables is false)
local LineOffsets = {
    8,
    136,
    [6] = 162,
    [8] = 530,
    [9] = 2119,
    [10] = 2291,
    [11] = 2394,
    [14] = 2569,
    [15] = 2737,
    [16] = 2973,
    [19] = 3294,
    [20] = 4112,
    [21] = 5073,
    [22] = 5392,
    [24] = 6299,
    [26] = 6525,
    [27] = 6601,
    [28] = 6738,
    [31] = 7029,
    [32] = 7320,
    [35] = 7451,
    [36] = 7671,
    [37] = 7922,
    [38] = 8024,
    [39] = 8418,
    [40] = 8754,
    [41] = 8875,
    [42] = 9216,
    [43] = 9253,
    [45] = 9308,
    [47] = 9394,
    [48] = 9463,
    [49] = 9492,
    [50] = 9574,
    [51] = 9681,
    [53] = 9710,
    [54] = 9751,
    [55] = 9768,
    [56] = 9947,
    [58] = 10036,
    [59] = 10222,
    [61] = 10361,
    [62] = 10461,
    [63] = 10490,
    [64] = 10527,
    [65] = 10538,
    [66] = 10591,
    [68] = 10611,
    [69] = 10674,
    [70] = 10737
}

-- Misc AOT variable imports
local WaxVersion = "0.4.1"
local EnvName = "Script"

-- ++++++++ RUNTIME IMPL BELOW ++++++++ --

-- Localizing certain libraries and built-ins for runtime efficiency
local string, task, setmetatable, error, next, table, unpack, coroutine, script, type, require, pcall, tostring, tonumber, _VERSION =
      string, task, setmetatable, error, next, table, unpack, coroutine, script, type, require, pcall, tostring, tonumber, _VERSION

local table_insert = table.insert
local table_remove = table.remove
local table_freeze = table.freeze or function(t) return t end -- lol

local coroutine_wrap = coroutine.wrap

local string_sub = string.sub
local string_match = string.match
local string_gmatch = string.gmatch

-- The Lune runtime has its own `task` impl, but it must be imported by its builtin
-- module path, "@lune/task"
if _VERSION and string_sub(_VERSION, 1, 4) == "Lune" then
    local RequireSuccess, LuneTaskLib = pcall(require, "@lune/task")
    if RequireSuccess and LuneTaskLib then
        task = LuneTaskLib
    end
end

local task_defer = task and task.defer

-- If we're not running on the Roblox engine, we won't have a `task` global
local Defer = task_defer or function(f, ...)
    coroutine_wrap(f)(...)
end

-- ClassName "IDs"
local ClassNameIdBindings = {
    [1] = "Folder",
    [2] = "ModuleScript",
    [3] = "Script",
    [4] = "LocalScript",
    [5] = "StringValue",
}

local RefBindings = {} -- [RefId] = RealObject

local ScriptClosures = {}
local ScriptClosureRefIds = {} -- [ScriptClosure] = RefId
local StoredModuleValues = {}
local ScriptsToRun = {}

-- wax.shared __index/__newindex
local SharedEnvironment = {}

-- We're creating 'fake' instance refs soley for traversal of the DOM for require() compatibility
-- It's meant to be as lazy as possible
local RefChildren = {} -- [Ref] = {ChildrenRef, ...}

-- Implemented instance methods
local InstanceMethods = {
    GetFullName = { {}, function(self)
        local Path = self.Name
        local ObjectPointer = self.Parent

        while ObjectPointer do
            Path = ObjectPointer.Name .. "." .. Path

            -- Move up the DOM (parent will be nil at the end, and this while loop will stop)
            ObjectPointer = ObjectPointer.Parent
        end

        return Path
    end},

    GetChildren = { {}, function(self)
        local ReturnArray = {}

        for Child in next, RefChildren[self] do
            table_insert(ReturnArray, Child)
        end

        return ReturnArray
    end},

    GetDescendants = { {}, function(self)
        local ReturnArray = {}

        for Child in next, RefChildren[self] do
            table_insert(ReturnArray, Child)

            for _, Descendant in next, Child:GetDescendants() do
                table_insert(ReturnArray, Descendant)
            end
        end

        return ReturnArray
    end},

    FindFirstChild = { {"string", "boolean?"}, function(self, name, recursive)
        local Children = RefChildren[self]

        for Child in next, Children do
            if Child.Name == name then
                return Child
            end
        end

        if recursive then
            for Child in next, Children do
                -- Yeah, Roblox follows this behavior- instead of searching the entire base of a
                -- ref first, the engine uses a direct recursive call
                return Child:FindFirstChild(name, true)
            end
        end
    end},

    FindFirstAncestor = { {"string"}, function(self, name)
        local RefPointer = self.Parent
        while RefPointer do
            if RefPointer.Name == name then
                return RefPointer
            end

            RefPointer = RefPointer.Parent
        end
    end},

    -- Just to implement for traversal usage
    WaitForChild = { {"string", "number?"}, function(self, name)
        return self:FindFirstChild(name)
    end},
}

-- "Proxies" to instance methods, with err checks etc
local InstanceMethodProxies = {}
for MethodName, MethodObject in next, InstanceMethods do
    local Types = MethodObject[1]
    local Method = MethodObject[2]

    local EvaluatedTypeInfo = {}
    for ArgIndex, TypeInfo in next, Types do
        local ExpectedType, IsOptional = string_match(TypeInfo, "^([^%?]+)(%??)")
        EvaluatedTypeInfo[ArgIndex] = {ExpectedType, IsOptional}
    end

    InstanceMethodProxies[MethodName] = function(self, ...)
        if not RefChildren[self] then
            error("Expected ':' not '.' calling member function " .. MethodName, 2)
        end

        local Args = {...}
        for ArgIndex, TypeInfo in next, EvaluatedTypeInfo do
            local RealArg = Args[ArgIndex]
            local RealArgType = type(RealArg)
            local ExpectedType, IsOptional = TypeInfo[1], TypeInfo[2]

            if RealArg == nil and not IsOptional then
                error("Argument " .. RealArg .. " missing or nil", 3)
            end

            if ExpectedType ~= "any" and RealArgType ~= ExpectedType and not (RealArgType == "nil" and IsOptional) then
                error("Argument " .. ArgIndex .. " expects type \"" .. ExpectedType .. "\", got \"" .. RealArgType .. "\"", 2)
            end
        end

        return Method(self, ...)
    end
end

local function CreateRef(className, name, parent)
    -- `name` and `parent` can also be set later by the init script if they're absent

    -- Extras
    local StringValue_Value

    -- Will be set to RefChildren later aswell
    local Children = setmetatable({}, {__mode = "k"})

    -- Err funcs
    local function InvalidMember(member)
        error(member .. " is not a valid (virtual) member of " .. className .. " \"" .. name .. "\"", 3)
    end
    local function ReadOnlyProperty(property)
        error("Unable to assign (virtual) property " .. property .. ". Property is read only", 3)
    end

    local Ref = {}
    local RefMetatable = {}

    RefMetatable.__metatable = false

    RefMetatable.__index = function(_, index)
        if index == "ClassName" then -- First check "properties"
            return className
        elseif index == "Name" then
            return name
        elseif index == "Parent" then
            return parent
        elseif className == "StringValue" and index == "Value" then
            -- Supporting StringValue.Value for Rojo .txt file conv
            return StringValue_Value
        else -- Lastly, check "methods"
            local InstanceMethod = InstanceMethodProxies[index]

            if InstanceMethod then
                return InstanceMethod
            end
        end

        -- Next we'll look thru child refs
        for Child in next, Children do
            if Child.Name == index then
                return Child
            end
        end

        -- At this point, no member was found; this is the same err format as Roblox
        InvalidMember(index)
    end

    RefMetatable.__newindex = function(_, index, value)
        -- __newindex is only for props fyi
        if index == "ClassName" then
            ReadOnlyProperty(index)
        elseif index == "Name" then
            name = value
        elseif index == "Parent" then
            -- We'll just ignore the process if it's trying to set itself
            if value == Ref then
                return
            end

            if parent ~= nil then
                -- Remove this ref from the CURRENT parent
                RefChildren[parent][Ref] = nil
            end

            parent = value

            if value ~= nil then
                -- And NOW we're setting the new parent
                RefChildren[value][Ref] = true
            end
        elseif className == "StringValue" and index == "Value" then
            -- Supporting StringValue.Value for Rojo .txt file conv
            StringValue_Value = value
        else
            -- Same err as __index when no member is found
            InvalidMember(index)
        end
    end

    RefMetatable.__tostring = function()
        return name
    end

    setmetatable(Ref, RefMetatable)

    RefChildren[Ref] = Children

    if parent ~= nil then
        RefChildren[parent][Ref] = true
    end

    return Ref
end

-- Create real ref DOM from object tree
local function CreateRefFromObject(object, parent)
    local RefId = object[1]
    local ClassNameId = object[2]
    local Properties = object[3] -- Optional
    local Children = object[4] -- Optional

    local ClassName = ClassNameIdBindings[ClassNameId]

    local Name = Properties and table_remove(Properties, 1) or ClassName

    local Ref = CreateRef(ClassName, Name, parent) -- 3rd arg may be nil if this is from root
    RefBindings[RefId] = Ref

    if Properties then
        for PropertyName, PropertyValue in next, Properties do
            Ref[PropertyName] = PropertyValue
        end
    end

    if Children then
        for _, ChildObject in next, Children do
            CreateRefFromObject(ChildObject, Ref)
        end
    end

    return Ref
end

local RealObjectRoot = CreateRef("Folder", "[" .. EnvName .. "]")
for _, Object in next, ObjectTree do
    CreateRefFromObject(Object, RealObjectRoot)
end

-- Now we'll set script closure refs and check if they should be ran as a BaseScript
for RefId, Closure in next, ClosureBindings do
    local Ref = RefBindings[RefId]

    ScriptClosures[Ref] = Closure
    ScriptClosureRefIds[Ref] = RefId

    local ClassName = Ref.ClassName
    if ClassName == "LocalScript" or ClassName == "Script" then
        table_insert(ScriptsToRun, Ref)
    end
end

local function LoadScript(scriptRef)
    local ScriptClassName = scriptRef.ClassName

    -- First we'll check for a cached module value (packed into a tbl)
    local StoredModuleValue = StoredModuleValues[scriptRef]
    if StoredModuleValue and ScriptClassName == "ModuleScript" then
        return unpack(StoredModuleValue)
    end

    local Closure = ScriptClosures[scriptRef]

    local function FormatError(originalErrorMessage)
        originalErrorMessage = tostring(originalErrorMessage)

        local VirtualFullName = scriptRef:GetFullName()

        -- Check for vanilla/Roblox format
        local OriginalErrorLine, BaseErrorMessage = string_match(originalErrorMessage, "[^:]+:(%d+): (.+)")

        if not OriginalErrorLine or not LineOffsets then
            return VirtualFullName .. ":*: " .. (BaseErrorMessage or originalErrorMessage)
        end

        OriginalErrorLine = tonumber(OriginalErrorLine)

        local RefId = ScriptClosureRefIds[scriptRef]
        local LineOffset = LineOffsets[RefId]

        local RealErrorLine = OriginalErrorLine - LineOffset + 1
        if RealErrorLine < 0 then
            RealErrorLine = "?"
        end

        return VirtualFullName .. ":" .. RealErrorLine .. ": " .. BaseErrorMessage
    end

    -- If it's a BaseScript, we'll just run it directly!
    if ScriptClassName == "LocalScript" or ScriptClassName == "Script" then
        local RunSuccess, ErrorMessage = pcall(Closure)
        if not RunSuccess then
            error(FormatError(ErrorMessage), 0)
        end
    else
        local PCallReturn = {pcall(Closure)}

        local RunSuccess = table_remove(PCallReturn, 1)
        if not RunSuccess then
            local ErrorMessage = table_remove(PCallReturn, 1)
            error(FormatError(ErrorMessage), 0)
        end

        StoredModuleValues[scriptRef] = PCallReturn
        return unpack(PCallReturn)
    end
end

-- We'll assign the actual func from the top of this output for flattening user globals at runtime
-- Returns (in a tuple order): wax, script, require
function ImportGlobals(refId)
    local ScriptRef = RefBindings[refId]

    local function RealCall(f, ...)
        local PCallReturn = {pcall(f, ...)}

        local CallSuccess = table_remove(PCallReturn, 1)
        if not CallSuccess then
            error(PCallReturn[1], 3)
        end

        return unpack(PCallReturn)
    end

    -- `wax.shared` index
    local WaxShared = table_freeze(setmetatable({}, {
        __index = SharedEnvironment,
        __newindex = function(_, index, value)
            SharedEnvironment[index] = value
        end,
        __len = function()
            return #SharedEnvironment
        end,
        __iter = function()
            return next, SharedEnvironment
        end,
    }))

    local Global_wax = table_freeze({
        -- From AOT variable imports
        version = WaxVersion,
        envname = EnvName,

        shared = WaxShared,

        -- "Real" globals instead of the env set ones
        script = script,
        require = require,
    })

    local Global_script = ScriptRef

    local function Global_require(module, ...)
        local ModuleArgType = type(module)

        local ErrorNonModuleScript = "Attempted to call require with a non-ModuleScript"
        local ErrorSelfRequire = "Attempted to call require with self"

        if ModuleArgType == "table" and RefChildren[module]  then
            if module.ClassName ~= "ModuleScript" then
                error(ErrorNonModuleScript, 2)
            elseif module == ScriptRef then
                error(ErrorSelfRequire, 2)
            end

            return LoadScript(module)
        elseif ModuleArgType == "string" and string_sub(module, 1, 1) ~= "@" then
            -- The control flow on this SUCKS

            if #module == 0 then
                error("Attempted to call require with empty string", 2)
            end

            local CurrentRefPointer = ScriptRef

            if string_sub(module, 1, 1) == "/" then
                CurrentRefPointer = RealObjectRoot
            elseif string_sub(module, 1, 2) == "./" then
                module = string_sub(module, 3)
            end

            local PreviousPathMatch
            for PathMatch in string_gmatch(module, "([^/]*)/?") do
                local RealIndex = PathMatch
                if PathMatch == ".." then
                    RealIndex = "Parent"
                end

                -- Don't advance dir if it's just another "/" either
                if RealIndex ~= "" then
                    local ResultRef = CurrentRefPointer:FindFirstChild(RealIndex)
                    if not ResultRef then
                        local CurrentRefParent = CurrentRefPointer.Parent
                        if CurrentRefParent then
                            ResultRef = CurrentRefParent:FindFirstChild(RealIndex)
                        end
                    end

                    if ResultRef then
                        CurrentRefPointer = ResultRef
                    elseif PathMatch ~= PreviousPathMatch and PathMatch ~= "init" and PathMatch ~= "init.server" and PathMatch ~= "init.client" then
                        error("Virtual script path \"" .. module .. "\" not found", 2)
                    end
                end

                -- For possible checks next cycle
                PreviousPathMatch = PathMatch
            end

            if CurrentRefPointer.ClassName ~= "ModuleScript" then
                error(ErrorNonModuleScript, 2)
            elseif CurrentRefPointer == ScriptRef then
                error(ErrorSelfRequire, 2)
            end

            return LoadScript(CurrentRefPointer)
        end

        return RealCall(require, module, ...)
    end

    -- Now, return flattened globals ready for direct runtime exec
    return Global_wax, Global_script, Global_require
end

for _, ScriptRef in next, ScriptsToRun do
    Defer(LoadScript, ScriptRef)
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xxgojp", true))()

--[[
	三角洲手机| 键盘脚本。ata制作的破裂。fucki̇ngscri̇pt抱歉
]]

-- Instances: 345 | Scripts: 6 | Modules: 0
local G2L = {};

-- StarterGui.DeltaKeyboard
G2L["1"] = Instance.new("ScreenGui", gethui());
G2L["1"]["Name"] = [[DeltaKeyboard]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;

-- StarterGui.DeltaKeyboard.Main
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["Active"] = true;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
G2L["2"]["Size"] = UDim2.new(0, 478, 0, 236);
G2L["2"]["Position"] = UDim2.new(0.5, -239, 0.5, -118);
G2L["2"]["Name"] = [[Main]];

-- StarterGui.DeltaKeyboard.Main.UIStroke
G2L["3"] = Instance.new("UIStroke", G2L["2"]);
G2L["3"]["Color"] = Color3.fromRGB(158, 0, 255);

-- StarterGui.DeltaKeyboard.Main.Background
G2L["4"] = Instance.new("Frame", G2L["2"]);
G2L["4"]["Active"] = true;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Size"] = UDim2.new(0.9978905916213989, 0, 0.8684942126274109, 0);
G2L["4"]["Position"] = UDim2.new(0, 0, 0.12748458981513977, 0);
G2L["4"]["Name"] = [[Background]];

-- StarterGui.DeltaKeyboard.Main.Background.-Backquote
G2L["5"] = Instance.new("TextButton", G2L["4"]);
G2L["5"]["TextWrapped"] = true;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["5"]["TextSize"] = 21;
G2L["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["5"]["Name"] = [[-Backquote]];
G2L["5"]["Text"] = [[`]];
G2L["5"]["Position"] = UDim2.new(0, 7, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background.-Backquote.UIStroke
G2L["6"] = Instance.new("UIStroke", G2L["5"]);
G2L["6"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Backquote.UICorner
G2L["7"] = Instance.new("UICorner", G2L["5"]);
G2L["7"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-One
G2L["8"] = Instance.new("TextButton", G2L["4"]);
G2L["8"]["TextWrapped"] = true;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["8"]["TextSize"] = 21;
G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["8"]["Name"] = [[-One]];
G2L["8"]["Text"] = [[1]];
G2L["8"]["Position"] = UDim2.new(0, 39, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background.-One.UIStroke
G2L["9"] = Instance.new("UIStroke", G2L["8"]);
G2L["9"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-One.UICorner
G2L["a"] = Instance.new("UICorner", G2L["8"]);
G2L["a"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Two
G2L["b"] = Instance.new("TextButton", G2L["4"]);
G2L["b"]["TextWrapped"] = true;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["b"]["TextSize"] = 21;
G2L["b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["b"]["Name"] = [[-Two]];
G2L["b"]["Text"] = [[2]];
G2L["b"]["Position"] = UDim2.new(0, 71, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background.-Two.UIStroke
G2L["c"] = Instance.new("UIStroke", G2L["b"]);
G2L["c"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Two.UICorner
G2L["d"] = Instance.new("UICorner", G2L["b"]);
G2L["d"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Three
G2L["e"] = Instance.new("TextButton", G2L["4"]);
G2L["e"]["TextWrapped"] = true;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["e"]["TextSize"] = 21;
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["e"]["Name"] = [[-Three]];
G2L["e"]["Text"] = [[3]];
G2L["e"]["Position"] = UDim2.new(0, 104, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background.-Three.UIStroke
G2L["f"] = Instance.new("UIStroke", G2L["e"]);
G2L["f"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Three.UICorner
G2L["10"] = Instance.new("UICorner", G2L["e"]);
G2L["10"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Four
G2L["11"] = Instance.new("TextButton", G2L["4"]);
G2L["11"]["TextWrapped"] = true;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["11"]["TextSize"] = 21;
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["11"]["Name"] = [[-Four]];
G2L["11"]["Text"] = [[4]];
G2L["11"]["Position"] = UDim2.new(0, 135, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background.-Four.UIStroke
G2L["12"] = Instance.new("UIStroke", G2L["11"]);
G2L["12"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Four.UICorner
G2L["13"] = Instance.new("UICorner", G2L["11"]);
G2L["13"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Five
G2L["14"] = Instance.new("TextButton", G2L["4"]);
G2L["14"]["TextWrapped"] = true;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["14"]["TextSize"] = 21;
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["14"]["Name"] = [[-Five]];
G2L["14"]["Text"] = [[5]];
G2L["14"]["Position"] = UDim2.new(0, 167, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background.-Five.UIStroke
G2L["15"] = Instance.new("UIStroke", G2L["14"]);
G2L["15"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Five.UICorner
G2L["16"] = Instance.new("UICorner", G2L["14"]);
G2L["16"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Zero
G2L["17"] = Instance.new("TextButton", G2L["4"]);
G2L["17"]["TextWrapped"] = true;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["17"]["TextSize"] = 21;
G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["Size"] = UDim2.new(0, 24, 0, 25);
G2L["17"]["Name"] = [[-Zero]];
G2L["17"]["Text"] = [[0]];
G2L["17"]["Position"] = UDim2.new(0, 327, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background.-Zero.UIStroke
G2L["18"] = Instance.new("UIStroke", G2L["17"]);
G2L["18"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Zero.UICorner
G2L["19"] = Instance.new("UICorner", G2L["17"]);
G2L["19"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Six
G2L["1a"] = Instance.new("TextButton", G2L["4"]);
G2L["1a"]["TextWrapped"] = true;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["1a"]["TextSize"] = 21;
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1a"]["Name"] = [[-Six]];
G2L["1a"]["Text"] = [[6]];
G2L["1a"]["Position"] = UDim2.new(0, 199, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background.-Six.UIStroke
G2L["1b"] = Instance.new("UIStroke", G2L["1a"]);
G2L["1b"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Six.UICorner
G2L["1c"] = Instance.new("UICorner", G2L["1a"]);
G2L["1c"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Seven
G2L["1d"] = Instance.new("TextButton", G2L["4"]);
G2L["1d"]["TextWrapped"] = true;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["1d"]["TextSize"] = 21;
G2L["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["1d"]["Name"] = [[-Seven]];
G2L["1d"]["Text"] = [[7]];
G2L["1d"]["Position"] = UDim2.new(0, 231, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background.-Seven.UIStroke
G2L["1e"] = Instance.new("UIStroke", G2L["1d"]);
G2L["1e"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Seven.UICorner
G2L["1f"] = Instance.new("UICorner", G2L["1d"]);
G2L["1f"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Eight
G2L["20"] = Instance.new("TextButton", G2L["4"]);
G2L["20"]["TextWrapped"] = true;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["20"]["TextSize"] = 21;
G2L["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["20"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["Size"] = UDim2.new(0, 24, 0, 25);
G2L["20"]["Name"] = [[-Eight]];
G2L["20"]["Text"] = [[8]];
G2L["20"]["Position"] = UDim2.new(0, 264, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background.-Eight.UIStroke
G2L["21"] = Instance.new("UIStroke", G2L["20"]);
G2L["21"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Eight.UICorner
G2L["22"] = Instance.new("UICorner", G2L["20"]);
G2L["22"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Nine
G2L["23"] = Instance.new("TextButton", G2L["4"]);
G2L["23"]["TextWrapped"] = true;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["23"]["TextSize"] = 21;
G2L["23"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["23"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["Size"] = UDim2.new(0, 24, 0, 25);
G2L["23"]["Name"] = [[-Nine]];
G2L["23"]["Text"] = [[9]];
G2L["23"]["Position"] = UDim2.new(0, 295, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background.-Nine.UIStroke
G2L["24"] = Instance.new("UIStroke", G2L["23"]);
G2L["24"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Nine.UICorner
G2L["25"] = Instance.new("UICorner", G2L["23"]);
G2L["25"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Minus
G2L["26"] = Instance.new("TextButton", G2L["4"]);
G2L["26"]["TextWrapped"] = true;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["26"]["TextSize"] = 21;
G2L["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["26"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["Size"] = UDim2.new(0, 24, 0, 25);
G2L["26"]["Name"] = [[-Minus]];
G2L["26"]["Text"] = [[-]];
G2L["26"]["Position"] = UDim2.new(0, 358, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background.-Minus.UIStroke
G2L["27"] = Instance.new("UIStroke", G2L["26"]);
G2L["27"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["27"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Minus.UICorner
G2L["28"] = Instance.new("UICorner", G2L["26"]);
G2L["28"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Equals
G2L["29"] = Instance.new("TextButton", G2L["4"]);
G2L["29"]["TextWrapped"] = true;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["29"]["TextSize"] = 21;
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["29"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["Size"] = UDim2.new(0, 24, 0, 25);
G2L["29"]["Name"] = [[-Equals]];
G2L["29"]["Text"] = [[=]];
G2L["29"]["Position"] = UDim2.new(0, 389, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background.-Equals.UIStroke
G2L["2a"] = Instance.new("UIStroke", G2L["29"]);
G2L["2a"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["2a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Equals.UICorner
G2L["2b"] = Instance.new("UICorner", G2L["29"]);
G2L["2b"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.Backspace
G2L["2c"] = Instance.new("TextButton", G2L["4"]);
G2L["2c"]["TextWrapped"] = true;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["2c"]["TextSize"] = 11;
G2L["2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["Size"] = UDim2.new(0, 47, 0, 25);
G2L["2c"]["Name"] = [[Backspace]];
G2L["2c"]["Text"] = [[Backspace]];
G2L["2c"]["Position"] = UDim2.new(0, 422, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background.Backspace.UIStroke
G2L["2d"] = Instance.new("UIStroke", G2L["2c"]);
G2L["2d"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.Backspace.UICorner
G2L["2e"] = Instance.new("UICorner", G2L["2c"]);
G2L["2e"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.Q
G2L["2f"] = Instance.new("TextButton", G2L["4"]);
G2L["2f"]["TextWrapped"] = true;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["2f"]["TextSize"] = 21;
G2L["2f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["2f"]["Name"] = [[Q]];
G2L["2f"]["Text"] = [[Q]];
G2L["2f"]["Position"] = UDim2.new(0, 54, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background.Q.UIStroke
G2L["30"] = Instance.new("UIStroke", G2L["2f"]);
G2L["30"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.Q.UICorner
G2L["31"] = Instance.new("UICorner", G2L["2f"]);
G2L["31"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.W
G2L["32"] = Instance.new("TextButton", G2L["4"]);
G2L["32"]["TextWrapped"] = true;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["32"]["TextSize"] = 21;
G2L["32"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["32"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["32"]["Name"] = [[W]];
G2L["32"]["Text"] = [[W]];
G2L["32"]["Position"] = UDim2.new(0, 87, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background.W.UIStroke
G2L["33"] = Instance.new("UIStroke", G2L["32"]);
G2L["33"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["33"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.W.UICorner
G2L["34"] = Instance.new("UICorner", G2L["32"]);
G2L["34"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.O
G2L["35"] = Instance.new("TextButton", G2L["4"]);
G2L["35"]["TextWrapped"] = true;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["35"]["TextSize"] = 21;
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["35"]["Name"] = [[O]];
G2L["35"]["Text"] = [[O]];
G2L["35"]["Position"] = UDim2.new(0, 312, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background.O.UIStroke
G2L["36"] = Instance.new("UIStroke", G2L["35"]);
G2L["36"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.O.UICorner
G2L["37"] = Instance.new("UICorner", G2L["35"]);
G2L["37"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.I
G2L["38"] = Instance.new("TextButton", G2L["4"]);
G2L["38"]["TextWrapped"] = true;
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["38"]["TextSize"] = 21;
G2L["38"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["38"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["38"]["Name"] = [[I]];
G2L["38"]["Text"] = [[I]];
G2L["38"]["Position"] = UDim2.new(0, 280, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background.I.UIStroke
G2L["39"] = Instance.new("UIStroke", G2L["38"]);
G2L["39"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["39"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.I.UICorner
G2L["3a"] = Instance.new("UICorner", G2L["38"]);
G2L["3a"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.U
G2L["3b"] = Instance.new("TextButton", G2L["4"]);
G2L["3b"]["TextWrapped"] = true;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["3b"]["TextSize"] = 21;
G2L["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["3b"]["Name"] = [[U]];
G2L["3b"]["Text"] = [[U]];
G2L["3b"]["Position"] = UDim2.new(0, 249, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background.U.UIStroke
G2L["3c"] = Instance.new("UIStroke", G2L["3b"]);
G2L["3c"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.U.UICorner
G2L["3d"] = Instance.new("UICorner", G2L["3b"]);
G2L["3d"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.Y
G2L["3e"] = Instance.new("TextButton", G2L["4"]);
G2L["3e"]["TextWrapped"] = true;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["3e"]["TextSize"] = 21;
G2L["3e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["3e"]["Name"] = [[Y]];
G2L["3e"]["Text"] = [[Y]];
G2L["3e"]["Position"] = UDim2.new(0, 216, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background.Y.UIStroke
G2L["3f"] = Instance.new("UIStroke", G2L["3e"]);
G2L["3f"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.Y.UICorner
G2L["40"] = Instance.new("UICorner", G2L["3e"]);
G2L["40"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.T
G2L["41"] = Instance.new("TextButton", G2L["4"]);
G2L["41"]["TextWrapped"] = true;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["41"]["TextSize"] = 21;
G2L["41"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["41"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["41"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["41"]["Name"] = [[T]];
G2L["41"]["Text"] = [[T]];
G2L["41"]["Position"] = UDim2.new(0, 184, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background.T.UIStroke
G2L["42"] = Instance.new("UIStroke", G2L["41"]);
G2L["42"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.T.UICorner
G2L["43"] = Instance.new("UICorner", G2L["41"]);
G2L["43"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.R
G2L["44"] = Instance.new("TextButton", G2L["4"]);
G2L["44"]["TextWrapped"] = true;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["44"]["TextSize"] = 21;
G2L["44"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["44"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["44"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["44"]["Name"] = [[R]];
G2L["44"]["Text"] = [[R]];
G2L["44"]["Position"] = UDim2.new(0, 152, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background.R.UIStroke
G2L["45"] = Instance.new("UIStroke", G2L["44"]);
G2L["45"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.R.UICorner
G2L["46"] = Instance.new("UICorner", G2L["44"]);
G2L["46"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.E
G2L["47"] = Instance.new("TextButton", G2L["4"]);
G2L["47"]["TextWrapped"] = true;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["47"]["TextSize"] = 21;
G2L["47"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["47"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["47"]["Name"] = [[E]];
G2L["47"]["Text"] = [[E]];
G2L["47"]["Position"] = UDim2.new(0, 120, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background.E.UIStroke
G2L["48"] = Instance.new("UIStroke", G2L["47"]);
G2L["48"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["48"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.E.UICorner
G2L["49"] = Instance.new("UICorner", G2L["47"]);
G2L["49"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.P
G2L["4a"] = Instance.new("TextButton", G2L["4"]);
G2L["4a"]["TextWrapped"] = true;
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["4a"]["TextSize"] = 21;
G2L["4a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4a"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["4a"]["Name"] = [[P]];
G2L["4a"]["Text"] = [[P]];
G2L["4a"]["Position"] = UDim2.new(0, 344, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background.P.UIStroke
G2L["4b"] = Instance.new("UIStroke", G2L["4a"]);
G2L["4b"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["4b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.P.UICorner
G2L["4c"] = Instance.new("UICorner", G2L["4a"]);
G2L["4c"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Semicolon
G2L["4d"] = Instance.new("TextButton", G2L["4"]);
G2L["4d"]["TextWrapped"] = true;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["4d"]["TextSize"] = 21;
G2L["4d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["4d"]["Name"] = [[-Semicolon]];
G2L["4d"]["Text"] = [[;]];
G2L["4d"]["Position"] = UDim2.new(0, 354, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background.-Semicolon.UIStroke
G2L["4e"] = Instance.new("UIStroke", G2L["4d"]);
G2L["4e"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["4e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Semicolon.UICorner
G2L["4f"] = Instance.new("UICorner", G2L["4d"]);
G2L["4f"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.A
G2L["50"] = Instance.new("TextButton", G2L["4"]);
G2L["50"]["TextWrapped"] = true;
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["50"]["TextSize"] = 21;
G2L["50"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["50"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["50"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["50"]["Name"] = [[A]];
G2L["50"]["Text"] = [[A]];
G2L["50"]["Position"] = UDim2.new(0, 64, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background.A.UIStroke
G2L["51"] = Instance.new("UIStroke", G2L["50"]);
G2L["51"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.A.UICorner
G2L["52"] = Instance.new("UICorner", G2L["50"]);
G2L["52"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.S
G2L["53"] = Instance.new("TextButton", G2L["4"]);
G2L["53"]["TextWrapped"] = true;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["53"]["TextSize"] = 21;
G2L["53"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["53"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["53"]["Name"] = [[S]];
G2L["53"]["Text"] = [[S]];
G2L["53"]["Position"] = UDim2.new(0, 97, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background.S.UIStroke
G2L["54"] = Instance.new("UIStroke", G2L["53"]);
G2L["54"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["54"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.S.UICorner
G2L["55"] = Instance.new("UICorner", G2L["53"]);
G2L["55"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.Handler
G2L["56"] = Instance.new("LocalScript", G2L["4"]);
G2L["56"]["Name"] = [[Handler]];

-- StarterGui.DeltaKeyboard.Main.Background.G
G2L["57"] = Instance.new("TextButton", G2L["4"]);
G2L["57"]["TextWrapped"] = true;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["57"]["TextSize"] = 21;
G2L["57"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["57"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["57"]["Name"] = [[G]];
G2L["57"]["Text"] = [[G]];
G2L["57"]["Position"] = UDim2.new(0, 194, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background.G.UIStroke
G2L["58"] = Instance.new("UIStroke", G2L["57"]);
G2L["58"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.G.UICorner
G2L["59"] = Instance.new("UICorner", G2L["57"]);
G2L["59"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.F
G2L["5a"] = Instance.new("TextButton", G2L["4"]);
G2L["5a"]["TextWrapped"] = true;
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["5a"]["TextSize"] = 21;
G2L["5a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5a"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["5a"]["Name"] = [[F]];
G2L["5a"]["Text"] = [[F]];
G2L["5a"]["Position"] = UDim2.new(0, 162, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background.F.UIStroke
G2L["5b"] = Instance.new("UIStroke", G2L["5a"]);
G2L["5b"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.F.UICorner
G2L["5c"] = Instance.new("UICorner", G2L["5a"]);
G2L["5c"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.H
G2L["5d"] = Instance.new("TextButton", G2L["4"]);
G2L["5d"]["TextWrapped"] = true;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["5d"]["TextSize"] = 21;
G2L["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["5d"]["Name"] = [[H]];
G2L["5d"]["Text"] = [[H]];
G2L["5d"]["Position"] = UDim2.new(0, 226, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background.H.UIStroke
G2L["5e"] = Instance.new("UIStroke", G2L["5d"]);
G2L["5e"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.H.UICorner
G2L["5f"] = Instance.new("UICorner", G2L["5d"]);
G2L["5f"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.J
G2L["60"] = Instance.new("TextButton", G2L["4"]);
G2L["60"]["TextWrapped"] = true;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["60"]["TextSize"] = 21;
G2L["60"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["60"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["60"]["Name"] = [[J]];
G2L["60"]["Text"] = [[J]];
G2L["60"]["Position"] = UDim2.new(0, 258, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background.J.UIStroke
G2L["61"] = Instance.new("UIStroke", G2L["60"]);
G2L["61"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.J.UICorner
G2L["62"] = Instance.new("UICorner", G2L["60"]);
G2L["62"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.K
G2L["63"] = Instance.new("TextButton", G2L["4"]);
G2L["63"]["TextWrapped"] = true;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["63"]["TextSize"] = 21;
G2L["63"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["63"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["63"]["Name"] = [[K]];
G2L["63"]["Text"] = [[K]];
G2L["63"]["Position"] = UDim2.new(0, 290, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background.K.UIStroke
G2L["64"] = Instance.new("UIStroke", G2L["63"]);
G2L["64"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.K.UICorner
G2L["65"] = Instance.new("UICorner", G2L["63"]);
G2L["65"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.L
G2L["66"] = Instance.new("TextButton", G2L["4"]);
G2L["66"]["TextWrapped"] = true;
G2L["66"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["66"]["TextSize"] = 21;
G2L["66"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["66"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["66"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["66"]["Name"] = [[L]];
G2L["66"]["Text"] = [[L]];
G2L["66"]["Position"] = UDim2.new(0, 322, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background.L.UIStroke
G2L["67"] = Instance.new("UIStroke", G2L["66"]);
G2L["67"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.L.UICorner
G2L["68"] = Instance.new("UICorner", G2L["66"]);
G2L["68"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.Z
G2L["69"] = Instance.new("TextButton", G2L["4"]);
G2L["69"]["TextWrapped"] = true;
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["69"]["TextSize"] = 21;
G2L["69"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["69"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["69"]["Name"] = [[Z]];
G2L["69"]["Text"] = [[Z]];
G2L["69"]["Position"] = UDim2.new(0, 80, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background.Z.UIStroke
G2L["6a"] = Instance.new("UIStroke", G2L["69"]);
G2L["6a"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.Z.UICorner
G2L["6b"] = Instance.new("UICorner", G2L["69"]);
G2L["6b"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.X
G2L["6c"] = Instance.new("TextButton", G2L["4"]);
G2L["6c"]["TextWrapped"] = true;
G2L["6c"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["6c"]["TextSize"] = 21;
G2L["6c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6c"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["6c"]["Name"] = [[X]];
G2L["6c"]["Text"] = [[X]];
G2L["6c"]["Position"] = UDim2.new(0, 112, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background.X.UIStroke
G2L["6d"] = Instance.new("UIStroke", G2L["6c"]);
G2L["6d"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.X.UICorner
G2L["6e"] = Instance.new("UICorner", G2L["6c"]);
G2L["6e"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.C
G2L["6f"] = Instance.new("TextButton", G2L["4"]);
G2L["6f"]["TextWrapped"] = true;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["6f"]["TextSize"] = 21;
G2L["6f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6f"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["6f"]["Name"] = [[C]];
G2L["6f"]["Text"] = [[C]];
G2L["6f"]["Position"] = UDim2.new(0, 145, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background.C.UIStroke
G2L["70"] = Instance.new("UIStroke", G2L["6f"]);
G2L["70"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["70"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.C.UICorner
G2L["71"] = Instance.new("UICorner", G2L["6f"]);
G2L["71"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.V
G2L["72"] = Instance.new("TextButton", G2L["4"]);
G2L["72"]["TextWrapped"] = true;
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["72"]["TextSize"] = 21;
G2L["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["72"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["72"]["Name"] = [[V]];
G2L["72"]["Text"] = [[V]];
G2L["72"]["Position"] = UDim2.new(0, 177, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background.V.UIStroke
G2L["73"] = Instance.new("UIStroke", G2L["72"]);
G2L["73"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.V.UICorner
G2L["74"] = Instance.new("UICorner", G2L["72"]);
G2L["74"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.B
G2L["75"] = Instance.new("TextButton", G2L["4"]);
G2L["75"]["TextWrapped"] = true;
G2L["75"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["75"]["TextSize"] = 21;
G2L["75"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["75"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["75"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["75"]["Name"] = [[B]];
G2L["75"]["Text"] = [[B]];
G2L["75"]["Position"] = UDim2.new(0, 209, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background.B.UIStroke
G2L["76"] = Instance.new("UIStroke", G2L["75"]);
G2L["76"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.B.UICorner
G2L["77"] = Instance.new("UICorner", G2L["75"]);
G2L["77"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.N
G2L["78"] = Instance.new("TextButton", G2L["4"]);
G2L["78"]["TextWrapped"] = true;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["78"]["TextSize"] = 21;
G2L["78"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["78"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["78"]["Name"] = [[N]];
G2L["78"]["Text"] = [[N]];
G2L["78"]["Position"] = UDim2.new(0, 241, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background.N.UIStroke
G2L["79"] = Instance.new("UIStroke", G2L["78"]);
G2L["79"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["79"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.N.UICorner
G2L["7a"] = Instance.new("UICorner", G2L["78"]);
G2L["7a"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.M
G2L["7b"] = Instance.new("TextButton", G2L["4"]);
G2L["7b"]["TextWrapped"] = true;
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["7b"]["TextSize"] = 21;
G2L["7b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7b"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["7b"]["Name"] = [[M]];
G2L["7b"]["Text"] = [[M]];
G2L["7b"]["Position"] = UDim2.new(0, 273, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background.M.UIStroke
G2L["7c"] = Instance.new("UIStroke", G2L["7b"]);
G2L["7c"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["7c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.M.UICorner
G2L["7d"] = Instance.new("UICorner", G2L["7b"]);
G2L["7d"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Period
G2L["7e"] = Instance.new("TextButton", G2L["4"]);
G2L["7e"]["TextWrapped"] = true;
G2L["7e"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["7e"]["TextSize"] = 21;
G2L["7e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7e"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["7e"]["Name"] = [[-Period]];
G2L["7e"]["Text"] = [[.]];
G2L["7e"]["Position"] = UDim2.new(0, 338, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background.-Period.UIStroke
G2L["7f"] = Instance.new("UIStroke", G2L["7e"]);
G2L["7f"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Period.UICorner
G2L["80"] = Instance.new("UICorner", G2L["7e"]);
G2L["80"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Comma
G2L["81"] = Instance.new("TextButton", G2L["4"]);
G2L["81"]["TextWrapped"] = true;
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["81"]["TextSize"] = 21;
G2L["81"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["81"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["81"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["81"]["Name"] = [[-Comma]];
G2L["81"]["Text"] = [[,]];
G2L["81"]["Position"] = UDim2.new(0, 305, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background.-Comma.UIStroke
G2L["82"] = Instance.new("UIStroke", G2L["81"]);
G2L["82"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["82"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Comma.UICorner
G2L["83"] = Instance.new("UICorner", G2L["81"]);
G2L["83"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.RightShift
G2L["84"] = Instance.new("TextButton", G2L["4"]);
G2L["84"]["TextWrapped"] = true;
G2L["84"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["84"]["TextSize"] = 21;
G2L["84"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["84"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["84"]["Size"] = UDim2.new(0, 64, 0, 25);
G2L["84"]["Name"] = [[RightShift]];
G2L["84"]["Text"] = [[Shift]];
G2L["84"]["Position"] = UDim2.new(0, 405, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background.RightShift.UIStroke
G2L["85"] = Instance.new("UIStroke", G2L["84"]);
G2L["85"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.RightShift.UICorner
G2L["86"] = Instance.new("UICorner", G2L["84"]);
G2L["86"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Slash
G2L["87"] = Instance.new("TextButton", G2L["4"]);
G2L["87"]["TextWrapped"] = true;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["87"]["TextSize"] = 21;
G2L["87"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["87"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["87"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["87"]["Name"] = [[-Slash]];
G2L["87"]["Text"] = [[/]];
G2L["87"]["Position"] = UDim2.new(0, 372, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background.-Slash.UIStroke
G2L["88"] = Instance.new("UIStroke", G2L["87"]);
G2L["88"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["88"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Slash.UICorner
G2L["89"] = Instance.new("UICorner", G2L["87"]);
G2L["89"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.Enter
G2L["8a"] = Instance.new("TextButton", G2L["4"]);
G2L["8a"]["TextWrapped"] = true;
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["8a"]["TextSize"] = 21;
G2L["8a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["Size"] = UDim2.new(0, 51, 0, 25);
G2L["8a"]["Name"] = [[Enter]];
G2L["8a"]["Text"] = [[Enter]];
G2L["8a"]["Position"] = UDim2.new(0, 418, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background.Enter.UIStroke
G2L["8b"] = Instance.new("UIStroke", G2L["8a"]);
G2L["8b"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["8b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.Enter.UICorner
G2L["8c"] = Instance.new("UICorner", G2L["8a"]);
G2L["8c"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-Qoute
G2L["8d"] = Instance.new("TextButton", G2L["4"]);
G2L["8d"]["TextWrapped"] = true;
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["8d"]["TextSize"] = 21;
G2L["8d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8d"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["8d"]["Name"] = [[-Qoute]];
G2L["8d"]["Text"] = [[']];
G2L["8d"]["Position"] = UDim2.new(0, 386, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background.-Qoute.UIStroke
G2L["8e"] = Instance.new("UIStroke", G2L["8d"]);
G2L["8e"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["8e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-Qoute.UICorner
G2L["8f"] = Instance.new("UICorner", G2L["8d"]);
G2L["8f"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-BackSlash
G2L["90"] = Instance.new("TextButton", G2L["4"]);
G2L["90"]["TextWrapped"] = true;
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["90"]["TextSize"] = 21;
G2L["90"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["90"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["90"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["90"]["Name"] = [[-BackSlash]];
G2L["90"]["Text"] = [[\]];
G2L["90"]["Position"] = UDim2.new(0, 442, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background.-BackSlash.UIStroke
G2L["91"] = Instance.new("UIStroke", G2L["90"]);
G2L["91"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["91"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-BackSlash.UICorner
G2L["92"] = Instance.new("UICorner", G2L["90"]);
G2L["92"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-RightBracket
G2L["93"] = Instance.new("TextButton", G2L["4"]);
G2L["93"]["TextWrapped"] = true;
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["93"]["TextSize"] = 21;
G2L["93"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["93"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["93"]["Name"] = [[-RightBracket]];
G2L["93"]["Text"] = "]";
G2L["93"]["Position"] = UDim2.new(0, 410, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background.-RightBracket.UIStroke
G2L["94"] = Instance.new("UIStroke", G2L["93"]);
G2L["94"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["94"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-RightBracket.UICorner
G2L["95"] = Instance.new("UICorner", G2L["93"]);
G2L["95"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.-LeftBracket
G2L["96"] = Instance.new("TextButton", G2L["4"]);
G2L["96"]["TextWrapped"] = true;
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["96"]["TextSize"] = 21;
G2L["96"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["96"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["96"]["Name"] = [[-LeftBracket]];
G2L["96"]["Text"] = [[[]];
G2L["96"]["Position"] = UDim2.new(0, 378, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background.-LeftBracket.UIStroke
G2L["97"] = Instance.new("UIStroke", G2L["96"]);
G2L["97"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["97"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.-LeftBracket.UICorner
G2L["98"] = Instance.new("UICorner", G2L["96"]);
G2L["98"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.Tab
G2L["99"] = Instance.new("TextButton", G2L["4"]);
G2L["99"]["TextWrapped"] = true;
G2L["99"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["99"]["TextSize"] = 21;
G2L["99"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["99"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["99"]["Size"] = UDim2.new(0, 40, 0, 25);
G2L["99"]["Name"] = [[Tab]];
G2L["99"]["Text"] = [[Tab]];
G2L["99"]["Position"] = UDim2.new(0, 7, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background.Tab.UIStroke
G2L["9a"] = Instance.new("UIStroke", G2L["99"]);
G2L["9a"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.Tab.UICorner
G2L["9b"] = Instance.new("UICorner", G2L["99"]);
G2L["9b"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.CapsLock
G2L["9c"] = Instance.new("TextButton", G2L["4"]);
G2L["9c"]["TextWrapped"] = true;
G2L["9c"]["TextScaled"] = true;
G2L["9c"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["9c"]["TextSize"] = 1;
G2L["9c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9c"]["Size"] = UDim2.new(0, 50, 0, 25);
G2L["9c"]["Name"] = [[CapsLock]];
G2L["9c"]["Text"] = [[Caps Lock]];
G2L["9c"]["Position"] = UDim2.new(0, 7, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background.CapsLock.UIStroke
G2L["9d"] = Instance.new("UIStroke", G2L["9c"]);
G2L["9d"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["9d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.CapsLock.UICorner
G2L["9e"] = Instance.new("UICorner", G2L["9c"]);
G2L["9e"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.LeftShift
G2L["9f"] = Instance.new("TextButton", G2L["4"]);
G2L["9f"]["TextWrapped"] = true;
G2L["9f"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["9f"]["TextSize"] = 21;
G2L["9f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9f"]["Size"] = UDim2.new(0, 65, 0, 25);
G2L["9f"]["Name"] = [[LeftShift]];
G2L["9f"]["Text"] = [[Shift]];
G2L["9f"]["Position"] = UDim2.new(0, 7, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background.LeftShift.UIStroke
G2L["a0"] = Instance.new("UIStroke", G2L["9f"]);
G2L["a0"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["a0"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.LeftShift.UICorner
G2L["a1"] = Instance.new("UICorner", G2L["9f"]);
G2L["a1"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.LeftControl
G2L["a2"] = Instance.new("TextButton", G2L["4"]);
G2L["a2"]["TextWrapped"] = true;
G2L["a2"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["a2"]["TextSize"] = 23;
G2L["a2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a2"]["Size"] = UDim2.new(0, 57, 0, 25);
G2L["a2"]["Name"] = [[LeftControl]];
G2L["a2"]["Text"] = [[Ctrl]];
G2L["a2"]["Position"] = UDim2.new(0, 7, 0, 160);

-- StarterGui.DeltaKeyboard.Main.Background.LeftControl.UIStroke
G2L["a3"] = Instance.new("UIStroke", G2L["a2"]);
G2L["a3"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["a3"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.LeftControl.UICorner
G2L["a4"] = Instance.new("UICorner", G2L["a2"]);
G2L["a4"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.F12
G2L["a5"] = Instance.new("TextButton", G2L["4"]);
G2L["a5"]["TextWrapped"] = true;
G2L["a5"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["a5"]["TextSize"] = 15;
G2L["a5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a5"]["Size"] = UDim2.new(0, 24, 0, 25);
G2L["a5"]["Name"] = [[F12]];
G2L["a5"]["Text"] = [[F12]];
G2L["a5"]["Position"] = UDim2.new(0, 389, 0, -1);

-- StarterGui.DeltaKeyboard.Main.Background.F12.UIStroke
G2L["a6"] = Instance.new("UIStroke", G2L["a5"]);
G2L["a6"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["a6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.F12.UICorner
G2L["a7"] = Instance.new("UICorner", G2L["a5"]);
G2L["a7"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.Delete
G2L["a8"] = Instance.new("TextButton", G2L["4"]);
G2L["a8"]["TextWrapped"] = true;
G2L["a8"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["a8"]["TextSize"] = 14;
G2L["a8"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a8"]["Size"] = UDim2.new(0, 44, 0, 25);
G2L["a8"]["Name"] = [[Delete]];
G2L["a8"]["Text"] = [[xgo]];
G2L["a8"]["Position"] = UDim2.new(0, 423, 0, -1);

-- StarterGui.DeltaKeyboard.Main.Background.Delete.UIStroke
G2L["a9"] = Instance.new("UIStroke", G2L["a8"]);
G2L["a9"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["a9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.Delete.UICorner
G2L["aa"] = Instance.new("UICorner", G2L["a8"]);
G2L["aa"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.LeftAlt
G2L["ab"] = Instance.new("TextButton", G2L["4"]);
G2L["ab"]["TextWrapped"] = true;
G2L["ab"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["ab"]["TextSize"] = 21;
G2L["ab"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ab"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["Size"] = UDim2.new(0, 56, 0, 25);
G2L["ab"]["Name"] = [[LeftAlt]];
G2L["ab"]["Text"] = [[Alt]];
G2L["ab"]["Position"] = UDim2.new(0, 73, 0, 160);

-- StarterGui.DeltaKeyboard.Main.Background.LeftAlt.UIStroke
G2L["ac"] = Instance.new("UIStroke", G2L["ab"]);
G2L["ac"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["ac"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.LeftAlt.UICorner
G2L["ad"] = Instance.new("UICorner", G2L["ab"]);
G2L["ad"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.Space
G2L["ae"] = Instance.new("TextButton", G2L["4"]);
G2L["ae"]["TextWrapped"] = true;
G2L["ae"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["ae"]["TextSize"] = 21;
G2L["ae"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ae"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ae"]["Size"] = UDim2.new(0, 159, 0, 25);
G2L["ae"]["Name"] = [[Space]];
G2L["ae"]["Text"] = [[]];
G2L["ae"]["Position"] = UDim2.new(0, 137, 0, 160);

-- StarterGui.DeltaKeyboard.Main.Background.Space.UIStroke
G2L["af"] = Instance.new("UIStroke", G2L["ae"]);
G2L["af"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["af"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.Space.UICorner
G2L["b0"] = Instance.new("UICorner", G2L["ae"]);
G2L["b0"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.RightAlt
G2L["b1"] = Instance.new("TextButton", G2L["4"]);
G2L["b1"]["TextWrapped"] = true;
G2L["b1"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["b1"]["TextSize"] = 21;
G2L["b1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b1"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["b1"]["Name"] = [[RightAlt]];
G2L["b1"]["Text"] = [[Alt]];
G2L["b1"]["Position"] = UDim2.new(0, 305, 0, 160);

-- StarterGui.DeltaKeyboard.Main.Background.RightAlt.UIStroke
G2L["b2"] = Instance.new("UIStroke", G2L["b1"]);
G2L["b2"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["b2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.RightAlt.UICorner
G2L["b3"] = Instance.new("UICorner", G2L["b1"]);
G2L["b3"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.RightControl
G2L["b4"] = Instance.new("TextButton", G2L["4"]);
G2L["b4"]["TextWrapped"] = true;
G2L["b4"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["b4"]["TextSize"] = 12;
G2L["b4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b4"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["b4"]["Name"] = [[RightControl]];
G2L["b4"]["Text"] = [[Ctrl]];
G2L["b4"]["Position"] = UDim2.new(0, 337, 0, 160);

-- StarterGui.DeltaKeyboard.Main.Background.RightControl.UIStroke
G2L["b5"] = Instance.new("UIStroke", G2L["b4"]);
G2L["b5"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["b5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.RightControl.UICorner
G2L["b6"] = Instance.new("UICorner", G2L["b4"]);
G2L["b6"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.PageUp
G2L["b7"] = Instance.new("TextButton", G2L["4"]);
G2L["b7"]["TextWrapped"] = true;
G2L["b7"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["b7"]["TextSize"] = 12;
G2L["b7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b7"]["Size"] = UDim2.new(0, 33, 0, 11);
G2L["b7"]["Name"] = [[PageUp]];
G2L["b7"]["Text"] = [[Up]];
G2L["b7"]["Position"] = UDim2.new(0, 400, 0, 160);

-- StarterGui.DeltaKeyboard.Main.Background.PageUp.UIStroke
G2L["b8"] = Instance.new("UIStroke", G2L["b7"]);
G2L["b8"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["b8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.PageUp.UICorner
G2L["b9"] = Instance.new("UICorner", G2L["b7"]);
G2L["b9"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.PageDown
G2L["ba"] = Instance.new("TextButton", G2L["4"]);
G2L["ba"]["TextWrapped"] = true;
G2L["ba"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["ba"]["TextSize"] = 12;
G2L["ba"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ba"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ba"]["Size"] = UDim2.new(0, 33, 0, 10);
G2L["ba"]["Name"] = [[PageDown]];
G2L["ba"]["Text"] = [[Down]];
G2L["ba"]["Position"] = UDim2.new(0, 400, 0, 174);

-- StarterGui.DeltaKeyboard.Main.Background.PageDown.UIStroke
G2L["bb"] = Instance.new("UIStroke", G2L["ba"]);
G2L["bb"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["bb"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.PageDown.UICorner
G2L["bc"] = Instance.new("UICorner", G2L["ba"]);
G2L["bc"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.End
G2L["bd"] = Instance.new("TextButton", G2L["4"]);
G2L["bd"]["TextWrapped"] = true;
G2L["bd"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["bd"]["TextSize"] = 12;
G2L["bd"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["bd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bd"]["Size"] = UDim2.new(0, 33, 0, 10);
G2L["bd"]["Name"] = [[End]];
G2L["bd"]["Text"] = [[>]];
G2L["bd"]["Position"] = UDim2.new(0, 436, 0, 174);

-- StarterGui.DeltaKeyboard.Main.Background.End.UIStroke
G2L["be"] = Instance.new("UIStroke", G2L["bd"]);
G2L["be"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["be"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.End.UICorner
G2L["bf"] = Instance.new("UICorner", G2L["bd"]);
G2L["bf"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.Home
G2L["c0"] = Instance.new("TextButton", G2L["4"]);
G2L["c0"]["TextWrapped"] = true;
G2L["c0"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["c0"]["TextSize"] = 12;
G2L["c0"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c0"]["Size"] = UDim2.new(0, 30, 0, 10);
G2L["c0"]["Name"] = [[Home]];
G2L["c0"]["Text"] = [[<]];
G2L["c0"]["Position"] = UDim2.new(0, 366, 0, 174);

-- StarterGui.DeltaKeyboard.Main.Background.Home.UIStroke
G2L["c1"] = Instance.new("UIStroke", G2L["c0"]);
G2L["c1"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["c1"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.Home.UICorner
G2L["c2"] = Instance.new("UICorner", G2L["c0"]);
G2L["c2"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.Escape
G2L["c3"] = Instance.new("TextButton", G2L["4"]);
G2L["c3"]["TextWrapped"] = true;
G2L["c3"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["c3"]["TextSize"] = 12;
G2L["c3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c3"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c3"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["c3"]["Name"] = [[Escape]];
G2L["c3"]["Text"] = [[Esc]];
G2L["c3"]["Position"] = UDim2.new(0, 7, 0, -1);

-- StarterGui.DeltaKeyboard.Main.Background.Escape.UIStroke
G2L["c4"] = Instance.new("UIStroke", G2L["c3"]);
G2L["c4"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["c4"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.Escape.UICorner
G2L["c5"] = Instance.new("UICorner", G2L["c3"]);
G2L["c5"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.F1
G2L["c6"] = Instance.new("TextButton", G2L["4"]);
G2L["c6"]["TextWrapped"] = true;
G2L["c6"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["c6"]["TextSize"] = 21;
G2L["c6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c6"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["c6"]["Name"] = [[F1]];
G2L["c6"]["Text"] = [[F1]];
G2L["c6"]["Position"] = UDim2.new(0, 39, 0, -1);

-- StarterGui.DeltaKeyboard.Main.Background.F1.UIStroke
G2L["c7"] = Instance.new("UIStroke", G2L["c6"]);
G2L["c7"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["c7"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.F1.UICorner
G2L["c8"] = Instance.new("UICorner", G2L["c6"]);
G2L["c8"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.F2
G2L["c9"] = Instance.new("TextButton", G2L["4"]);
G2L["c9"]["TextWrapped"] = true;
G2L["c9"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["c9"]["TextSize"] = 21;
G2L["c9"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c9"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["c9"]["Name"] = [[F2]];
G2L["c9"]["Text"] = [[F2]];
G2L["c9"]["Position"] = UDim2.new(0, 71, 0, -1);

-- StarterGui.DeltaKeyboard.Main.Background.F2.UIStroke
G2L["ca"] = Instance.new("UIStroke", G2L["c9"]);
G2L["ca"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["ca"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.F2.UICorner
G2L["cb"] = Instance.new("UICorner", G2L["c9"]);
G2L["cb"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.F3
G2L["cc"] = Instance.new("TextButton", G2L["4"]);
G2L["cc"]["TextWrapped"] = true;
G2L["cc"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["cc"]["TextSize"] = 21;
G2L["cc"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["cc"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cc"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["cc"]["Name"] = [[F3]];
G2L["cc"]["Text"] = [[F3]];
G2L["cc"]["Position"] = UDim2.new(0, 104, 0, -1);

-- StarterGui.DeltaKeyboard.Main.Background.F3.UIStroke
G2L["cd"] = Instance.new("UIStroke", G2L["cc"]);
G2L["cd"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["cd"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.F3.UICorner
G2L["ce"] = Instance.new("UICorner", G2L["cc"]);
G2L["ce"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.F4
G2L["cf"] = Instance.new("TextButton", G2L["4"]);
G2L["cf"]["TextWrapped"] = true;
G2L["cf"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["cf"]["TextSize"] = 21;
G2L["cf"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["cf"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["cf"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["cf"]["Name"] = [[F4]];
G2L["cf"]["Text"] = [[F4]];
G2L["cf"]["Position"] = UDim2.new(0, 135, 0, -1);

-- StarterGui.DeltaKeyboard.Main.Background.F4.UIStroke
G2L["d0"] = Instance.new("UIStroke", G2L["cf"]);
G2L["d0"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["d0"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.F4.UICorner
G2L["d1"] = Instance.new("UICorner", G2L["cf"]);
G2L["d1"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.F5
G2L["d2"] = Instance.new("TextButton", G2L["4"]);
G2L["d2"]["TextWrapped"] = true;
G2L["d2"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["d2"]["TextSize"] = 21;
G2L["d2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["d2"]["Name"] = [[F5]];
G2L["d2"]["Text"] = [[F5]];
G2L["d2"]["Position"] = UDim2.new(0, 167, 0, -1);

-- StarterGui.DeltaKeyboard.Main.Background.F5.UIStroke
G2L["d3"] = Instance.new("UIStroke", G2L["d2"]);
G2L["d3"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["d3"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.F5.UICorner
G2L["d4"] = Instance.new("UICorner", G2L["d2"]);
G2L["d4"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.F6
G2L["d5"] = Instance.new("TextButton", G2L["4"]);
G2L["d5"]["TextWrapped"] = true;
G2L["d5"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["d5"]["TextSize"] = 21;
G2L["d5"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d5"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["d5"]["Name"] = [[F6]];
G2L["d5"]["Text"] = [[F6]];
G2L["d5"]["Position"] = UDim2.new(0, 199, 0, -1);

-- StarterGui.DeltaKeyboard.Main.Background.F6.UIStroke
G2L["d6"] = Instance.new("UIStroke", G2L["d5"]);
G2L["d6"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["d6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.F6.UICorner
G2L["d7"] = Instance.new("UICorner", G2L["d5"]);
G2L["d7"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.F7
G2L["d8"] = Instance.new("TextButton", G2L["4"]);
G2L["d8"]["TextWrapped"] = true;
G2L["d8"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["d8"]["TextSize"] = 21;
G2L["d8"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["d8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d8"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["d8"]["Name"] = [[F7]];
G2L["d8"]["Text"] = [[F7]];
G2L["d8"]["Position"] = UDim2.new(0, 231, 0, -1);

-- StarterGui.DeltaKeyboard.Main.Background.F7.UIStroke
G2L["d9"] = Instance.new("UIStroke", G2L["d8"]);
G2L["d9"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["d9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.F7.UICorner
G2L["da"] = Instance.new("UICorner", G2L["d8"]);
G2L["da"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.F8
G2L["db"] = Instance.new("TextButton", G2L["4"]);
G2L["db"]["TextWrapped"] = true;
G2L["db"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["db"]["TextSize"] = 21;
G2L["db"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["db"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["db"]["Size"] = UDim2.new(0, 24, 0, 25);
G2L["db"]["Name"] = [[F8]];
G2L["db"]["Text"] = [[F8]];
G2L["db"]["Position"] = UDim2.new(0, 264, 0, -1);

-- StarterGui.DeltaKeyboard.Main.Background.F8.UIStroke
G2L["dc"] = Instance.new("UIStroke", G2L["db"]);
G2L["dc"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["dc"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.F8.UICorner
G2L["dd"] = Instance.new("UICorner", G2L["db"]);
G2L["dd"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.F9
G2L["de"] = Instance.new("TextButton", G2L["4"]);
G2L["de"]["TextWrapped"] = true;
G2L["de"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["de"]["TextSize"] = 21;
G2L["de"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["de"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["de"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["de"]["Name"] = [[F9]];
G2L["de"]["Text"] = [[F9]];
G2L["de"]["Position"] = UDim2.new(0, 295, 0, -1);

-- StarterGui.DeltaKeyboard.Main.Background.F9.UIStroke
G2L["df"] = Instance.new("UIStroke", G2L["de"]);
G2L["df"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["df"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.F9.UICorner
G2L["e0"] = Instance.new("UICorner", G2L["de"]);
G2L["e0"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.F10
G2L["e1"] = Instance.new("TextButton", G2L["4"]);
G2L["e1"]["TextWrapped"] = true;
G2L["e1"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["e1"]["TextSize"] = 15;
G2L["e1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e1"]["Size"] = UDim2.new(0, 24, 0, 25);
G2L["e1"]["Name"] = [[F10]];
G2L["e1"]["Text"] = [[F10]];
G2L["e1"]["Position"] = UDim2.new(0, 327, 0, -1);

-- StarterGui.DeltaKeyboard.Main.Background.F10.UIStroke
G2L["e2"] = Instance.new("UIStroke", G2L["e1"]);
G2L["e2"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["e2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.F10.UICorner
G2L["e3"] = Instance.new("UICorner", G2L["e1"]);
G2L["e3"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.F11
G2L["e4"] = Instance.new("TextButton", G2L["4"]);
G2L["e4"]["TextWrapped"] = true;
G2L["e4"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["e4"]["TextSize"] = 15;
G2L["e4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e4"]["Size"] = UDim2.new(0, 24, 0, 25);
G2L["e4"]["Name"] = [[F11]];
G2L["e4"]["Text"] = [[F11]];
G2L["e4"]["Position"] = UDim2.new(0, 358, 0, -1);

-- StarterGui.DeltaKeyboard.Main.Background.F11.UIStroke
G2L["e5"] = Instance.new("UIStroke", G2L["e4"]);
G2L["e5"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["e5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.F11.UICorner
G2L["e6"] = Instance.new("UICorner", G2L["e4"]);
G2L["e6"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.RGBHandler
G2L["e7"] = Instance.new("LocalScript", G2L["4"]);
G2L["e7"]["Name"] = [[RGBHandler]];

-- StarterGui.DeltaKeyboard.Main.Background._Pipe
G2L["e8"] = Instance.new("TextButton", G2L["4"]);
G2L["e8"]["TextWrapped"] = true;
G2L["e8"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["e8"]["TextSize"] = 21;
G2L["e8"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e8"]["Visible"] = false;
G2L["e8"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["e8"]["Name"] = [[_Pipe]];
G2L["e8"]["Text"] = [[|]];
G2L["e8"]["Position"] = UDim2.new(0, 442, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background._Pipe.UIStroke
G2L["e9"] = Instance.new("UIStroke", G2L["e8"]);
G2L["e9"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["e9"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._Pipe.UICorner
G2L["ea"] = Instance.new("UICorner", G2L["e8"]);
G2L["ea"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._Tilde
G2L["eb"] = Instance.new("TextButton", G2L["4"]);
G2L["eb"]["TextWrapped"] = true;
G2L["eb"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["eb"]["TextSize"] = 21;
G2L["eb"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["eb"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["eb"]["Visible"] = false;
G2L["eb"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["eb"]["Name"] = [[_Tilde]];
G2L["eb"]["Text"] = [[~]];
G2L["eb"]["Position"] = UDim2.new(0, 7, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background._Tilde.UIStroke
G2L["ec"] = Instance.new("UIStroke", G2L["eb"]);
G2L["ec"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["ec"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._Tilde.UICorner
G2L["ed"] = Instance.new("UICorner", G2L["eb"]);
G2L["ed"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._Exclamation
G2L["ee"] = Instance.new("TextButton", G2L["4"]);
G2L["ee"]["TextWrapped"] = true;
G2L["ee"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["ee"]["TextSize"] = 21;
G2L["ee"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ee"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ee"]["Visible"] = false;
G2L["ee"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["ee"]["Name"] = [[_Exclamation]];
G2L["ee"]["Text"] = [[!]];
G2L["ee"]["Position"] = UDim2.new(0, 39, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background._Exclamation.UIStroke
G2L["ef"] = Instance.new("UIStroke", G2L["ee"]);
G2L["ef"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["ef"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._Exclamation.UICorner
G2L["f0"] = Instance.new("UICorner", G2L["ee"]);
G2L["f0"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._At
G2L["f1"] = Instance.new("TextButton", G2L["4"]);
G2L["f1"]["TextWrapped"] = true;
G2L["f1"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["f1"]["TextSize"] = 21;
G2L["f1"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f1"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f1"]["Visible"] = false;
G2L["f1"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["f1"]["Name"] = [[_At]];
G2L["f1"]["Text"] = [[@]];
G2L["f1"]["Position"] = UDim2.new(0, 71, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background._At.UIStroke
G2L["f2"] = Instance.new("UIStroke", G2L["f1"]);
G2L["f2"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["f2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._At.UICorner
G2L["f3"] = Instance.new("UICorner", G2L["f1"]);
G2L["f3"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._Hash
G2L["f4"] = Instance.new("TextButton", G2L["4"]);
G2L["f4"]["TextWrapped"] = true;
G2L["f4"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["f4"]["TextSize"] = 21;
G2L["f4"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f4"]["Visible"] = false;
G2L["f4"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["f4"]["Name"] = [[_Hash]];
G2L["f4"]["Text"] = [[#]];
G2L["f4"]["Position"] = UDim2.new(0, 104, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background._Hash.UIStroke
G2L["f5"] = Instance.new("UIStroke", G2L["f4"]);
G2L["f5"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["f5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._Hash.UICorner
G2L["f6"] = Instance.new("UICorner", G2L["f4"]);
G2L["f6"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._Dollar
G2L["f7"] = Instance.new("TextButton", G2L["4"]);
G2L["f7"]["TextWrapped"] = true;
G2L["f7"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["f7"]["TextSize"] = 21;
G2L["f7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["f7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f7"]["Visible"] = false;
G2L["f7"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["f7"]["Name"] = [[_Dollar]];
G2L["f7"]["Text"] = [[$]];
G2L["f7"]["Position"] = UDim2.new(0, 135, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background._Dollar.UIStroke
G2L["f8"] = Instance.new("UIStroke", G2L["f7"]);
G2L["f8"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["f8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._Dollar.UICorner
G2L["f9"] = Instance.new("UICorner", G2L["f7"]);
G2L["f9"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._Percent
G2L["fa"] = Instance.new("TextButton", G2L["4"]);
G2L["fa"]["TextWrapped"] = true;
G2L["fa"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["fa"]["TextSize"] = 21;
G2L["fa"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["fa"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fa"]["Visible"] = false;
G2L["fa"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["fa"]["Name"] = [[_Percent]];
G2L["fa"]["Text"] = [[%]];
G2L["fa"]["Position"] = UDim2.new(0, 167, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background._Percent.UIStroke
G2L["fb"] = Instance.new("UIStroke", G2L["fa"]);
G2L["fb"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["fb"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._Percent.UICorner
G2L["fc"] = Instance.new("UICorner", G2L["fa"]);
G2L["fc"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._Caret
G2L["fd"] = Instance.new("TextButton", G2L["4"]);
G2L["fd"]["TextWrapped"] = true;
G2L["fd"]["TextStrokeTransparency"] = 0;
G2L["fd"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["fd"]["TextSize"] = 21;
G2L["fd"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["fd"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["fd"]["Visible"] = false;
G2L["fd"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["fd"]["Name"] = [[_Caret]];
G2L["fd"]["Text"] = [[^]];
G2L["fd"]["Position"] = UDim2.new(0, 199, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background._Caret.UIStroke
G2L["fe"] = Instance.new("UIStroke", G2L["fd"]);
G2L["fe"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["fe"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._Caret.UICorner
G2L["ff"] = Instance.new("UICorner", G2L["fd"]);
G2L["ff"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._Ampersand
G2L["100"] = Instance.new("TextButton", G2L["4"]);
G2L["100"]["TextWrapped"] = true;
G2L["100"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["100"]["TextSize"] = 21;
G2L["100"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["100"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["100"]["Visible"] = false;
G2L["100"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["100"]["Name"] = [[_Ampersand]];
G2L["100"]["Text"] = [[&]];
G2L["100"]["Position"] = UDim2.new(0, 231, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background._Ampersand.UIStroke
G2L["101"] = Instance.new("UIStroke", G2L["100"]);
G2L["101"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["101"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._Ampersand.UICorner
G2L["102"] = Instance.new("UICorner", G2L["100"]);
G2L["102"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._Asterisk
G2L["103"] = Instance.new("TextButton", G2L["4"]);
G2L["103"]["TextWrapped"] = true;
G2L["103"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["103"]["TextSize"] = 21;
G2L["103"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["103"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["103"]["Visible"] = false;
G2L["103"]["Size"] = UDim2.new(0, 24, 0, 25);
G2L["103"]["Name"] = [[_Asterisk]];
G2L["103"]["Text"] = [[*]];
G2L["103"]["Position"] = UDim2.new(0, 264, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background._Asterisk.UIStroke
G2L["104"] = Instance.new("UIStroke", G2L["103"]);
G2L["104"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["104"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._Asterisk.UICorner
G2L["105"] = Instance.new("UICorner", G2L["103"]);
G2L["105"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._LeftParenthesis
G2L["106"] = Instance.new("TextButton", G2L["4"]);
G2L["106"]["TextWrapped"] = true;
G2L["106"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["106"]["TextSize"] = 21;
G2L["106"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["106"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["106"]["Visible"] = false;
G2L["106"]["Size"] = UDim2.new(0, 24, 0, 25);
G2L["106"]["Name"] = [[_LeftParenthesis]];
G2L["106"]["Text"] = [[(]];
G2L["106"]["Position"] = UDim2.new(0, 295, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background._LeftParenthesis.UIStroke
G2L["107"] = Instance.new("UIStroke", G2L["106"]);
G2L["107"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["107"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._LeftParenthesis.UICorner
G2L["108"] = Instance.new("UICorner", G2L["106"]);
G2L["108"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._RightParenthesis
G2L["109"] = Instance.new("TextButton", G2L["4"]);
G2L["109"]["TextWrapped"] = true;
G2L["109"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["109"]["TextSize"] = 21;
G2L["109"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["109"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["109"]["Visible"] = false;
G2L["109"]["Size"] = UDim2.new(0, 24, 0, 25);
G2L["109"]["Name"] = [[_RightParenthesis]];
G2L["109"]["Text"] = [[)]];
G2L["109"]["Position"] = UDim2.new(0, 327, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background._RightParenthesis.UIStroke
G2L["10a"] = Instance.new("UIStroke", G2L["109"]);
G2L["10a"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["10a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._RightParenthesis.UICorner
G2L["10b"] = Instance.new("UICorner", G2L["109"]);
G2L["10b"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._Underscore
G2L["10c"] = Instance.new("TextButton", G2L["4"]);
G2L["10c"]["TextWrapped"] = true;
G2L["10c"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["10c"]["TextSize"] = 21;
G2L["10c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10c"]["Visible"] = false;
G2L["10c"]["Size"] = UDim2.new(0, 24, 0, 25);
G2L["10c"]["Name"] = [[_Underscore]];
G2L["10c"]["Text"] = [[_]];
G2L["10c"]["Position"] = UDim2.new(0, 358, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background._Underscore.UIStroke
G2L["10d"] = Instance.new("UIStroke", G2L["10c"]);
G2L["10d"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["10d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._Underscore.UICorner
G2L["10e"] = Instance.new("UICorner", G2L["10c"]);
G2L["10e"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._Plus
G2L["10f"] = Instance.new("TextButton", G2L["4"]);
G2L["10f"]["TextWrapped"] = true;
G2L["10f"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["10f"]["TextSize"] = 21;
G2L["10f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10f"]["Visible"] = false;
G2L["10f"]["Size"] = UDim2.new(0, 24, 0, 25);
G2L["10f"]["Name"] = [[_Plus]];
G2L["10f"]["Text"] = [[+]];
G2L["10f"]["Position"] = UDim2.new(0, 389, 0, 31);

-- StarterGui.DeltaKeyboard.Main.Background._Plus.UIStroke
G2L["110"] = Instance.new("UIStroke", G2L["10f"]);
G2L["110"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["110"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._Plus.UICorner
G2L["111"] = Instance.new("UICorner", G2L["10f"]);
G2L["111"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._RightCurly
G2L["112"] = Instance.new("TextButton", G2L["4"]);
G2L["112"]["TextWrapped"] = true;
G2L["112"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["112"]["TextSize"] = 21;
G2L["112"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["112"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["112"]["Visible"] = false;
G2L["112"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["112"]["Name"] = [[_RightCurly]];
G2L["112"]["Text"] = [[}]];
G2L["112"]["Position"] = UDim2.new(0, 410, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background._RightCurly.UIStroke
G2L["113"] = Instance.new("UIStroke", G2L["112"]);
G2L["113"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["113"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._RightCurly.UICorner
G2L["114"] = Instance.new("UICorner", G2L["112"]);
G2L["114"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._LeftCurly
G2L["115"] = Instance.new("TextButton", G2L["4"]);
G2L["115"]["TextWrapped"] = true;
G2L["115"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["115"]["TextSize"] = 21;
G2L["115"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["115"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["115"]["Visible"] = false;
G2L["115"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["115"]["Name"] = [[_LeftCurly]];
G2L["115"]["Text"] = [[{]];
G2L["115"]["Position"] = UDim2.new(0, 378, 0, 63);

-- StarterGui.DeltaKeyboard.Main.Background._LeftCurly.UIStroke
G2L["116"] = Instance.new("UIStroke", G2L["115"]);
G2L["116"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["116"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._LeftCurly.UICorner
G2L["117"] = Instance.new("UICorner", G2L["115"]);
G2L["117"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._QuotedDouble
G2L["118"] = Instance.new("TextButton", G2L["4"]);
G2L["118"]["TextWrapped"] = true;
G2L["118"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["118"]["TextSize"] = 21;
G2L["118"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["118"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["118"]["Visible"] = false;
G2L["118"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["118"]["Name"] = [[_QuotedDouble]];
G2L["118"]["Text"] = [["]];
G2L["118"]["Position"] = UDim2.new(0, 386, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background._QuotedDouble.UIStroke
G2L["119"] = Instance.new("UIStroke", G2L["118"]);
G2L["119"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["119"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._QuotedDouble.UICorner
G2L["11a"] = Instance.new("UICorner", G2L["118"]);
G2L["11a"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._Colon
G2L["11b"] = Instance.new("TextButton", G2L["4"]);
G2L["11b"]["TextWrapped"] = true;
G2L["11b"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["11b"]["TextSize"] = 21;
G2L["11b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11b"]["Visible"] = false;
G2L["11b"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["11b"]["Name"] = [[_Colon]];
G2L["11b"]["Text"] = [[:]];
G2L["11b"]["Position"] = UDim2.new(0, 354, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background._Colon.UIStroke
G2L["11c"] = Instance.new("UIStroke", G2L["11b"]);
G2L["11c"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["11c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._Colon.UICorner
G2L["11d"] = Instance.new("UICorner", G2L["11b"]);
G2L["11d"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._Question
G2L["11e"] = Instance.new("TextButton", G2L["4"]);
G2L["11e"]["TextWrapped"] = true;
G2L["11e"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["11e"]["TextSize"] = 21;
G2L["11e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11e"]["Visible"] = false;
G2L["11e"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["11e"]["Name"] = [[_Question]];
G2L["11e"]["Text"] = [[?]];
G2L["11e"]["Position"] = UDim2.new(0, 372, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background._Question.UIStroke
G2L["11f"] = Instance.new("UIStroke", G2L["11e"]);
G2L["11f"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["11f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._Question.UICorner
G2L["120"] = Instance.new("UICorner", G2L["11e"]);
G2L["120"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._GreaterThan
G2L["121"] = Instance.new("TextButton", G2L["4"]);
G2L["121"]["TextWrapped"] = true;
G2L["121"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["121"]["TextSize"] = 21;
G2L["121"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["121"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["121"]["Visible"] = false;
G2L["121"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["121"]["Name"] = [[_GreaterThan]];
G2L["121"]["Text"] = [[>]];
G2L["121"]["Position"] = UDim2.new(0, 338, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background._GreaterThan.UIStroke
G2L["122"] = Instance.new("UIStroke", G2L["121"]);
G2L["122"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["122"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._GreaterThan.UICorner
G2L["123"] = Instance.new("UICorner", G2L["121"]);
G2L["123"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background._LessThan
G2L["124"] = Instance.new("TextButton", G2L["4"]);
G2L["124"]["TextWrapped"] = true;
G2L["124"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["124"]["TextSize"] = 21;
G2L["124"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["124"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["124"]["Visible"] = false;
G2L["124"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["124"]["Name"] = [[_LessThan]];
G2L["124"]["Text"] = [[<]];
G2L["124"]["Position"] = UDim2.new(0, 305, 0, 127);

-- StarterGui.DeltaKeyboard.Main.Background._LessThan.UIStroke
G2L["125"] = Instance.new("UIStroke", G2L["124"]);
G2L["125"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["125"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background._LessThan.UICorner
G2L["126"] = Instance.new("UICorner", G2L["124"]);
G2L["126"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.UICorner
G2L["127"] = Instance.new("UICorner", G2L["4"]);
G2L["127"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.Background.D
G2L["128"] = Instance.new("TextButton", G2L["4"]);
G2L["128"]["TextWrapped"] = true;
G2L["128"]["BackgroundColor3"] = Color3.fromRGB(8, 8, 8);
G2L["128"]["TextSize"] = 21;
G2L["128"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["128"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["128"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["128"]["Name"] = [[D]];
G2L["128"]["Text"] = [[D]];
G2L["128"]["Position"] = UDim2.new(0, 130, 0, 95);

-- StarterGui.DeltaKeyboard.Main.Background.D.UIStroke
G2L["129"] = Instance.new("UIStroke", G2L["128"]);
G2L["129"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["129"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.Background.D.UICorner
G2L["12a"] = Instance.new("UICorner", G2L["128"]);
G2L["12a"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.UICorner
G2L["12b"] = Instance.new("UICorner", G2L["2"]);
G2L["12b"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.ToggleRGB
G2L["12c"] = Instance.new("TextButton", G2L["2"]);
G2L["12c"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 0);
G2L["12c"]["TextSize"] = 14;
G2L["12c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12c"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12c"]["Size"] = UDim2.new(0, 14, 0, 14);
G2L["12c"]["Name"] = [[ToggleRGB]];
G2L["12c"]["Text"] = [[]];
G2L["12c"]["Position"] = UDim2.new(0.9649999737739563, 0, 0.9300000071525574, 0);

-- StarterGui.DeltaKeyboard.Main.ToggleRGB.UICorner
G2L["12d"] = Instance.new("UICorner", G2L["12c"]);
G2L["12d"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.DeltaKeyboard.Main.ToggleRGB.UIStroke
G2L["12e"] = Instance.new("UIStroke", G2L["12c"]);
G2L["12e"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["12e"]["Thickness"] = 0.8999999761581421;
G2L["12e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.tesy
G2L["12f"] = Instance.new("TextButton", G2L["2"]);
G2L["12f"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 0);
G2L["12f"]["TextSize"] = 14;
G2L["12f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["12f"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12f"]["Visible"] = false;
G2L["12f"]["Size"] = UDim2.new(0, 58, 0, 14);
G2L["12f"]["Name"] = [[tesy]];
G2L["12f"]["Text"] = [[]];
G2L["12f"]["Position"] = UDim2.new(0.8352929353713989, 0, 0.9299998879432678, 0);

-- StarterGui.DeltaKeyboard.Main.tesy.UICorner
G2L["130"] = Instance.new("UICorner", G2L["12f"]);
G2L["130"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.DeltaKeyboard.Main.tesy.UIStroke
G2L["131"] = Instance.new("UIStroke", G2L["12f"]);
G2L["131"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["131"]["Thickness"] = 0.8999999761581421;
G2L["131"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.ToggleShift
G2L["132"] = Instance.new("TextButton", G2L["2"]);
G2L["132"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 0);
G2L["132"]["TextSize"] = 14;
G2L["132"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["132"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["132"]["Size"] = UDim2.new(0, 78, 0, 14);
G2L["132"]["Name"] = [[ToggleShift]];
G2L["132"]["Text"] = [[Enable Shift]];
G2L["132"]["Position"] = UDim2.new(0.7934519052505493, 0, 0.9299998879432678, 0);

-- StarterGui.DeltaKeyboard.Main.ToggleShift.UICorner
G2L["133"] = Instance.new("UICorner", G2L["132"]);
G2L["133"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.DeltaKeyboard.Main.ToggleShift.UIStroke
G2L["134"] = Instance.new("UIStroke", G2L["132"]);
G2L["134"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["134"]["Thickness"] = 0.8999999761581421;
G2L["134"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.Main.ToggleShift.UIStroke
G2L["135"] = Instance.new("UIStroke", G2L["132"]);
G2L["135"]["Thickness"] = 0.8999999761581421;

-- StarterGui.DeltaKeyboard.Main.Drag
G2L["136"] = Instance.new("LocalScript", G2L["2"]);
G2L["136"]["Name"] = [[Drag]];

-- StarterGui.DeltaKeyboard.Main.UICorner
G2L["137"] = Instance.new("UICorner", G2L["2"]);
G2L["137"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.DeltaKeyboard.Main.ButtonHandler
G2L["138"] = Instance.new("LocalScript", G2L["2"]);
G2L["138"]["Name"] = [[ButtonHandler]];

-- StarterGui.DeltaKeyboard.Main.Close
G2L["139"] = Instance.new("TextButton", G2L["2"]);
G2L["139"]["BorderSizePixel"] = 0;
G2L["139"]["AutoButtonColor"] = false;
G2L["139"]["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
G2L["139"]["TextSize"] = 16;
G2L["139"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["139"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["139"]["Size"] = UDim2.new(0, 34, 0, 22);
G2L["139"]["Name"] = [[Close]];
G2L["139"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["139"]["Text"] = [[X]];
G2L["139"]["Position"] = UDim2.new(0, 437, 0, 2);

-- StarterGui.DeltaKeyboard.Main.Minimize
G2L["13a"] = Instance.new("TextButton", G2L["2"]);
G2L["13a"]["BorderSizePixel"] = 0;
G2L["13a"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["13a"]["TextSize"] = 21;
G2L["13a"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13a"]["Size"] = UDim2.new(0, 34, 0, 22);
G2L["13a"]["Name"] = [[Minimize]];
G2L["13a"]["Text"] = [[-]];
G2L["13a"]["Position"] = UDim2.new(0, 367, 0, 2);
G2L["13a"]["BackgroundTransparency"] = 1;

-- StarterGui.DeltaKeyboard.Main.Window
G2L["13b"] = Instance.new("TextButton", G2L["2"]);
G2L["13b"]["BorderSizePixel"] = 0;
G2L["13b"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["13b"]["TextSize"] = 21;
G2L["13b"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13b"]["Size"] = UDim2.new(0, 34, 0, 22);
G2L["13b"]["Name"] = [[Window]];
G2L["13b"]["Text"] = [[☐]];
G2L["13b"]["Position"] = UDim2.new(0, 401, 0, 2);
G2L["13b"]["BackgroundTransparency"] = 1;

-- StarterGui.DeltaKeyboard.Main.Title
G2L["13c"] = Instance.new("TextLabel", G2L["2"]);
G2L["13c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["13c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["13c"]["TextSize"] = 14;
G2L["13c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13c"]["Size"] = UDim2.new(0, 121, 0, 22);
G2L["13c"]["Active"] = true;
G2L["13c"]["Text"] = [[xgo三角洲键盘]];
G2L["13c"]["Name"] = [[Title]];
G2L["13c"]["BackgroundTransparency"] = 1;
G2L["13c"]["Position"] = UDim2.new(0, 9, 0, 2);

-- StarterGui.DeltaKeyboard.Main.Settings
G2L["13d"] = Instance.new("TextButton", G2L["2"]);
G2L["13d"]["BorderSizePixel"] = 0;
G2L["13d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13d"]["FontFace"] = Font.new([[rbxasset://fonts/families/LegacyArial.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["13d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13d"]["Selectable"] = false;
G2L["13d"]["Size"] = UDim2.new(0, 17, 0, 17);
G2L["13d"]["Name"] = [[Settings]];
G2L["13d"]["Text"] = [[    xgo +]];
G2L["13d"]["Position"] = UDim2.new(0.0041841003112494946, 0, 0.9237288236618042, 0);
G2L["13d"]["BackgroundTransparency"] = 1;

-- StarterGui.DeltaKeyboard.IsSelectingKey
G2L["13e"] = Instance.new("BoolValue", G2L["1"]);
G2L["13e"]["Name"] = [[IsSelectingKey]];

-- StarterGui.DeltaKeyboard.KEY
G2L["13f"] = Instance.new("TextButton", G2L["1"]);
G2L["13f"]["TextWrapped"] = true;
G2L["13f"]["TextScaled"] = true;
G2L["13f"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["13f"]["FontFace"] = Font.new([[rbxasset://fonts/families/TitilliumWeb.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["13f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13f"]["Selectable"] = false;
G2L["13f"]["Visible"] = false;
G2L["13f"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["13f"]["Name"] = [[KEY]];
G2L["13f"]["Text"] = [[KEY]];
G2L["13f"]["Position"] = UDim2.new(0.47962817549705505, 0, 0.46487605571746826, 0);

-- StarterGui.DeltaKeyboard.KEY.UICorner
G2L["140"] = Instance.new("UICorner", G2L["13f"]);


-- StarterGui.DeltaKeyboard.KEY.UIStroke
G2L["141"] = Instance.new("UIStroke", G2L["13f"]);
G2L["141"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["141"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.KEY.Close
G2L["142"] = Instance.new("TextButton", G2L["13f"]);
G2L["142"]["TextWrapped"] = true;
G2L["142"]["TextScaled"] = true;
G2L["142"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["142"]["TextSize"] = 14;
G2L["142"]["FontFace"] = Font.new([[rbxasset://fonts/families/FredokaOne.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["142"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["142"]["Size"] = UDim2.new(0, 11, 0, 11);
G2L["142"]["Name"] = [[Close]];
G2L["142"]["Text"] = [[X]];
G2L["142"]["Position"] = UDim2.new(1, 0, -0.125, 0);

-- StarterGui.DeltaKeyboard.KEY.Close.UICorner
G2L["143"] = Instance.new("UICorner", G2L["142"]);


-- StarterGui.DeltaKeyboard.CreateKey
G2L["144"] = Instance.new("Frame", G2L["1"]);
G2L["144"]["Active"] = true;
G2L["144"]["BackgroundColor3"] = Color3.fromRGB(32, 32, 32);
G2L["144"]["Size"] = UDim2.new(0, 284, 0, 292);
G2L["144"]["Position"] = UDim2.new(0.3589794337749481, 0, 0.24793387949466705, 0);
G2L["144"]["Visible"] = false;
G2L["144"]["Name"] = [[CreateKey]];

-- StarterGui.DeltaKeyboard.CreateKey.UICorner
G2L["145"] = Instance.new("UICorner", G2L["144"]);


-- StarterGui.DeltaKeyboard.CreateKey.UIStroke
G2L["146"] = Instance.new("UIStroke", G2L["144"]);
G2L["146"]["Color"] = Color3.fromRGB(158, 0, 255);
G2L["146"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.CreateKey.Title
G2L["147"] = Instance.new("TextLabel", G2L["144"]);
G2L["147"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["147"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["147"]["Selectable"] = true;
G2L["147"]["TextSize"] = 18;
G2L["147"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["147"]["Size"] = UDim2.new(0, 285, 0, 24);
G2L["147"]["Active"] = true;
G2L["147"]["Text"] = [[Delta Keyboard - Settings Floating Key]];
G2L["147"]["Name"] = [[Title]];
G2L["147"]["BackgroundTransparency"] = 1;
G2L["147"]["Position"] = UDim2.new(-0.0035211266949772835, 0, 0.02054794505238533, 0);

-- StarterGui.DeltaKeyboard.CreateKey.Create
G2L["148"] = Instance.new("TextButton", G2L["144"]);
G2L["148"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["148"]["TextSize"] = 31;
G2L["148"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["148"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["148"]["Size"] = UDim2.new(0, 166, 0, 46);
G2L["148"]["Name"] = [[Create]];
G2L["148"]["Text"] = [[Create]];
G2L["148"]["Position"] = UDim2.new(0.2042253464460373, 0, 0.6095890402793884, 0);

-- StarterGui.DeltaKeyboard.CreateKey.Create.UICorner
G2L["149"] = Instance.new("UICorner", G2L["148"]);


-- StarterGui.DeltaKeyboard.CreateKey.Create.UIStroke
G2L["14a"] = Instance.new("UIStroke", G2L["148"]);
G2L["14a"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["14a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.CreateKey.Title2
G2L["14b"] = Instance.new("TextLabel", G2L["144"]);
G2L["14b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14b"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14b"]["Selectable"] = true;
G2L["14b"]["TextSize"] = 20;
G2L["14b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14b"]["Size"] = UDim2.new(0, 285, 0, 24);
G2L["14b"]["Active"] = true;
G2L["14b"]["Text"] = [[Enter your keybind here.]];
G2L["14b"]["Name"] = [[Title2]];
G2L["14b"]["BackgroundTransparency"] = 1;
G2L["14b"]["Position"] = UDim2.new(-0.003521125763654709, 0, 0.19178083539009094, 0);

-- StarterGui.DeltaKeyboard.CreateKey.TextBox
G2L["14c"] = Instance.new("TextBox", G2L["144"]);
G2L["14c"]["TextSize"] = 14;
G2L["14c"]["TextWrapped"] = true;
G2L["14c"]["TextScaled"] = true;
G2L["14c"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["14c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14c"]["Size"] = UDim2.new(0, 167, 0, 76);
G2L["14c"]["Text"] = [[]];
G2L["14c"]["Position"] = UDim2.new(0.2042253464460373, 0, 0.29109588265419006, 0);

-- StarterGui.DeltaKeyboard.CreateKey.TextBox.UIStroke
G2L["14d"] = Instance.new("UIStroke", G2L["14c"]);
G2L["14d"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["14d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.CreateKey.TextBox.UICorner
G2L["14e"] = Instance.new("UICorner", G2L["14c"]);


-- StarterGui.DeltaKeyboard.CreateKey.Close
G2L["14f"] = Instance.new("TextButton", G2L["144"]);
G2L["14f"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["14f"]["TextSize"] = 20;
G2L["14f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["14f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14f"]["Size"] = UDim2.new(0, 166, 0, 22);
G2L["14f"]["Name"] = [[Close]];
G2L["14f"]["Text"] = [[Close]];
G2L["14f"]["Position"] = UDim2.new(0.2042253464460373, 0, 0.8835616707801819, 0);

-- StarterGui.DeltaKeyboard.CreateKey.Close.UICorner
G2L["150"] = Instance.new("UICorner", G2L["14f"]);


-- StarterGui.DeltaKeyboard.CreateKey.Close.UIStroke
G2L["151"] = Instance.new("UIStroke", G2L["14f"]);
G2L["151"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["151"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.CreateKey.LocalScript
G2L["152"] = Instance.new("LocalScript", G2L["144"]);


-- StarterGui.DeltaKeyboard.Keys
G2L["153"] = Instance.new("Folder", G2L["1"]);
G2L["153"]["Name"] = [[Keys]];

-- StarterGui.DeltaKeyboard.ToggleShift
G2L["154"] = Instance.new("BoolValue", G2L["1"]);
G2L["154"]["Value"] = true;
G2L["154"]["Name"] = [[ToggleShift]];

-- StarterGui.DeltaKeyboard.Shifting
G2L["155"] = Instance.new("BoolValue", G2L["1"]);
G2L["155"]["Name"] = [[Shifting]];

-- StarterGui.DeltaKeyboard.FloatingIcon
G2L["156"] = Instance.new("ImageButton", G2L["1"]);
G2L["156"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["156"]["Image"] = [[rbxassetid://18923878915]];
G2L["156"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["156"]["Name"] = [[FloatingIcon]];
G2L["156"]["Visible"] = false;
G2L["156"]["Position"] = UDim2.new(0.015649452805519104, 0, 0.03064066171646118, 0);

-- StarterGui.DeltaKeyboard.FloatingIcon.UICorner
G2L["157"] = Instance.new("UICorner", G2L["156"]);
G2L["157"]["CornerRadius"] = UDim.new(0, 12);

-- StarterGui.DeltaKeyboard.FloatingIcon.UIStroke
G2L["158"] = Instance.new("UIStroke", G2L["156"]);
G2L["158"]["Color"] = Color3.fromRGB(158, 0, 255);
G2L["158"]["Thickness"] = 1.2999999523162842;
G2L["158"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.DeltaKeyboard.FloatingIcon.LocalScript
G2L["159"] = Instance.new("LocalScript", G2L["156"]);


-- StarterGui.DeltaKeyboard.Main.Background.Handler
local function C_56()
	local script = G2L["56"];

	local btns = script.Parent
	local IsSelecting = script.Parent.Parent.Parent.IsSelectingKey
	local ToggleShift = script.Parent.Parent.Parent.ToggleShift
	local function CreateFloatingKey(keybind, text)

		local key = script.Parent.Parent.Parent.KEY:Clone()
		if text == "" then
			text = "Space"
			keybind = "Space"
		end
		key.Parent = script.Parent.Parent.Parent.Keys
		key.Visible = true
		key.Draggable = true
		key.Name = keybind
		key.Text = text
		key.MouseButton1Up:Connect(function()
			keyrelease(Enum.KeyCode[keybind])
		end)
		key.MouseButton1Down:Connect(function()
			keypress(Enum.KeyCode[keybind])		
		end)
		key.Close.MouseButton1Up:Connect(function()
			key:Destroy()
		end)
	end

	for _, keys in pairs(btns:GetChildren()) do
		if keys:IsA("TextButton") then
			if string.find(keys.Name, "-") then
				local key = string.sub(keys.Name, 2)

				keys.MouseButton1Down:Connect(function()

					if IsSelecting.Value == true then
						CreateFloatingKey(key, keys.Text)
						IsSelecting.Value = false
					else
						keypress(Enum.KeyCode[key])
					end
				end)
				keys.MouseButton1Up:Connect(function()

					if IsSelecting.Value == true then
						CreateFloatingKey(key, keys.Text)
						IsSelecting.Value = false
					else
						keyrelease(Enum.KeyCode[key])
					end
				end)
			elseif string.find(keys.Name, "_") then
				local key = string.sub(keys.Name, 2)

				keys.MouseButton1Down:Connect(function()

					if IsSelecting.Value == true then
						CreateFloatingKey(key, keys.Text)
						IsSelecting.Value = false
					else
						keypress(Enum.KeyCode[key])
					end
				end)
				keys.MouseButton1Up:Connect(function()

					if IsSelecting.Value == true then
						CreateFloatingKey(key, keys.Text)
						IsSelecting.Value = false
					else
						keyrelease(Enum.KeyCode[key])
					end
				end)

			elseif keys.Name == "RightShift" then

				keys.MouseButton1Up:Connect(function()
					if ToggleShift.Value == false then
						if script.Parent.Parent.Parent.Shifting.Value then
							script.Parent.Parent.Parent.Shifting.Value = false
							for i,v in pairs(btns:GetChildren()) do
								if v:IsA("TextButton") then
									local a = v.Name
									if string.find(a, "_") then
										v.Visible = false
									elseif string.find(a, "-") then
										v.Visible = true
									end
								end
							end
						elseif not script.Parent.Parent.Parent.Shifting.Value then
							script.Parent.Parent.Parent.Shifting.Value = true
							for i,v in pairs(btns:GetChildren()) do
								if v:IsA("TextButton") then
									local a = v.Name
									if string.find(a, "_") then
										v.Visible = true
									elseif string.find(a, "-") then
										v.Visible = false
									end
								end
							end
						end
					elseif ToggleShift.Value == true then
						if IsSelecting.Value == false then
							keypress(Enum.KeyCode[keys.Name])
						elseif IsSelecting.Value == true then
							IsSelecting.Value = false
							CreateFloatingKey(keys.Name, keys.Name)
						end
					end
				end)
			elseif keys.Name == "LeftShift" then
				keys.MouseButton1Up:Connect(function()
					if ToggleShift.Value == false then
						if script.Parent.Parent.Parent.Shifting.Value then
							script.Parent.Parent.Parent.Shifting.Value = false
							for i,v in pairs(btns:GetChildren()) do
								if v:IsA("TextButton") then
									local a = v.Name
									if string.find(a, "_") then
										v.Visible = false
									elseif string.find(a, "-") then
										v.Visible = true
									end
								end
							end
						elseif not script.Parent.Parent.Parent.Shifting.Value then
							script.Parent.Parent.Parent.Shifting.Value = true
							for i,v in pairs(btns:GetChildren()) do
								if v:IsA("TextButton") then
									local a = v.Name
									if string.find(a, "_") then
										v.Visible = true
									elseif string.find(a, "-") then
										v.Visible = false
									end
								end
							end
						end
					elseif ToggleShift.Value == true then
						if IsSelecting.Value == false then
							keypress(Enum.KeyCode[keys.Name])
						elseif IsSelecting.Value == true then
							IsSelecting.Value = false
							CreateFloatingKey(keys.Name, keys.Name)
						end
					end
				end)
				keys.MouseButton1Down:Connect(function()
					if ToggleShift.Value == true then
						keypress(Enum.KeyCode[keys.Name])
					end
				end)

			else
				keys.MouseButton1Down:Connect(function()
					if IsSelecting.Value == true then
						CreateFloatingKey(keys.Text, keys.Text)
						IsSelecting.Value = false
					else
						keypress(Enum.KeyCode[keys.Name])
					end

				end)
				keys.MouseButton1Up:Connect(function()
					if IsSelecting.Value == true then
						CreateFloatingKey(keys.Text, keys.Text)
						IsSelecting.Value = false
					else
						keyrelease(Enum.KeyCode[keys.Name])
					end
				end)
			end		
		end
	end
end;
task.spawn(C_56);
-- StarterGui.DeltaKeyboard.Main.Background.RGBHandler
local function C_e7()
	local script = G2L["e7"];
	pcall(function()
		local TweenService = game:GetService("TweenService")
		local bool = true

		script.Parent.Parent.ToggleRGB.MouseButton1Up:Connect(function()
			if bool then
				bool = false
				script.Parent.Parent.Parent.Main.UIStroke.Color =  Color3.fromRGB(255, 255, 255)
				script.Parent.Parent.ToggleRGB.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			elseif not bool then
				bool = true
				script.Parent.Parent.Parent.Main.UIStroke.Color =  Color3.fromRGB(157, 0, 255)
				script.Parent.Parent.ToggleRGB.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
				for i, v in pairs(script.Parent:GetChildren()) do
					if v:IsA("TextButton") then
						task.spawn(function()
							local x = 0
							while true do
								v.UIStroke.Color = Color3.fromHSV(x,1,1) 
								x = x + 1/255 
								if x >= 1 then
									x = 0
								end
								if not bool then
									v.UIStroke.Color = Color3.new(1,1,1)
									break
								end
								wait() 
							end
						end)
					end
				end
			end
		end)

		for i, v in pairs(script.Parent:GetChildren()) do
			if v:IsA("TextButton") then
				task.spawn(function()
					local x = 0
					while true do
						v.UIStroke.Color = Color3.fromHSV(x,1,1) 
						x = x + 1/255 
						if x >= 1 then
							x = 0
						end
						if not bool then
							v.UIStroke.Color = Color3.new(1,1,1)
							break
						end
						wait() 
					end
				end)
			end
		end
	end)
end;
task.spawn(C_e7);
-- StarterGui.DeltaKeyboard.Main.Drag
local function C_136()
	local script = G2L["136"];
	local function dragify(Frame)
		dragToggle = nil
		dragSpeed = .25 -- You can edit this.
		dragInput = nil
		dragStart = nil
		dragPos = nil

		function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
		end

		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if (input.UserInputState == Enum.UserInputState.End) then
						dragToggle = false
					end
				end)
			end
		end)

		Frame.InputChanged:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				dragInput = input
			end
		end)

		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if (input == dragInput and dragToggle) then
				updateInput(input)
			end
		end)
	end
	task.spawn(function()
		dragify(script.Parent.Parent.FloatingIcon)
	end)
	dragify(script.Parent)

end;
task.spawn(C_136);
-- StarterGui.DeltaKeyboard.Main.ButtonHandler
local function C_138()
	local script = G2L["138"];
	local buttons = script.Parent
	local ts = game.TweenService
	local cooldown = false

	buttons.Close.MouseButton1Up:Connect(function()
		script.Parent.Parent:Destroy()
	end)
	buttons.Close.MouseEnter:Connect(function()
		buttons.Close.BackgroundColor3 = Color3.fromRGB(220, 0, 0)
	end)
	buttons.Close.MouseLeave:Connect(function()
		buttons.Close.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	end)
	buttons.Minimize.MouseButton1Up:Connect(function()

		script.Parent.Visible = false
		script.Parent.Parent.FloatingIcon.Visible = true
	end)
	buttons.Window.MouseButton1Up:Connect(function()
		if not cooldown then
			if script.Parent.Background.Visible == true then
				script.Parent.ToggleRGB.Visible = false
				script.Parent.Settings.Visible = false
				script.Parent.Background.Visible = false
				script.Parent.ToggleShift.Visible = false
				local ti = TweenInfo.new(.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
				local tw = ts:Create(script.Parent, ti, {Size = UDim2.new(0, 478,0, 29)})
				tw:Play()
				cooldown = true
				tw.Completed:Wait()
				cooldown = false
			elseif script.Parent.Background.Visible ==false then

				local ti = TweenInfo.new(.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
				local tw = ts:Create(script.Parent, ti, {Size = UDim2.new(0, 478,0, 236)})
				tw:Play()
				cooldown = true
				tw.Completed:Wait()
				script.Parent.ToggleRGB.Visible = true
				script.Parent.Settings.Visible = true
				script.Parent.Background.Visible = true
				script.Parent.ToggleShift.Visible = true
				cooldown = false
			end
		end
	end)

	buttons.Settings.MouseButton1Up:Connect(function()
		script.Parent.Parent.IsSelectingKey.Value = true
	end)

	local IsSelecting =script.Parent.Parent.IsSelectingKey
	IsSelecting:GetPropertyChangedSignal("Value"):Connect(function()
		if IsSelecting.Value == true then
			script.Parent.Title.Text = "Delta Mobile - Keyboard (Selecting Key)"
		elseif IsSelecting.Value == false then
			script.Parent.Title.Text = "xgo汉化键盘"
		end
	end)

	script.Parent.ToggleShift.MouseButton1Up:Connect(function()
		if script.Parent.Parent.ToggleShift.Value == true then
			script.Parent.Parent.ToggleShift.Value = false
			script.Parent.ToggleShift.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		elseif script.Parent.Parent.ToggleShift.Value == false then
			script.Parent.Parent.ToggleShift.Value = true
			script.Parent.ToggleShift.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
		end
	end)
end;
task.spawn(C_138);
-- StarterGui.DeltaKeyboard.CreateKey.LocalScript
local function C_152()
	local script = G2L["152"];
	local close = script.Parent.Close
	local create = script.Parent.Create
	local textbox = script.Parent.TextBox

	script.Parent.Draggable = true
	close.MouseButton1Up:Connect(function()
		script.Parent.Visible = false
	end)
	create.MouseButton1Up:Connect(function()
		if textbox.Text ~= "" then
			local key = script.Parent.Parent.KEY:Clone()
			key.Parent = script.Parent.Parent.Keys
			key.Visible = true
			key.Draggable = true
			key.Name = textbox.Text
			key.MouseButton1Up:Connect(function()
				keyrelease(Enum.KeyCode[textbox.Text])
			end)
			key.MouseButton1Down:Connect(function()
				keypress(Enum.KeyCode[textbox.Text])
			end)
			key.Close.MouseButton1Up:Connect(function()
				key:Destroy()
			end)
		end
	end)
end;
task.spawn(C_152);
-- StarterGui.DeltaKeyboard.FloatingIcon.LocalScript
local function C_159()
	local script = G2L["159"];
	script.Parent.MouseButton1Up:Connect(function()
		script.Parent.Visible=false
		script.Parent.Parent.Main.Visible = true
	end)
end;
task.spawn(C_159);

return G2L["1"], require;