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

repeat task.wait() until game:IsLoaded()
repeat task.wait() until game:GetService("Players")
repeat task.wait() until game:GetService("Players").LocalPlayer
task.wait(5)

local G = _G or getgenv()
local WS = game:GetService("Workspace")
local RS = game:GetService("ReplicatedStorage")
local RunS = game:GetService("RunService")
local P = game:GetService("Players")
local LP = P.LocalPlayer
local HttpService = game:GetService("HttpService")

G.Config = {
    ["ApplySlot"] = 1,
    ["Auto Daily Spins"] = true,
    ["Arrow KA"] = false,
    ["Bring Mob"] = false,
    ["Inf Stun"] = false,
    ["Claw KA"] = false,
    ["Auto Loot"] = false,
	["Auto Eat Souls"] = false,
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

local folder = "Jerry Hub"
local j = "-ProjectSlayer.json"
local file = LP.Name .. j

local function SaveSettings(m, n)
    if m ~= nil then
        m = n
    end
    local HttpService = game:GetService("HttpService")
    if not isfolder(folder) then
        makefolder(folder)
    end
    writefile(folder .. "/" .. file, HttpService:JSONEncode(_G.Config))
end

warn("Setting Saved")

local function ReadSetting()
    local s, e = pcall(function()
        HttpService = game:GetService("HttpService")
        if not isfolder(folder) then
            makefolder(folder)
        end
        return HttpService:JSONDecode(readfile(folder .. "/" .. file))
    end)
    if s then
        return e
    else
        SaveSettings()
        return ReadSetting()
    end
end

_G.Config = ReadSetting()

local REMOTE = RS:WaitForChild("Remotes")
local To_Server = REMOTE:WaitForChild("To_Server")
local Handle_Initiate_S_ = To_Server:WaitForChild("Handle_Initiate_S_")
local Apply_Slot = REMOTE:WaitForChild("Apply_Slot")
local spins_thing_remote = RS:WaitForChild("spins_thing_remote")

local function Slot(m)
Apply_Slot:InvokeServer(m)
end
if Menu then
    Slot(_G.Config["ApplySlot"])
end
task.wait(5)

local Data = RS.Player_Data[LP.Name]

local Modes = {"Above", "Below", "Behind", "Front"}
local WKA = {"Fist", "Sword", "Scythe", "Claw", "Fans", "All"}
local MythicSupremeClan = {"Kamado", "Uzui", "Rengoku", "Agatsuma", "Hashibira", "Tomioka", "Tokito", "Soyama"}
local SupremeClan = {"Kamado", "Uzui", "Rengoku", "Agatsuma"}

local Clan = Data.Clan.Value
local Spin = Data.Spins.Value
local DSpin =  P[LP.Name].daily_spins_folder.SpinsToday.Value

task.spawn(function()
    while task.wait() do
        if AutoClan and Spin > 0 then
            for i, v in pairs(MythicSupremeClan) do
                if v ~= Clan then
                    Handle_Initiate_S_:InvokeServer("check_can_spin")
                else
                    AutoClan = false
                    break
                end
            end
            task.wait(0.1)
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if AutoClan1 and Spin > 0 then
            for i, v in pairs(SupremeClan) do
                if v ~= Clan then
                    Handle_Initiate_S_:InvokeServer("check_can_spin")
                else
                    AutoClan = false
                    break
                end
            end
            task.wait(0.1)
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if G.["Auto Daily Spins"] and DSpin > 0 then
            spins_thing_remote:InvokeServer()
            task.wait(0.1)
        else
            break
        end
    end
end)

local Library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/KvdzUwU/TrashHub/main/PC/UI.lua"))()
local Wait = Library.subs.Wait

local W = Library:Window({Name = "Jerry Hub", Themeable = true})

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

task.spawn(function()
    while task.wait() do
        Aa1:Set("Clan: %s"):format(Clan)
        Aa6:Set("Clan Spin: %i"):format(Spin)
        Aa7:Set("Daily Spin: %i"):format(DSpin)
        task.wait(0.5)
    end
end)
local Ab = A:Section({Name = "Spin", Side = "Left"})

Ab:Button({
    Name = "Spin BDA [1 Spin]",
    Callback = function()
        Handle_Initiate_S_:InvokeServer("check_can_spin_demon_art")
    end
})

Ab:Toggle(
    {
        Name = "Auto Daily Spins",
        Value = G.Config["Auto Daily Spins"],
        Callback = function(v)
            SaveSettings(G.Config["Auto Daily Spins"], v)
        end
    }
)

if Menu then

Ab:Toggle(
    {
        Name = "Auto Supreme/Mythic Clan",
        Callback = function(v)
            AutoClan = v
        end
    }
)

Ab:Toggle(

    {

        Name = "Auto Supreme Clan",

        Callback = function(v)

            AutoClan1 = v

        end

    }

)

end

local Ac = A:Section({Name = "Farm", Side = "Left"})



Ac:Toggle(

    {

        Name = "Auto Farm",

        Value = G.Config["Farm"]["Enable"],

        Callback = function(v)

            SaveSettings(G.Config["Auto Farm"], v)

        end

    }

)



Ac:Toggle(

    {

        Name = "Kill Aura",

        Value = G.Config["Kill Aura"]["Enable"],

        Callback = function(v)

            SaveSettings(G.Config["Kill Aura"]["Enable"], v)

        end

    }

)



Ac:Toggle(

    {

        Name = "Arrow KA [Arrow BDA]",

        Value = G.Config["Arrow KA"],

        Callback = function(v)

            SaveSettings(G.Config["Arrow KA"], v)

        end

    }

)



Ac:Toggle(

    {

        Name = "Bring Mob [Arrow 30]",

        Value = G.Config["Bring Mob"],

        Callback = function(v)

            SaveSettings(G.Config["Bring Mob"], v)

        end

    }

)



Ac:Toggle(

    {

        Name = "Inf Stun [Swamp]",

        Value = G.Config["Inf Stun"],

        Callback = function(v)

            SaveSettings(G.Config["Inf Stun"], v)

        end

    }

)



Ac:Toggle(

    {

        Name = "Thunder KA",

        Value = G.Config["Thunder KA"],

        Callback = function(v)

            SaveSettings(G.Config["Thunder KA"], v)

        end

    }

)



Ac:Toggle(

    {

        Name = "Auto Loot",

        Value = G.Config["Auto Loot"],

        Callback = function(v)

            SaveSettings(G.Config["Auto Loot"], v)

        end

    }

)



Ac:Toggle(

    {

        Name = "Auto Eat Souls",

        Value = G.Config["Auto Eat Souls"],

        Callback = function(v)

            SaveSettings(G.Config["Auto Eat Souls"], v)

        end

    }

)



local Ad = A:Section({Name = "Webhook", Side = "Right"})



Ad:Toggle(
    {
        Name = "Webhook Loot Enable",
        Value = G.Config["Webhook"]["Loot"],
        Callback = function(v)
            SaveSettings(G.Config["Webhook"]["Loot"], v)
        end
    }
)

Ad:Textbox(
    {
        Name = "Webhook Link",
        Value = G.Config["Webhook"]["Url"],
        Callback = function(v)
            SaveSettings(G.Config["Webhook"]["Url"], v)
        end
    }
)

local Ae = A:Section({Name = "Setting Farm", Side = "Left"})

Ae:Dropdown(
    {
        Name = "Farm Mode",
        List = Modes,
        Value = G.Config["Farm"]["Mode"],
        Callback = function(v)
            SaveSettings(G.Config["Farm"]["Farm Mode"], v)
        en
    }
)

Ae:Dropdown(
    {
        Name = "Weapon Kill Aura",
        List = WKA,
        Value = G.Config["Kill Aura"]["Weapon"],
        Callback = function(v)
            SaveSettings(G.Config["Kill Aura"]["Weapon"], v)
        end
    }
)

Ae:Dropdown(
    {
        Name = "Kill Aura Hit",
        List = {14, 16},
        Value = G.Config["Kill Aura"]["Hit"],
        Callback = function(v)
            SaveSettings(G.Config["Kill Aura"]["Hit"], v)
        end
    }
)

Ae:Slider(
    {
        Name = "Kill Aura Cooldown",
        Min = 1.25,
        Max = 2.5,
        Value = G.Config["Kill Aura"]["Cooldown"],
        Textbox = true,
        Callback = function(v)
            SaveSettings(G.Config["Kill Aura"]["Cooldown"], v)
        end
    }
)

Ae:Slider(
    {
        Name = "Tween Speed",
        Min = 100,
        Max = 600,
        Value = G.Config["Farm"]["Tween Speed"],
        Textbox = true,
        Callback = function(v)
            SaveSettings(G.Config["Farm"]["Tween Speed"], v)
        end
    }
)

Ae:Slider(
    {
        Name = "Distance",
        Min = 0,
        Max = 100,
        Value = G.Config["Farm"]["Distance"],
        Textbox = true,
        Callback = function(v)
            SaveSettings(G.Config["Farm"]["Distance"], v)
        end
    }
)
