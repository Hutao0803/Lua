
if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.ReplicatedStorage
repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Energy")
local placeId = game.PlaceId
local WS = game:GetService("Workspace")
local LP = game:GetService("Players").LocalPlayer
local RS = game:GetService("ReplicatedStorage")
local VU = game:GetService('VirtualUser')
local RunS = game:GetService("RunService")
local function Notify(title, text, icon, duration)
    game.StarterGui:SetCore("SendNotification", {
		Title = title, 
		Text = text,
		Icon = icon,
		Duration = duration
    })
end
local notis = require(game.ReplicatedStorage:WaitForChild("Notification"))
if placeId == 2753915549 or 4442272183 or 7449423635 then
    Notify("Loading Kaitun Script", "Welcome to Jerry Hub", "rbxassetid://14299284116", 5)
    notis.new("<Color=White>JERRY HUB<Color=/>"):Display()
    wait()
    notis.new("<Color=Blue>Owner: hutao_memaybeo<Color=/>"):Display() 
    wait()
    notis.new("<Color=Red>Discord: https://discord.gg/WeM3WuzdVH<Color=/>"):Display() 
    wait()
    notis.new("<Color=Yellow>Exploit Use:<Color=/> ".. identifyexecutor()):Display() 
else
    Notify(game:GetService("MarketplaceService"):GetProductInfo(placeId).Name, "Wrong Game/Map", "rbxassetid://14299284116", 5)
    wait(5)
    LP:Kick("Kaitun Blox Fruit OK!")
end
repeat
    wait()
    if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main"):FindFirstChild("ChooseTeam") then
        if string.find(tostring(h["Team"]), "Pirate") then
            for r, v in pairs(getconnections(LP.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
                v.Function()
            end
        elseif string.find(tostring(h["Team"]), "Marine") then
            for r, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do
                v.Function()
            end
         else
            for r, v in pairs(getconnections(LP.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
                v.Function()
            end
        end
    end
until LP.Team ~= nil
local World1 = false
local World2 = false
local World3 = false
if placeId == 2753915549 then
    World1 = true
elseif placeId == 4442272183 then
    World2 = true
elseif placeId == 7449423635 then
    World3 = true
end
local Remote = RS:WaitForChild("Remotes"):WaitForChild("CommF_")
local Character = LP.Character
local Data = LP.Data
local Backpack = LP.Backpack
local CurveFrame = debug.getupvalues(require(LP.PlayerScripts:WaitForChild("CombatFramework")))[2]
local inventory = Remote:InvokeServer("getInventory")
local h = {
    ["Start Kaitun/Cuttay"] = true,
    ["Disable Hop"] = false
}
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KvdzUwU/TrashHub/main/PC/UI.lua"))()
local HttpService = game:GetService("HttpService")
local IsOpen = Library.subs.wait
local l = {}
local folder = "Jerry Hub"
local folder2 = folder.."/Kaitun"
local file = folder2.."/"..LP.Name..".json"
local function SaveSetting(m, n)
    if m ~= nil then
        h[m] = n
    end
    if not isfolder(folder) then
        makefolder(folder)
    end
    if not isfolder(folder2) then
        makefolder(folder2)
    end
    writefile(file, HttpService:JSONEncode(h))
end
local function LoadSetting()
    local s, o = pcall(function()
        if not isfolder(folder) then
            makefolder(folder)
        end
        if not isfolder(folder2) then
            makefolder(folder2)
        end 
        return HttpService:JSONDecode(readfile(file))
    end)    
    if s then
    return o
    else
        SaveSetting()
        return LoadSetting()
    end
end
h = LoadSetting()
local function CheckWorld()
    if placeId == 2753915549 then
        return 1
    elseif placeId == 4442272183 then
        return 2
    elseif placeId == 7449423635 then
        return 3
    end
end
local function CheckRace()
    local Race = " V1"
    if Character:FindFirstChild("RaceTransformed") then
        Race = " V4"
    elseif Remote:InvokeServer("Wenlocktoad", "1") == -2 then
        Race = " V3"
    elseif Remote:InvokeServer("Alchemist", "1") == -2 then
        Race = " V2"
    end
    return Data.Race.Value .. Race
end
local function getFruit()
    local v = Data.DevilFruit.Value
    if Character:FindFirstChild(v) or Backpack:FindFirstChild(v) then
        return v
    end
    return "None"
end
local function getFruitMastery()
    local c = Backpack or Character
    for _, v in pairs(c:GetChildren()) do
        if v:IsA("Tool") and v.ToolTip == "Blox Fruit" then
            return v.Level.Value
        end
    end
    return 0
end
local function MoonTextureId()
    if World1 or World2 then
        return game:GetService("Lighting").FantasySky.MoonTextureId
    elseif World3 then
        return game:GetService("Lighting").Sky.MoonTextureId
    else
        return nil
    end
end
local function CheckMoon()
    local moons = {"http://www.roblox.com/asset/?id=9709150401", "http://www.roblox.com/asset/?id=9709150086", "http://www.roblox.com/asset/?id=9709149680", "http://www.roblox.com/asset/?id=9709149431", "http://www.roblox.com/asset/?id=9709149052", "http://www.roblox.com/asset/?id=9709143733", "http://www.roblox.com/asset/?id=9709139597", "http://www.roblox.com/asset/?id=9709135895"}
    local moonreal = MoonTextureId()
    local moon = "Bad Moon"
    for _, v in pairs(moons) do
        if moonreal == v[4] or moonreal == v[5] then
            if moonreal == v[5] then
                moon = "Full Moon"
            elseif moonreal == v[4] then
                moon = "Next Night"
            end
        end
    end
    return moon
end
wait(1)
local Window = Library:W({Name = "Jerry Hub | Kaitun", Themeable = true})
local MainTab = Window:T({Name = "Main"})
local Developer = MainTab:S({Name = "Developer", Side = "Left"})
Developer:Label({Text = "Develop by hutao_memaybeo (Hutao)"})
Developer:Label({Text = "Founder Hirimii"})
Developer:Label({Text = "Discord Server: https://discord.gg/WeM3WuzdVH"})
Developer:Button({Name = "Copy Discord Server", Callback = function()
setclipboard("https://discord.gg/WeM3WuzdVH")
end})
local Info = MainTab:S({Name = "Info", Side = "Left"})
Info:Label({Text = "Name : "..LP.Name})
Info:Label({Text = "World : "..tostring(CheckWorld())})
l["Level"] = Info:Label({Text = "Level : "})
l["Beli"] = Info:Label({Text = "Beli : "})
l["Fragments"] = Info:Label({Text = "Fragment : "})
l["Bounty/Honor"] = Info:Label({Text = "Bounty/Honor : "})
l["Race"] = Info:Label({Text = "Race : "})
l["Fruit"] = Info:Label({Text = "Devil Fruit : "})
local Stats = MainTab:S({ Name = "Stats", Side = "Left"})
l["Points"] = Stats:Label({Name = "Points : "})
l["Melee"] = Stats:Label({Name = "Melee : "})
l["Sword"] = Stats:Label({Name = "Sword : "})
l["Defense"] = Stats:Label({Name = "Defense : "})
l["Gun"] = Stats:Label({Name = "Gun : "})
l["Demon Fruit"] = Stats:Label({Name = "Demon Fruit : "})
l["Time"] = Info:Label({Text = ""})
local Quest_Status = MainTab:S({Name = "Quest Status", Side = "Left"})
l["Bartilo Quest"] = Quest_Status:Label({Text = "🔴 : Bartilo Quest"})
l["Don Swan Quest"] = Quest_Status:Label({Text = "🔴 : Don Swan Quest"})
l["Kill Don Swan"] = Quest_Status:Label({Text = "🔴 : Kill Don Swan"})
l["CDK Quest"] = Quest_Status:Label({Name = "🔴 Cursed Dual Katana Quest : 0/6"})
local Fighting_Style = MainTab:S({Name = "Fighting Styles [Melee]", Side = "Left"})
l["Superhuman"] = Fighting_Style:Label({Text = "🔴 : Superhuman"})
l["Sharkman Karate"] = Fighting_Style:Label({Text = "🔴 : Sharkman Karate"})
l["Death Step"] = Fighting_Style:Label({Text = "🔴 : Death Step"})
l["Electric Claw"] = Fighting_Style:Label({Text = "🔴 : Electric Claw"})
l["Dragon Talon"] = Fighting_Style:Label({Text = "🔴 : Dragon Talon"})
l["Godhuman"] = Fighting_Style:Label({Text = "🔴 : Godhuman"})
local Farming = MainTab:S({Name = "Farming", Side = "Right"})
l["SpawnPoint"] = Farming:Label({Name = "SpawnPoint :"})
l["Moon"] = Farming:Label({Name = "Moon Status : "})
l["Enable Farm"] = Farming:Tog({Name = "Start Kaitun/Cuttay", Enabled = h["Start Kaitun/Cuttay"], Value = true, Callback = function(v)
    SaveSetting("Start Kaitun/Cuttay", v)
end})
l["Auto Hop"] =  Farming:Tog({Name = "Disable Hop", Value = h["Disable Hop"], Callback = function(v)
    SaveSetting("Disable Hop", v)
end})
l["Farm Status"] = Farming:Label({Name = "Farm Status : "})
l["Fast Attack"] = Farming:Label({Name = "🟢 : Fast Attack"})
l["Bring Mob"] = Farming:Label({Name = "🟢 : Bring Mob"})
l["Double Quest"] = Farming:Label({Name = "🟢 : Double Quest"})
local LSD = MainTab:S({Name = "Lengendary Sword Dealer", Side = "Right"})
l["Shisui"] = LSD:Label({Text = "🔴 : Shisui"})
l["Saddi"] = LSD:Label({Text = "🔴 : Saddi"})
l["Wando"] = LSD:Label({Text = "🔴 : Wando"})
l["True Triple Katana"] = LSD:Label({Text = "🔴 : True Triple Katana"})
local SW = MainTab:S({Name = "Sword", Side = "Right"})
l["Saber"] = SW:Label({Text = "🔴 : Saber"})
l["Pole (1st Form)"] = SW:Label({Text = "🔴 : Pole (1st Form)"})
l["Rengoku"] = SW:Label({Text = "🔴 : Rengoku"})
l["Midnight Blade"] = SW:Label({Name = "🔴 : Midnight Blade"})
l["Dragon Trident"] = SW:Label({Name = "🔴 : Dragon Trident"})
l["Yama"] = SW:Label({Name = "🔴 : Yama"})
l["Buddy Sword"] = SW:Label({Name = "🔴 : Buddy Sword"})
l["Canvander"] = SW:Label({Name = "🔴 : Canvander"})
l["Twin Hooks"] = SW:Label({Name = "🔴 : Twin Hooks"})
l["Spikey Trident"] = SW:Label({Name = "🔴 : Spikey Trident"})
l["Hallow Scythe"] = SW:Label({Name = "🔴 : Hallow Scythe"})
l["Dark Dagger"] = SW:Label({Name = "🔴 : Dark Dagger"})
l["Tushita"] = SW:Label({Name = "🔴 : Tushita"})
l["Cursed Dual Katana"] = SW:Label({Name = "🔴 : Cursed Dual Katana"})
local GW = MainTab:S({Name = "Gun", Side = "Right"})
l["Kabucha"] = GW:Label({Name = "🔴 : Kabucha"})
l["Acidum Rifle"] = GW:Label({Name = "🔴 : Acidum Rifle"})
l["Bizarre Rifle"] = GW:Label({Name = "🔴 : Bizarre Rifle"})
l["Soul Guitar"] = GW:Label({Name = "🔴 : Soul Guitar"})
local Material = MainTab:S({Name = "Material", Side = "Right"})
l["Ectoplasm"] = Material:Label({Name = "Ectoplasm : "})
l["Bone"] = Material:Label({Name = "Bone : "})
l["Fish Tail"] = Material:Label({Name = "Fish Tail : "})
l["Mystic Droplet"] = Material:Label({Name = "Mystic Droplet : "})
l["Mirror Fractal"] = Material:Label({Name = "Mirror Fractal : "})
local StartTime = os.time()
local function updateTime()
    local ElapsedTime = os.time() - StartTime
    local FormatTime = string.format("%02d:%02d:%02d", ElapsedTime / 3600, (ElapsedTime / 60) % 60, ElapsedTime % 60)
    l["Time"]:Set(FormatTime)
end
RunS.Heartbeat:Connect(updateTime)
spawn(function()
    while wait(5) do
        if h["Start Kaitun/Cuttay"] and IsOpen() then
            local args = {"Level", "Beli", "Fragments", "Points",}
            for _, v in pairs(args) do
                l[v]:Set(v.." : "..tostring(Data[v].Value):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", ""))
            end
            local questData = {{"BartiloQuestProgress", "Bartilo", 3, "Bartilo Quest"}, {"ZQuestProgress", "Check", 1, "Kill Don Swan"}
            }            
            for _, v in pairs(questData) do
                if Remote:InvokeServer(v[1], v[2]) == v[3] then
                    l[v[4]]:Set("🟢 : " .. v[4])
                end
            end
            if Remote:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
                l["Don Swan Quest"]:Set("🟢 : Don Swan Quest")
            end
            local Stats = {"Melee", "Sword", "Defense", "Gun", "Demon Fruit" }
            for _, v in pairs(Stats) do
                l[v]:Set(v.." : "..tostring(Data.Stats[v].Level.Value):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", ""))
            end
            local melees = {{Name = "Superhuman", Function = "BuySuperhuman"}, {Name = "Death Step", Function = "BuyDeathStep"}, {Name = "Sharkman Karate", Function = "BuySharkmanKarate"}, {Name = "Electric Claw", Function = "BuyElectricClaw"}, {Name = "Dragon Talon", Function = "BuyDragonTalon"}, {Name = "Godhuman", Function = "BuyGodhuman"}}           
            for _, v in pairs(melees) do
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(v.Function, true) == 1 then
                    l[v.Name]:Set("🟢: " .. v.Name)
                end
            end
            local weapons = {"Shisui", "Saddi", "Wando", "True Triple Katana", "Saber", "Pole (1st Form)", "Rengoku", "Midnight Blade", "Dragon Trident", "Yama", "Buddy Sword", "Canvander", "Twin Hooks", "Spikey Trident", "Hallow Scythe", "Dark Dagger", "Tushita", "Cursed Dual Katana", "Kabucha", "Acidum Rifle", "Bizarre Rifle", "Soul Guitar"}
            for _, v in pairs(inventory) do
                for _, weapon in pairs(weapons) do                
                    if v.Name == weapon then
                        l[weapon]:Set("🟢: " .. v.Name.." "..v.Mastery)
                    end
                end
            local Materials = {"Bone", "Ectoplasm", "Fish Tail", "Mystic Droplet", "Mirror Fractal" }
                for _, material in pairs(Materials) do
                    if v.Name == material and v["Count"] > 0 then
                        l[material]:Set(material.." : "..v["Count"])
                    elseif v.Name == material and v["Count"] <= 0 then
                        l[material]:Set(material.." : None")
                    end
                    if v.Name == "Alucard Fragment" then
                        l["CDK Quest"]:Set("Cursed Dual Katana Quest : "..v["Count"].."/6")
                    end
                end
            end      
            l["SpawnPoint"]:Set("Spawn Point : "..Data["SpawnPoint"].Value)
            l["Bounty/Honor"]:Set("Bounty/Honor : "..tostring(LP.leaderstats["Bounty/Honor"].Value):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", ""))
            l["Race"]:Set("Race : "..CheckRace())
            l["Fruit"]:Set("Devil Fruit : " ..getFruit().." "..tostring(getFruitMastery()))
            l["Moon"]:Set("Moon Status : "..CheckMoon())
            for i,v in pairs(Backpack:GetChildren()) do
                if v:IsA("Tool") and string.find(v.Name, "Fruit") then
                    Remote:InvokeServer("StoreFruit",v:GetAttribute("OriginalName"),v)
                end
            end
        end
    end
end)
spawn(function()
    while wait(15) do
        if h["Start Kaitun/Cuttay"] and World1 then
            local table = {
                {Beli = 5000, Buy = {"BuyHaki", "Geppo"}},
                {Beli = 25000, Buy = {"BuyHaki", "Buso"}},
                {Beli = 100000, Buy = {"BuyHaki", "Soru"}},
                {Beli = 750000, Buy = {"KenTalk", "Buy"}}
            }
            for _, v in pairs(table) do
                if Data.Beli.Value == v.Beli then
                    Remote:InvokeServer(v.Buy)
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if Data.Stats.Melee.Level.Value < 2450 and Data.Points.Value > 1 then 
            Remote:InvokeServer("AddPoint","Melee",Data.Points.Value)
        elseif Data.Stats.Melee.Level.Value >= 2450 and Data.Points.Value > 1 and Data.Stats.Defense.Level.Value < 2450 then
           Remote:InvokeServer("AddPoint","Defense",Data.Points.Value)
        elseif Data.Stats.Melee.Level.Value >= 2450 and Data.Points.Value > 1 and Data.Stats.Defense.Level.Value >= 2450 and Data.Stats.Sword.Level.Value < 2450 then
            Remote:InvokeServer("AddPoint","Sword",Data.Points.Value)
        end
        if RS.Assets.GUI.DamageCounter.Enabled == true then
            RS.Assets.GUI.DamageCounter.Enabled = false
        end
        
    end
end)
spawn(function()
    while wait(5) do
        repeat 
            if not LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
            VU:CaptureController()
            VU:SetKeyDown('0x65')
            wait(2)
            VU:SetKeyUp('0x65')
            end
        until LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
    end
end)
spawn(function()
    while wait(5) do
        if World2 then
            if Remote:InvokeServer("LegendarySwordDealer") then
                Remote:InvokeServer("LegendarySwordDealer", "1")
                Remote:InvokeServer("LegendarySwordDealer", "2")
                Remote:InvokeServer("LegendarySwordDealer", "3")
            end
        end
    end
end)
spawn(function()
    while wait(5) do 
        if World2 or World3 then
            if Remote:InvokeServer("ColorsDealer", "1") then
                Remote:InvokeServer("ColorsDealer", "2")
            end
        end
    end
end)