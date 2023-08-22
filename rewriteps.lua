_G.Setting = {
    UI = {
        -- // [Setting UI Main] \\ --

        ["Logo"] = 14299284116, -- Use You Logo
        ["Rainbow"] = false, -- Coming Soon

        -- // [Size UI] \\ --

        ["Size UI"] = UDim2.fromOffset(500, 355), -- or UDim2.fromOffset(500, 545) 
        
        -- // [Color UI] \\ --

        ["Main"] = Color3.fromRGB(255,0,0),
        ["Background"] = Color3.fromRGB(40, 40, 40),
        ["OuterBorder"] = Color3.fromRGB(15, 15, 15),
        ["InnerBorder"] = Color3.fromRGB(73, 63, 73),
        ["TopGradient"] = Color3.fromRGB(255,0,0),
        ["BottomGradient"] = Color3.fromRGB(0,0,0),
        ["SectionBackground"] = Color3.fromRGB(35, 34, 34),
        ["Section"] = Color3.fromRGB(176, 175, 176),
        ["OtherElementText"] = Color3.fromRGB(129, 127, 129),
        ["ElementText"] = Color3.fromRGB(185, 185, 185),
        ["ElementBorder"] = Color3.fromRGB(20, 20, 20),
        ["SelectedOption"] = Color3.fromRGB(55, 55, 55),
        ["UnselectedOption"] = Color3.fromRGB(40, 40, 40),
        ["HoveredOptionTop"] = Color3.fromRGB(65, 65, 65),
        ["UnhoveredOptionTop"] = Color3.fromRGB(50, 50, 50),
        ["HoveredOptionBottom"] = Color3.fromRGB(45, 45, 45),
        ["UnhoveredOptionBottom"] = Color3.fromRGB(35, 35, 35),
        ["TabText"] = Color3.fromRGB(185, 185, 185)
    }
}

local Library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/KvdzUwU/TrashHub/main/PC/UI.lua"))()
local Subs = Library.subs 
local IsOpen = Subs.Wait

local placeId = game.PlaceId

if placeId == 5956785391 then
    Menu = true
elseif placeId == 13883279773 or 6152116144 then
    Map1 = true
elseif placeId == 11468159863 or 13881804983 or 13883059853 then
    Map2 = true
elseif placeId == 11468075017 then
    Dungeon = true
elseif placeId == 11468034852 then
    Mugen = true
else
	game.Players.LocalPlayer:Kick("Wrong Map")
end

repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer
wait(5)

local insert = table.insert
local G = _G or getgenv()
local WS = game:GetService("Workspace")
local RS = game:GetService("ReplicatedStorage")
local RunS = game:GetService("RunService")
local P = game:GetService("Players")
local LP = P.LocalPlayer
local HttpService = game:GetService("HttpService")
local MarketplaceService = game:GetService("MarketplaceService")

_G.Config = {
    ["ApplySlot"] = 1,
    ["Auto Daily Spins"] = true,
    ["Arrow KA"] = false,
    ["Bring Mob"] = false,
    ["Inf Stun"] = false,
    ["Claw KA"] = false,
    ["Farm"] = {
        ["Enable"] = false,
        ["Mode"] = "Above",
        ["Tween Speed"] = 300,
        ["Distance"] = 5,
    },
    ["Kill Aura"] = {
        ["Enable"] = false,
        ["Weapon"] = "Sword",
        ["Hit"] = 14,
        ["Cooldown"] = 1.5,
    },
    ["Auto Equip"] = {
       ["Enable"] = false,
       ["Weapon"] = ""
    },
    ["Auto Skill"] = {["Enable"] = false,
       ["Z"] = false, 
       ["X"] = false,
       ["C"] = false, 
       ["V"] = false, 
       ["B"] = false, 
       ["N"] = false
    },
    ["Webhook"] = {
        ["Url"] = "",
        ["Loot"] = false,
        ["Status"] = false,
        ["Dungeon"] = false
    },
    ["Local Player"] = {
        ["Inf Stamina & Breathing"] = false,
        ["No Drown"] = false,
        ["No Cooldown Skill"] = false,
        ["No Sun Damage"] = true
    },
    ["Modes"] = {
        ["God Speed"] = false,
        ["Heart Alaze"] = false,
        ["War Drums"] = false,
        ["Furiosity"] = false,
        ["Breathing Heal"] = false,
        ["Kamado Heal"] = false
    },
    ["God Modes"] = {
        ["Scythe"] = false,
        ["Ice"] = false,
        ["Shockwave"] = false,
        ["Swamp"] = false,
        ["Dream"] = false,
        ["Blood Burst"] = false,
        ["Sound"] = false,
        ["Water"] = false,
        ["Wind"] = false,
        ["Insect"] = false,
        ["Flame"] = false,
        ["Beast"] = false,
    },
    ["Misc"] = {
        ["Remove Damage Text"] = false,
        ["Remove Effect"] = false,
        ["No Stun"] = false,
        ["FPS Boost"] = false,
        ["White Screen"] = false
    },
    ["Select Gourd"] = "Big Gourd"
}

local foldername = "Jerry Hub"
local filename = MarketplaceService:GetProductInfo(placeId).Name.."-"..LP.Name..".json"
local json = HttpService:JSONEncode(_G.Config)
local function SaveSettings(m, n)
    if m ~= nil then
        m = n
    end
    if(writefile) then
        if isfolder(foldername) then
            if isfile(foldername.."\\"..filename) then
                writefile(foldername.."\\"..filename, json)
            else
                writefile(foldername.."\\"..filename, json)
            end
        else
            makefolder(foldername)
            writefile(foldername.."\\"..filename, json)
        end
    end
end

warn("Setting Saved")

local function LoadSetting()
    if isfile(foldername.."\\"..filename) then
        _G.Config = HttpService:JSONDecode(readfile(foldername.."\\"..filename))
    end
end

warn("Loaded Setting Saved")
LoadSetting()
local function AntiAFK()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
    game.NetworkClient.ChildRemoved:Connect(function()
        game:GetService("TeleportService"):Teleport(5956785391)
    end)
    game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
        if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
            game:GetService("TeleportService"):Teleport(5956785391)

        end
    end)
end
warn("Anti AFK - ON")
warn("Auto Rejoin when got kicked")
AntiAFK()
local function PostWebhook(data, url)
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {["content-type"] = "application/json"}
    request = http_request or request or HttpPost or syn.request
    local Require = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(Require)
end

local Character = LP.Character or LP.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Humanoid = Character:WaitForChild("Humanoid")
local Combo = LP:WaitForChild("combotangasd123").Value
local Debree = WS:WaitForChild("Debree")
local MobFolder = WS:WaitForChild("Mobs")
local BossFolder = MobFolder:WaitForChild("Bosses")

local REMOTE = RS:WaitForChild("Remotes")
local To_Server = REMOTE:WaitForChild("To_Server")
local Handle_Initiate_S_ = To_Server:WaitForChild("Handle_Initiate_S_")
local Handle_Initiate_S = To_Server:WaitForChild("Handle_Initiate_S")
local Apply_Slot = REMOTE.WaitForChild("Apply_Slot")
local Bindable = Instance.new("BindableEvent")

local Entities = {}
local Bosses = {}
local Mobs = {}

if Menu then
    Apply_Slot:InvokeServer(_G.Config["ApplySlot"])
    wait(5)
end

loadstring([[
local Old 
Old = hookmetamethod(game, "__namecall", function(self, ...)
    local Method = getnamecallmethod()
    if Method == "FireServer" or Method == "fireServer" then 
        local Args = {...}
        local Tbl = Args[4]
        if self.Name == "moddelteasdasd123" or self.Name == "Sun_Damage" or (type(Tbl) == "table" and Tbl["Name"] == "CancelThunderClash") then 
            return 
        end 
    end 
    return Old(self, ...)
end)
]])()

local Data = RS.Player_Data[LP.Name]

local Modes = {"Above", "Below", "Behind", "Front"}
local WKA = {"Fist", "Sword", "Scythe", "Claw", "Fans"}
local MythicSupremeClan = {"Kamado", "Uzui", "Rengoku", "Agatsuma", "Hashibira", "Tomioka", "Tokito", "Soyama"}
local SupremeClan = {"Kamado", "Uzui", "Rengoku", "Agatsuma"}

local Weapons = {
    ["Scythe"] = "Scythe_Combat_Slash", 
    ["Sword"] = "Sword_Combat_Slash",
    ["Claw"] = "claw_Combat_Slash",
    ["Fans"] = "fans_combat_slash",
    ["Fist"] = "fist_combat"
}

local Clan = Data.Clan.Value
local Spin = Data.Spins.Value

local AliveBosses = {}

local Count = function(Table)
    local Ret = 0 
    for i,v in next, Table do Ret = Ret + 1 end
    return Ret 
end 

local function IsBoss(Instance)
    if BossFolder then 
        return Instance:IsDescendantOf(BossFolder) 
    else 
        return false 
    end 
end 

local find = function(Table, Value) for i,v in next, Table do if v == Value then return i end end end


local function Added(Instance)
    local Parent = Instance.Parent 
    if (not Instance:IsA("Model")) or ((not Parent:IsA("Configuration")) and (not Parent:IsA("Folder"))) then return end 
    local Config = Parent:WaitForChild("Npc_Configuration")
    Config = require(Config)
    local Spawn = Config.Npc_Spawning.Spawn_Locations[1]
    if IsBoss(Instance) then 
        insert(AliveBosses, Instance.Name)
        Bosses[Instance.Name] = Instance.Name 
    else 
        Mobs[Instance.Name] = Instance.Name 
    end 
    insert(Entities, {Instance, Spawn})
end 

local function Removed(Instance)
    if IsBoss(Instance) then 
        local Found = find(AliveBosses, Instance.Name) 
        if Found then 
            AliveBosses[Found] = nil
        end 
    end  
    for i,v in next, Entities do 
        if v[1] == Instance then 
            Entities[i] = nil 
        end 
    end 
end

for i,v in next, MobFolder:GetDescendants() do spawn(pcall, Added, v) end 
MobFolder.DescendantAdded:Connect(Added)
MobFolder.DescendantRemoving:Connect(Removed)

local SelectedBosses, SelectedMobs = {}, {}
local function GetClosestMob()
    local Ret = {nil, 9999999, nil}
    local Merged = {}
    for i,v in next, SelectedBosses do Merged[#Merged + 1] = v end
    for i,v in next, SelectedMobs do Merged[#Merged + 1] = v end
    local Length = Count(Merged)
    for i,v in next, Entities do 
        local Mob = v[1]
        if not Mob then continue end
        if Length > 0 and (not find(Merged, Mob.Name)) then continue end
        local Spawn = v[2]
        local HRP = Mob:FindFirstChild("HumanoidRootPart")
        local Humanoid = Mob:FindFirstChild("Humanoid")
        if Humanoid and Humanoid.Health > 0 then 
            if HRP then 
                local Dist = (HumanoidRootPart.Position - HRP.Position).Magnitude 
                if Dist < Ret[2] then 
                    Ret[1] = HRP.CFrame 
                    Ret[2] = Dist
                    Ret[3] = Mob 
                    Ret[4] = HRP 
                end 
            elseif Spawn then 
                local Dist = (HumanoidRootPart.Position - Spawn).Magnitude 
                if Dist < Ret[2] then 
                    Ret[1] = CFrame.new(Spawn) 
                    Ret[2] = Dist 
                    Ret[3] = Mob 
                end 
            end 
        end 
    end 
    return Ret 
end

local function Attack()
    Handle_Initiate_S:FireServer
    (
    _G.Config["Kill Aura"]["Weapon"],
    LP, 
    Character, 
    HumanoidRootPart, 
    Humanoid, 
    919, 
    "ground_slash"
)
    Handle_Initiate_S:FireServer
    (
    _G.Config["Kill Aura"]["Weapon"], 
    LP, 
    Character, 
    HumanoidRootPart, 
    Humanoid, 
    math.huge,
    "ground_slash"
)
end

local W = Library:Window({Name = "Jerry Hub"..MarketplaceService:GetProductInfo(placeId).Name, Themeable = true})

local A = W:Tab({Name = "Main"})

local Aa = A:Section({Name = "Status", Side = "Left"})

local Aa1 = Aa:Label({Name = "Clan: N/A"})
local Aa2 = Aa:Label({Name = "Saved : N/A"})
local Aa3 = Aa:Label({Name = "Race: N/A"})
local Aa4 = Aa:Label({Name = "Breathing: N/A"})
local Aa5 = Aa:Label({Name = "BDA: N/A"})
local Aa6 = Aa:Label({Name = "Clan Spins: N/A"})
local Aa7 = Aa:Label({Name = "Demon Art Spins: N/A"})
local Aa7 = Aa:Label({Name = "Daily Spin: N/A"})
local Aa8 = Aa:Label({Name = "Breathing Progress: N/A"})
local Aa9 = Aa:Label({Name = "Demon Progress: N/A"})
local Aa10 = Aa:Label({Name = "Time: N/A"})

local StartTime = os.time()
local ElapsedTime = os.time() - StartTime

task.spawn(function()
    while wait() do
        Aa10:Set(("Elapsed Time: %i:%i:%i"):format(ElapsedTime / 3600, (ElapsedTime / 60) % 60, ElapsedTime % 60))
    end
end)

local Ab = A:Section({Name = "Spin", Side = "Left"})

Ab:Button({
    Name = "Spin BDA [1 Spin]",
    Callback = function()
        Handle_Initiate_S_:InvokeServer("check_can_spin_demon_art")
    end
})

Ab:Toggle({
    Name = "Auto Daily Spins",
    Value = _G.Config["Auto Daily Spins"],
    Callback = function(v)
        SaveSettings(_G.Config["Auto Daily Spins"], v)
    end
})

if Menu then

local Ab1 = Ab:Toggle({
    Name = "Auto Supreme/Mythic Clan",
    Callback = function(v)
        _G.AutoClan = v
    end
})

spawn(function()
    while wait() do
        if _G.AutoClan and Spin > 0 and IsOpen() then
            for i, v in pairs(MythicSupremeClan) do
                if v ~= Clan then
                    Handle_Initiate_S_:InvokeServer("check_can_spin")
                elseif Spin == 0 then
                    Ab1:Set(false)
                    break
                end
            end
            wait(0.1)
        end
    end
end)

local Ab2 = Ab:Toggle({
    Name = "Auto Supreme Clan",
    Callback = function(v)
        _G.AutoClan1 = v
    end
})

spawn(function()
    while wait() do
        if _G.AutoClan1 and Spin > 0 and IsOpen() then
            for i, v in pairs(SupremeClan) do
                if v ~= Clan then
                    Handle_Initiate_S_:InvokeServer("check_can_spin")
                elseif Spin == 0 then
                    Ab2:Set(false)
                    break
                end
            end
            wait(0.1)
        end
    end
end)
end

local Ac = A:Section({Name = "Farm", Side = "Left"})

Ac:Toggle({
    Name = "Auto Farm",
    Value = _G.Config["Farm"]["Enable"],
    Callback = function(v)
        SaveSettings(_G.Config["Auto Farm"], v)
    end
})

Ac:Toggle({
    Name = "Kill Aura",
    Value = _G.Config["Kill Aura"]["Enable"],
    Callback = function(v)
        SaveSettings(_G.Config["Kill Aura"]["Enable"], v)
        while _G.Config["Kill Aura"]["Enable"] and IsOpen() do
            repeat wait() until Combo < 1
            Bindable.Event:Wait()
            if _G.Config["Kill Aura"]["Hit"] == 16 then
                for i = 1, 8 do Attack() end
            elseif _G.Config["Kill Aura"]["Hit"] == 14 then
                for i = 1, 7 do Attack() end
            end
            wait(_G.Config["Kill Aura"]["Cooldown"])
        end
    end
})

Ac:Toggle({
    Name = "Arrow KA [Arrow BDA]",
    Value = _G.Config["Arrow KA"],
    Callback = function(v)
        SaveSettings(_G.Config["Arrow KA"], v)
        while _G.Config["Arrow KA"] and IsOpen() do
            pcall(function()
                Handle_Initiate_S:FireServer("skil_ting_asd", LP, "arrow_knock_back", 5)
                for i = 1, 50 do
                    local Data = GetClosestMob() 
                    local Mob = Data[3]
                    local CF = Data[1]
                    if CF and IsOpen() and Arrow then 
                        Handle_Initiate_S:FireServer("arrow_knock_back_damage", Character, CF, Mob, 200, 200)
                    end
                    task.wait(0.13)
                end 
            end)
        end
    end
})



Ac:Toggle({
    Name = "Bring Mob [Arrow 30]",
    Value = _G.Config["Bring Mob"],
    Callback = function(v)
        SaveSettings(_G.Config["Bring Mob"], v)
    end
})



Ac:Toggle({
    Name = "Inf Stun [Swamp]",
    Value = _G.Config["Inf Stun"],
    Callback = function(v)
        SaveSettings(_G.Config["Inf Stun"], v)
    end
})



Ac:Toggle({
    Name = "Thunder KA",
    Value = _G.Config["Thunder KA"],
    Callback = function(v)
        SaveSettings(_G.Config["Thunder KA"], v)
   end
})



Ac:Toggle({
    Name = "Auto Loot",
    Value = _G.Config["Auto Loot"],
    Callback = function(v)
        SaveSettings(_G.Config["Auto Loot"], v)
    end
})

Debree.ChildAdded:Connect(function(v)
    if _G.Config["Auto Loot"] and v.Name == "Loot_Chest" then 
        local Remote = v:WaitForChild("Add_To_Inventory")
        local Drops = v:WaitForChild("Drops")  
        repeat 
            for i,v in next, Drops:GetChildren() do 
                Remote:InvokeServer(v.Name)
                if _G.Config["Webhook"]["Loot"] then
                    local url = _G.Config["Webhook"]["Url"]
                    local data = {
                        ["content"] = os.date("#".."%A".." // ".."%d".." ".."%B".." ".."%Y".." // ".."%X".."#"),
                        ["username"] = "Hutao",
                        ["avatar_url"] = "https://media.tenor.com/AbkJkB1pGr8AAAAC/hutao-money-rain.gif",
                        ["embeds"] = {
                            ["title"] = "Jerry Hub | Loot",
                            ["description"] =  "**You just got**",
                            ["type"] = "rich",
                            ["color"] = tonumber(0x8B0000),
                            ["fields"] = {
                                {
                                    ["name"] = "Username:",
                                    ["value"] = "||"..LP.Name.."||",
                                    ["inline"] = true
                                        
                                },
                                    
                                {
                                    ["name"] = "Drop:",
                                    ["value"] = "||"..v.Name.."||",
                                    ["inline"] = true
                                }
                            },
                            ["footer"] = {
                                ["text"] = "https://discord.gg/WeM3WuzdVH",
                                ["icon_url"] = "https://i.imgur.com/vRkv2ED.gif"
                            }
                        }
                    }   
                    PostWebhook(data, url)         
                end
            end
            wait(.1)
        until not v.Parent
    end
end)

Ac:Toggle({
    Name = "Auto Eat Souls",
    Value = _G.Config["Auto Eat Souls"],
    Callback = function(v)
        SaveSettings(_G.Config["Auto Eat Souls"], v)
    end
})

Debree.ChildAdded:Connect(function(v)
    if _G.Config["Auto Eat Souls"] and v.Name == "Soul" then
        local Remote = v:WaitForChild("Handle"):WaitForChild("Eatthedamnsoul")
        Remote:FireServer()
    end
end)

local Ad = A:Section({Name = "Webhook", Side = "Right"})


Ad:Toggle({
    Name = "Webhook Loot Enable",
    Value = _G.Config["Webhook Loot"]["Loot"],
    Callback = function(v)
        SaveSettings(_G.Config["Webhook"]["Loot"], v)
    end
})



Ad:Textbox({
    Name = "Webhook Link",
    Value = _G.Config["Webhook"]["Url"],
    Callback = function(v)
        SaveSettings(_G.Config["Webhook Loot"]["Link"], v)
    end
})



local Ae = A:Section({Name = "Setting Farm", Side = "Left"})



Ae:Dropdown(

    {

        Name = "Farm Mode",

        List = Modes,

        Value = _G.Config["Farm"]["Mode"],

        Callback = function(v)

            SaveSettings(_G.Config["Farm"]["Farm Mode"], v)

        end

    }

)

Ae:Dropdown(

    {

        Name = "Weapon Kill Aura",

        List = WKA,

        Value = _G.Config["Kill Aura"]["Weapon"],

        Callback = function(v)

            SaveSettings(_G.Config["Kill Aura"]["Weapon"], v)

        end

    }

)



Ae:Dropdown(

    {

        Name = "Kill Aura Hit",

        List = {14, 16},

        Value = _G.Config["Kill Aura"]["Hit"],

        Callback = function(v)

            SaveSettings(_G.Config["Kill Aura"]["Hit"], v)

        end

    }

)



Ae:Slider(

    {

        Name = "Kill Aura Cooldown",

        Min = 1.25,

        Max = 2.5,

        Value = _G.Config["Kill Aura"]["Cooldown"],

        Textbox = true,
        Callback = function(v)
            SaveSettings(_G.Config["Kill Aura"]["Cooldown"], v)
        end
    }
)

Ae:Slider(
    {
        Name = "Tween Speed",
        Min = 100,
        Max = 600,
        Value = _G.Config["Farm"]["Tween Speed"],
        Textbox = true,
        Callback = function(v)
            SaveSettings(_G.Config["Farm"]["Tween Speed"], v)
        end
    }
)

Ae:Slider(
    {
        Name = "Distance",
        Min = 0,
        Max = 100,
        Value = _G.Config["Farm"]["Distance"],
        Textbox = true,
        Callback = function(v)
            SaveSettings(_G.Config["Farm"]["Distance"], v)
        end
    }
)