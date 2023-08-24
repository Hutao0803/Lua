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

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KvdzUwU/TrashHub/main/PC/UI.lua"))()
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
    ["Auto Block"] = false,
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
    ["God Mode"] = {
        ["Enable"] = false,
        ["Mode"] = "",
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
local function PostWebhook(data)
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {["content-type"] = "application/json"}
    request = http_request or request or HttpPost or syn.request
    local Require = {Url = _G["Webhook"]["Url"], Body = newdata, Method = "POST", Headers = headers}
    request(Require)
end

local function LootWebhook(drop)
local data = {
    ["content"] = os.date("#".."%A".." // ".."%d".." ".."%B".." ".."%Y".." // ".."%X".."#"),
    ["username"] = "Hutao",
    ["avatar_url"] = "https://media.tenor.com/AbkJkB1pGr8AAAAC/hutao-money-rain.gif",
    ["embeds"] = {
        ["title"] = "Jerry Hub | Loot",
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
                ["value"] = "||"..drop.."||",
                ["inline"] = true
            }
                },
                ["footer"] = {
                    ["text"] = "https://discord.gg/WeM3WuzdVH",
                    ["icon_url"] = "https://i.imgur.com/vRkv2ED.gif"
                }
            }
        }
        PostWebhook(data)
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
local PlayerValues = RS.PlayerValues[LP.Name]

local Modes = {"Above", "Below", "Behind", "Front"}
local MythicSupremeClan = {"Kamado", "Uzui", "Rengoku", "Agatsuma", "Hashibira", "Tomioka", "Tokito", "Soyama"}
local SupremeClan = {"Kamado", "Uzui", "Rengoku", "Agatsuma"}

local Weapons = {
    ["Scythe"] = "Scythe_Combat_Slash", 
    ["Sword"] = "Sword_Combat_Slash",
    ["Claw"] = "claw_Combat_Slash",
    ["Fans"] = "fans_combat_slash",
    ["Fist"] = "fist_combat"
}
local WKA = {}
for i, v in pairs(Weapons) do insert(WKA, i) end

local Godmodes = {
    ["Scythe"] = "scythe_asteroid_reap",
    ["Ice"] = "ice_demon_art_bodhisatva",
    ["Shockwave"] = "akaza_bda_compass_needle",
    ["Swamp"] = "swamp_bda_swamp_domain",
    ["Dream"] = "dream_bda_flesh_monster",
    ["Blood Burst"] = "explosive_demon_art_blood_burst",
    ["Sound"] = "sound_breathing_smoke_screen",
    ["Water"] = "Water_fall_basin",
    ["Wind"] = "Wind_breathing_black_wind_mountain_mist",
    ["Insect"] = "insect_breathing_dance_of_the_centipede",
    ["Flame"] = "flame_breathing_flaming_eruption",
    ["Beast"] = "Beast_breathing_devouring_slash",
    ["Snow"] = "snow_breatihng_layers_frost",
}

local GodModes = {}
for i, v in pairs(Godmodes) do insert(GodModes, i) end

local Clan = Data.Clan.Value
local Spin = Data.Spins.Value

local function Attack(method)
    Handle_Initiate_S:FireServer(
    method,
    LP, 
    Character, 
    HumanoidRootPart, 
    Humanoid, 
    919, 
    "ground_slash")
    Handle_Initiate_S:FireServer(
    method, 
    LP, 
    Character, 
    HumanoidRootPart, 
    Humanoid, 
    math.huge,
    "ground_slash")
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
                for i = 1, _G.Config["Kill Aura"]["Hit"]/2 do Attack(Weapons[_G.Config["Kill Aura"]["Weapon"]]) end
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
                local args = {
                    [1] = "skil_ting_asd",
                    [2] = LP,
                    [3] = "arrow_knock_back",
                    [4] = 5
                }
                Handle_Initiate_S:FireServer(unpack(args))
                wait(14)
            end)
            pcall(function()
                for i, v in next, MobFolder:GetDescendants() do
                    if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
                        local args = {
                        [1] = "arrow_knock_back_damage",
                        [2] = Character,
                        [3] = v.HumanoidRootPart.CFrame,
                        [4] = v,
                        [5] = 200,
                        [6] = 200,
                    }
                    Handle_Initiate_S_:InvokeServer(unpack(args))
                    end
                end
                task.wait(.1)
            end)
        end
    end
})



Ac:Toggle({
    Name = "Bring Mob [Arrow 30]",
    Value = _G.Config["Bring Mob"],
    Callback = function(v)
        SaveSettings(_G.Config["Bring Mob"], v)
        while _G["Bring Mob"] and IsOpen() do
            pcall(function()
                local args = {
                    [1] = "skil_ting_asd",
                    [2] = LP,
                    [3] = "Piercing_Arrow",
                    [4] = 5
                }
                Handle_Initiate_S:FireServer(unpack(args))
                wait(14)
            end)
            pcall(function()
                local args = {
                    [1] = "piercing_arrow_damage",
                    [2] = WS[LP.Name],
                    [3] = HumanoidRootPart.CFrame,
                    [4] = 50000
                }
                Handle_Initiate_S_:InvokeServer(unpack(args))
                wait(.1)
                Handle_Initiate_S:FireServer("fist_combat", LP, Character, HumanoidRootPart, Humanoid, 1, "ground_slash")
                wait(.1)
            end)
        end
    end
})

Ac:Toggle({
    Name = "Thunder KA",
    Value = _G.Config["Thunder KA"],
    Callback = function(v)
        SaveSettings(_G.Config["Thunder KA"], v)
        while _G.Config["Thunder KA"] and IsOpen() do
            pcall(function()
                local args = {
                    [1] = "skil_ting_asd",
                    [2] = LP,
                    [3] = "Thunderbreathingrapidslashes",
                    [4] = 5,
                }
                Handle_Initiate_S:FireServer(unpack(args))
            end)
            pcall(function()       
                local args = {
                    [1] = "ricespiritdamage",
                    [2] = Character,
                    [3] = HumanoidRootPart.CFrame,
                    [4] = 300
                }
                Handle_Initiate_S:FireServer(unpack(args))
                wait(.85)
            end)
        end
   end
})

Ac:Toggle({
    Name = "Auto Block [No Skill]",
    Value = _G.Config["Auto Block"],
    Callback = function (v)
        SaveSettings(_G.Config["Auto Block"], v)
        if _G.Config then
            while _G.Config["Auto Block"] and IsOpen() do
                local args = {
                    [1] = "add_blocking",
                    [3] = os.clock(),
                    [4] = PlayerValues,
                    [5] = 1,
                }
                Handle_Initiate_S:FireServer(unpack(args))
            end
        else
            Handle_Initiate_S_:InvokeServer("remove_blocking", PlayerValues)
        end
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
                    LootWebhook(v.Name)
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
    Value = _G.Config["Webhook"]["Loot"],
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



Ae:Dropdown({
    Name = "Farm Mode",
    List = Modes,
    Value = _G.Config["Farm"]["Mode"],
    Callback = function(v)
        SaveSettings(_G.Config["Farm"]["Farm Mode"], v)
    end
})

Ae:Dropdown({
    Name = "Weapon Kill Aura",
    List = WKA,
    Value = _G.Config["Kill Aura"]["Weapon"],
    Callback = function(v)
        SaveSettings(_G.Config["Kill Aura"]["Weapon"], v)
    end
})



Ae:Dropdown({
    Name = "Kill Aura Hit",
    List = {14, 16},
    Value = _G.Config["Kill Aura"]["Hit"],
    Callback = function(v)
        SaveSettings(_G.Config["Kill Aura"]["Hit"], v)
    end
})

Ae:Slider({
    Name = "Kill Aura Cooldown",
    Min = 1.25,
    Max = 2.5,
    Value = _G.Config["Kill Aura"]["Cooldown"],
    Textbox = true,
    Callback = function(v)
        SaveSettings(_G.Config["Kill Aura"]["Cooldown"], v)
    end
})

Ae:Slider({
    Name = "Tween Speed",
    Min = 100,
    Max = 600,
    Value = _G.Config["Farm"]["Tween Speed"],
    Textbox = true,
    Callback = function(v)
        SaveSettings(_G.Config["Farm"]["Tween Speed"], v)
    end
})

Ae:Slider({
    Name = "Distance",
   Min = 0,
    Max = 100,
    Value = _G.Config["Farm"]["Distance"],
    Textbox = true,
    Callback = function(v)
        SaveSettings(_G.Config["Farm"]["Distance"], v)
    end
})

local B = W:Tab({Name = "Misc"})

local Ba = W:Section({Name = "God Mode", Side = "Right"})

local Ba1 = W:Toggle({
    Name = "Enable",
    Value = _G.Config["God Mode"]["Enable"],
    Callback = function(v)
        SaveSettings(_G.Config["God Mode"]["Enable"], v)
        while _G.Config["God Mode"]["Enable"] and IsOpen() do
        Handle_Initiate_S:FireServer("skil_ting_asd", LP, Godmodes[_G.Config["God Mode"]["Mode"]], 1)
        end
    end
})

local Ba2 = W:Dropdown({
    Name = "Select GodMode",
    Value = _G.Config["God Mode"]["Mode"],
    Callback = function(v)
        SaveSettings(_G.Config["God Mode"]["Mode"], v)
    end
})
