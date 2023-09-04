_G.Setting = {
    UI = {
        ["Logo"] = 14299284116,
        ["Rainbow"] = false,
        ["Size UI"] = UDim2.fromOffset(500, 450),
        ["Main"] = Color3.fromRGB(255, 0, 0),
        ["Background"] = Color3.fromRGB(9, 9, 9),
        ["OuterBorder"] = Color3.fromRGB(120, 42, 42),
        ["InnerBorder"] = Color3.fromRGB(0, 0, 0),
        ["TopGradient"] = Color3.fromRGB(0, 0, 0),
        ["BottomGradient"] = Color3.fromRGB(0, 0, 0),
        ["SectionBackground"] = Color3.fromRGB(13, 13, 13),
        ["Section"] = Color3.fromRGB(255, 255, 255),
        ["OtherElementText"] = Color3.fromRGB(129, 127, 129),
        ["ElementText"] = Color3.fromRGB(255, 0, 0),
        ["ElementBorder"] = Color3.fromRGB(20, 20, 20),
        ["SelectedOption"] = Color3.fromRGB(17, 10, 10),
        ["UnselectedOption"] = Color3.fromRGB(40, 40, 40),
        ["HoveredOptionTop"] = Color3.fromRGB(65, 65, 65),
        ["UnhoveredOptionTop"] = Color3.fromRGB(50, 50, 50),
        ["HoveredOptionBottom"] = Color3.fromRGB(45, 45, 45),
        ["UnhoveredOptionBottom"] = Color3.fromRGB(35, 35, 35),
        ["TabText"] = Color3.fromRGB(255, 255, 255)
    }
}
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KvdzUwU/TrashHub/main/PC/UI.lua"))()
local PepsiUi =
    library:CreateWindow(
    {
        Name = "Jerry Hub - Kaitan Version",
        Theme = true
    }
)
local KaiTun = PepsiUi:CreateTab({Name = "Genaral"})
local KaiTun2 = KaiTun:CreateSection({Name = "Main", Side = "Left"})
KaiTun2:AddToggle(
    {Name = "Start", Value = true, Callback = function(value)
            getgenv().LevelFarm = value
            StopBodyClip(getgenv().LevelFarm)
        end}
)
local KaiTun2 = KaiTun:CreateSection({Name = "Stars Farm", Side = "Left"})
local KaiTun2 = KaiTun:CreateSection({Name = "Main", Side = "Left"})
local KaiTun3 = KaiTun:CreateSection({Name = "Main", Side = "Right"})
local KaiTun6 = KaiTun:CreateSection({Name = "Sword", Side = "Right"})
local KaiTun5 = KaiTun:CreateSection({Name = "Melee", Side = "Left"})
QuestAR = KaiTun:CreateSection({Name = "Quest", Side = "Left"})
Gun = KaiTun:CreateSection({Name = "Gun", Side = "Rght"})
LevelFarmFarm = KaiTun2:AddLabel({Name = "AutoFarm : ❌"})
StastConFig = KaiTun2:AddLabel({Name = "UesConFig : ✅"})
KaiTun2:AddLabel({Name = "Super Fast : ✅"})
KaiTun2:AddLabel({Name = "Bypass : ✅"})
WolrdSet3 = KaiTun2:AddLabel({Name = "World : 1 ❌"})
WolrdSet = KaiTun2:AddLabel({Name = "World : 2 ❌"})
WolrdSet1 = KaiTun2:AddLabel({Name = "World : 3 ❌"})
StastMelee = KaiTun2:AddLabel({Name = ""})
StastDefense = KaiTun2:AddLabel({Name = ""})
StastSword = KaiTun2:AddLabel({Name = ""})
StastGun = KaiTun2:AddLabel({Name = ""})
StastDevilFruit = KaiTun2:AddLabel({Name = ""})
PointsStast = KaiTun2:AddLabel({Name = ""})
PlayerName = KaiTun3:AddLabel({Name = ""})
Health = KaiTun3:AddLabel({Name = ""})
Energy = KaiTun3:AddLabel({Name = ""})
BountyHonorStast = KaiTun3:AddLabel({Name = ""})
LevelStast = KaiTun3:AddLabel({Name = ""})
EXP = KaiTun3:AddLabel({Name = ""})
FragmentsStast = KaiTun3:AddLabel({Name = ""})
BeliStast = KaiTun3:AddLabel({Name = ""})
DevilFruitStast = KaiTun3:AddLabel({Name = ""})
RaceStast = KaiTun3:AddLabel({Name = ""})
Superhuman = KaiTun5:AddLabel({Name = "❌ : Superhuman"})
DeathStep = KaiTun5:AddLabel({Name = "❌ : Death Step"})
SharkmanKarate = KaiTun5:AddLabel({Name = "❌ : Sharkman Karate"})
ElectricClaw = KaiTun5:AddLabel({Name = "❌ : Electric Claw"})
DragonTalon = KaiTun5:AddLabel({Name = "❌ : Dragon Talon"})
GodHuman = KaiTun5:AddLabel({Name = "❌ : God Human"})
Shisui = KaiTun6:AddLabel({Name = "❌ : Shisui"})
Saddi = KaiTun6:AddLabel({Name = "❌ : Saddi"})
Wando = KaiTun6:AddLabel({Name = "❌ : Wando"})
TrueTripleKatana = KaiTun6:AddLabel({Name = "❌ : True Triple Katana"})
Saber = KaiTun6:AddLabel({Name = "❌ : Saber"})
Rengoku = KaiTun6:AddLabel({Name = "❌ : Rengoku"})
MidnightBlade = KaiTun6:AddLabel({Name = "❌ : Midnight Blade"})
DragonTrident = KaiTun6:AddLabel({Name = "❌ : DragonTrident"})
Yama = KaiTun6:AddLabel({Name = "❌ : Yama"})
BuddySword = KaiTun6:AddLabel({Name = "❌ : Buddy Sword"})
Canvander = KaiTun6:AddLabel({Name = "❌ : Canvander"})
TwinHooks = KaiTun6:AddLabel({Name = "❌ : Twin Hooks"})
SpikeyTrident = KaiTun6:AddLabel({Name = "❌ : Spikey Trident"})
HallowScythe = KaiTun6:AddLabel({Name = "❌ : Hallow Scythe"})
DarkDagger = KaiTun6:AddLabel({Name = "❌ : Dark Dagger"})
Tushita = KaiTun6:AddLabel({Name = "❌ : Tushita"})
Kabucha = Gun:AddLabel({Name = "❌ : Kabucha"})
AcidumRifle = Gun:AddLabel({Name = "❌ : Acidum Rifle"})
BizarreRifle = Gun:AddLabel({Name = "❌ : Bizarre Rifle"})
BartiloQuest = QuestAR:AddLabel({Name = "❌ : Bartilo Quest"})
DonSwanQuest = QuestAR:AddLabel({Name = "❌ : Don Swan Quest"})
KillDonSwan = QuestAR:AddLabel({Name = "❌ : Kill Don Swan"})
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    if getgenv().LevelFarm == true then
                        if
                            not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild(
                                "BodyClip"
                            )
                         then
                            local Noclip = Instance.new("BodyVelocity")
                            Noclip.Name = "BodyClip"
                            Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                            Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                            Noclip.Velocity = Vector3.new(0, 0, 0)
                        end
                    end
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                game:GetService("RunService").Stepped:Connect(
                    function()
                        if getgenv().LevelFarm == true then
                            for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
                )
            end
        )
    end
)
game:GetService("UserInputService").WindowFocused:connect(
    function()
        game.RunService:Set3dRenderingEnabled(true)
    end
)
game:GetService("UserInputService").WindowFocusReleased:connect(
    function()
        game.RunService:Set3dRenderingEnabled(false)
    end
)
task.spawn(
    function()
        while true do
            wait()
            _G.rejoin =
                game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(
                function(Kick)
                    if not _G.Rejoin then
                        if
                            Kick.Name == "ErrorPrompt" and Kick:FindFirstChild("MessageArea") and
                                Kick.MessageArea:FindFirstChild("ErrorFrame")
                         then
                            game:GetService("TeleportService"):Teleport(game.PlaceId)
                            wait()
                        end
                    end
                end
            )
        end
    end
)
task.spawn(
    function()
        while wait() do
            if getgenv().LevelFarm then
                pcall(
                    function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3")
                        if _G.AutoBuyLegendarySword_Hop and getgenv().LevelFarm and SecondSea then
                            wait(1)
                            Hop()
                        end
                    end
                )
            end
        end
    end
)
task.spawn(
    function()
        while wait() do
            pcall(
                function()
                    if getgenv().LevelFarm then
                        if game:GetService("Players").localPlayer.Data.Stats.Melee.Level.Value <= 2400 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "AddPoint",
                                "Melee",
                                _G.PointStats
                            )
                        end
                    end
                end
            )
        end
    end
)
task.spawn(
    function()
        while wait() do
            pcall(
                function()
                    if getgenv().LevelFarm then
                        if game:GetService("Players").localPlayer.Data.Stats.Melee.Level.Value == 2400 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "AddPoint",
                                "Defense",
                                _G.PointStats
                            )
                        end
                    end
                end
            )
        end
    end
)
task.spawn(
    function()
        while wait() do
            pcall(
                function()
                    if getgenv().LevelFarm then
                        if
                            game:GetService("Players").localPlayer.Data.Stats.Melee.Level.Value == 2400 and
                                game:GetService("Players").localPlayer.Data.Stats.Defense.Level.Value == 2400
                         then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "AddPoint",
                                "Sword",
                                _G.PointStats
                            )
                        end
                    end
                end
            )
        end
    end
)
task.spawn(
    function()
        while wait() do
            pcall(
                function()
                    if _G.Auto_Gun then
                        if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "AddPoint",
                                "Gun",
                                _G.PointStats
                            )
                        end
                    end
                end
            )
        end
    end
)
task.spawn(
    function()
        while wait() do
            pcall(
                function()
                    if getgenv().LevelFarm then
                        if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "AddPoint",
                                "Demon Fruit",
                                _G.PointStats
                            )
                        end
                    end
                end
            )
        end
    end
)
task.spawn(
    function()
        while wait() do
            pcall(
                function()
                    if getgenv().LevelFarm then
                        for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
                            if v:IsA("Tool") then
                                if string.find(v.Name, "Fruit") then
                                    repeat
                                        wait()
                                        wait(.1)
                                        v.Handle.CFrame =
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *
                                            CFrame.new(0, 10, 0)
                                        wait(.1)
                                        v.Handle.CFrame =
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame *
                                            CFrame.new(0, 2, 0)
                                        wait(1)
                                        firetouchinterest(
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
                                            v.Handle,
                                            0
                                        )
                                        wait(.1)
                                    until not getgenv().LevelFarm or v.Parent == game.Players.LocalPlayer.Character
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
function StopBodyClip(AE)
    if not AE then
        _G.StopTween = true
        wait()
        TweenFarm(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
end
function equipWeapon(ToolSe)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end
function unequip(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    PlayerName:Set("PlayerName : " .. game.Players.localPlayer.Name)
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    BountyHonorStast:Set(
                        "Bounty/Honor : " .. game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].value
                    )
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    PointsStast:Set("Points : " .. game:GetService("Players").localPlayer.Data.Points.value)
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    RaceStast:Set("Race : " .. game:GetService("Players").localPlayer.Data.Race.value)
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    BeliStast:Set("Beli : " .. game:GetService("Players").localPlayer.Data.Beli.value)
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    DevilFruitStast:Set("DevilFruit : " .. game:GetService("Players").localPlayer.Data.DevilFruit.value)
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    LevelStast:Set("Level : " .. game:GetService("Players").localPlayer.Data.Level.value)
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    FragmentsStast:Set("Fragments : " .. game:GetService("Players").localPlayer.Data.Fragments.value)
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    StastMelee:Set("Melee : " .. game:GetService("Players").localPlayer.Data.Stats.Melee.Level.Value)
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    StastDefense:Set(
                        "Defense : " .. game:GetService("Players").localPlayer.Data.Stats.Defense.Level.Value
                    )
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    StastSword:Set("Sword : " .. game:GetService("Players").localPlayer.Data.Stats.Sword.Level.Value)
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    StastGun:Set("Gun : " .. game:GetService("Players").localPlayer.Data.Stats.Gun.Level.Value)
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    StastDevilFruit:Set(
                        "DevilFruit : " .. game:GetService("Players").localPlayer.Data.Stats["Demon Fruit"].Level.Value
                    )
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    if game.PlaceId == 2753915549 then
                        WolrdSet3:Set("World : 1 " .. "✅")
                    end
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    if game.PlaceId == 4442272183 then
                        WolrdSet:Set("World : 2 " .. "✅")
                    end
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    if game.PlaceId == 7449423635 then
                        WolrdSet1:Set("World : 3 " .. "✅")
                    end
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    Health:Set("Health : " .. game.Players.LocalPlayer.Character.Humanoid.Health)
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    Energy:Set("Stamina : " .. game.Players.LocalPlayer.Character.Energy.Value)
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    EXP:Set("EXP : " .. game:GetService("Players").localPlayer.Data.Exp.Value)
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    if getgenv().LevelFarm == false then
                        LevelFarmFarm:Set("AutoFarm : ❌")
                    elseif getgenv().LevelFarm == true then
                        LevelFarmFarm:Set("AutoFarm : ✅")
                    end
                end
            end
        )
    end
)
task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    for i, v in pairs(
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
                    ) do
                        if v.Name == "Saber" then
                            Saber:Set("✅ : Saber")
                        end
                        if v.Name == "Rengoku" then
                            Rengoku:Set("✅ : Rengoku")
                        end
                        if v.Name == "Midnight Blade" then
                            MidnightBlade:Set("✅ : Midnight Blade")
                        end
                        if v.Name == "Dragon Trident" then
                            DragonTrident:Set("✅ : Dragon Trident")
                        end
                        if v.Name == "Yama" then
                            Yama:Set("✅ : Yama")
                        end
                        if v.Name == "Buddy Sword" then
                            BuddySword:Set("✅ : Buddy Sword")
                        end
                        if v.Name == "Canvander" then
                            Canvander:Set("✅ : Canvander")
                        end
                        if v.Name == "Twin Hooks" then
                            TwinHooks:Set("✅ : Twin Hooks")
                        end
                        if v.Name == "Spikey Trident" then
                            SpikeyTrident:Set("✅ : Spikey Trident")
                        end
                        if v.Name == "Hallow Scythe" then
                            HallowScythe:Set("✅ : Hallow Scythe")
                        end
                        if v.Name == "Dark Dagger" then
                            DarkDagger:Set("✅ : Dark Dagger")
                        end
                        if v.Name == "Tushita" then
                            Tushita:Set("✅ : Tushita")
                        end
                    end
                end
            )
        end
    end
)
local LibraryNotify = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
LibraryNotify:Notification(
    {Text = "\67\114\101\97\116\101\32\66\121\32\58\32\65\108\99\104\101\109\121\32\72\117\98", Duration = 12}
)
task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    for i, v in pairs(
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
                    ) do
                        if v.Name == "Kabucha" then
                            Kabucha:Set("✅ : Kabucha")
                        end
                        if v.Name == "Acidum Rifle" then
                            AcidumRifle:Set("✅ : Acidum Rifle")
                        end
                        if v.Name == "Bizarre Rifle" then
                            BizarreRifle:Set("✅ : Bizarre Rifle")
                        end
                    end
                end
            )
        end
    end
)
local LibraryNotify = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
LibraryNotify:Notification(
    {
        Text = "\74\111\105\110\32\68\105\115\99\111\114\100\32\58\32\104\116\116\112\115\58\47\47\100\105\115\99\111\114\100\46\103\103\47\100\85\100\122\90\115\107\66\67\67",
        Duration = 12
    }
)
task.spawn(
    function()
        while task.wait() do
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
                BartiloQuest:Set("✅ : Bartilo Quest")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
            else
                DonSwanQuest:Set("✅ : Don Swan Quest")
            end
            if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
                KillDonSwan:Set("✅ : Kill Don Swan")
            end
        end
    end
)
task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    for i, v in pairs(
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
                    ) do
                        if v.Name == "Shisui" then
                            Shisui:Set("✅ : Shisui")
                        end
                        if v.Name == "Saddi" then
                            Saddi:Set("✅ : Saddi")
                        end
                        if v.Name == "Wando" then
                            Wando:Set("✅ : Wando")
                        end
                        if v.Name == "True Triple Katana" then
                            TrueTripleKatana:Set("✅ : True Triple Katana")
                        end
                    end
                end
            )
        end
    end
)
task.spawn(
    function()
        while task.wait() do
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true) == 1 then
                Superhuman:Set("✅ : Superhuman")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1 then
                DeathStep:Set("✅ : Death Step")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1 then
                SharkmanKarate:Set("✅ : Sharkman Karate")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1 then
                ElectricClaw:Set("✅ : Electric Claw")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
                DragonTalon:Set("✅ : Dragon Talon")
            end
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodHuman", true) == 1 then
                GodHuman:Set("✅ : God Human")
            end
        end
    end
)
task.spawn(
    function()
        while wait() do
            if getgenv().LevelFarm then
                for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    l__EatRemote__245 = v:FindFirstChild("EatRemote", true)
                    if l__EatRemote__245 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "StoreFruit",
                            l__EatRemote__245.Parent:GetAttribute("OriginalName"),
                            game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v.Name)
                        )
                    end
                end
            end
        end
    end
)
task.spawn(
    function()
        while task.wait() do
            if getgenv().FullySuprtHuman then
                if
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or
                        game.Players.LocalPlayer.Character:FindFirstChild("Combat") and
                            game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000
                 then
                    wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")
                 then
                    _G.SelectWeaponHere = "Superhuman"
                end
                if
                    game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or
                        game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or
                        game.Players.LocalPlayer.Character:FindFirstChild("Electro") or
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or
                        game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or
                        game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")
                 then
                    if
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299
                     then
                        _G.SelectWeaponHere = "Black Leg"
                    end
                    if
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299
                     then
                        _G.SelectWeaponHere = "Electro"
                    end
                    if
                        game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299
                     then
                        _G.SelectWeaponHere = "Fishman Karate"
                    end
                    if getgenv().FullySuprtHuman and game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit", (FruitList))
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy")
                        _G.SelectChip = "Flame"
                        _G.Auto_Dungeon = true
                        getgenv().LevelFarm = false
                        _G.AutoBuyChip = true
                        _G.Auto_StartRaid = true
                        _G.AutoSuperhuman = false
                    elseif getgenv().FullySuprtHuman and game.Players.LocalPlayer.Data.Fragments.Value >= 1500 then
                        unequip("Fishman Karate")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BlackbeardReward",
                            "DragonClaw",
                            "1"
                        )
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                            "BlackbeardReward",
                            "DragonClaw",
                            "2"
                        )
                    else
                        _G.Auto_Dungeon = false
                        getgenv().LevelFarm = true
                        _G.AutoBuyChip = false
                        _G.Auto_StartRaid = false
                        _G.AutoSuperhuman = true
                        if
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299
                         then
                            _G.SelectWeaponHere = "Dragon Claw"
                        end
                        wait(0.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end
                end
            end
        end
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    if
                        game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")
                     then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            if _G.Auto_StartRaid then
                                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                                    if SecondSea then
                                        fireclickdetector(
                                            game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector
                                        )
                                    elseif ThirdSea then
                                        fireclickdetector(
                                            game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector
                                        )
                                    end
                                end
                            end
                        end
                    else
                        if _G.AutoBuyChip then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "RaidsNpc",
                                "Select",
                                _G.SelectChip
                            )
                        end
                    end
                end
            end
        )
    end
)
task.spawn(
    function()
        while wait() do
            if _G.AutoSelectDungeon then
                pcall(
                    function()
                        if
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame-Flame") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame-Flame")
                         then
                            _G.SelectChip = "Flame"
                        elseif
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice-Ice") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice-Ice")
                         then
                            _G.SelectChip = "Ice"
                        elseif
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake-Quake") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake-Quake")
                         then
                            _G.SelectChip = "Quake"
                        elseif
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light-Light") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light-Light")
                         then
                            _G.SelectChip = "Light"
                        elseif
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark-Dark") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark-Dark")
                         then
                            _G.SelectChip = "Dark"
                        elseif
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("String-String") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String-String")
                         then
                            _G.SelectChip = "String"
                        elseif
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble-Rumble") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble-Rumble")
                         then
                            _G.SelectChip = "Rumble"
                        elseif
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma-Magma") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma-Magma")
                         then
                            _G.SelectChip = "Magma"
                        elseif
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(
                                    "Human-Human: Buddha Fruit"
                                )
                         then
                            _G.SelectChip = "Human: Buddha"
                        elseif
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand-Sand") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand-Sand")
                         then
                            _G.SelectChip = "Sand"
                        elseif
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird-Bird: Phoenix") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird-Bird: Phoenix")
                         then
                            _G.SelectChip = "Bird: Phoenix"
                        elseif
                            game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough-Dough") or
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough-Dough")
                         then
                            _G.SelectChip = "Dough"
                        else
                            _G.SelectChip = "Flame"
                        end
                    end
                )
            end
        end
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Auto_Dungeon then
                        if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                                if
                                    v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    pcall(
                                        function()
                                            repeat
                                                task.wait()
                                                v.Humanoid.Health = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                sethiddenproperty(
                                                    game:GetService("Players").LocalPlayer,
                                                    "SimulationRadius",
                                                    math.huge
                                                )
                                            until not _G.Auto_Dungeon or not v.Parent or v.Humanoid.Health <= 0
                                        end
                                    )
                                end
                            end
                        end
                    end
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.Auto_Dungeon then
                        if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                            if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                                TweenFarm(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame *
                                        CFrame.new(100, 70, 100)
                                )
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                                TweenFarm(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame *
                                        CFrame.new(100, 70, 100)
                                )
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                                TweenFarm(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame *
                                        CFrame.new(100, 70, 100)
                                )
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                                TweenFarm(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame *
                                        CFrame.new(100, 70, 100)
                                )
                            elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                                TweenFarm(
                                    game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame *
                                        CFrame.new(100, 70, 100)
                                )
                            end
                        end
                    end
                end
            end
        )
    end
)
------Fast
local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]
function GetCurrentBlade()
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then
        return
    end
    while ret.Parent ~= game.Players.LocalPlayer.Character do
        ret = ret.Parent
    end
    return ret
end
function AttackNoCD()
    local AC = CbFw2.activeController
    for i = 1, 1 do
        local bladehit =
            require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(
                function()
                    for k, v in pairs(AC.animator.anims.basic) do
                        v:Play()
                    end
                end
            )
            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer(
                    "weaponChange",
                    tostring(GetCurrentBlade())
                )
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
            end
        end
    end
end
require(game.ReplicatedStorage.Util.CameraShaker):Stop()
task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if getgenv().LevelFarm then
                        if getgenv().LevelFarm then
                            AttackNoCD()
                        end
                    end
                end
            )
        end
    end
)
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(
    function()
        game:GetService("RunService").RenderStepped:Connect(
            function()
                if getgenv().LevelFarm then
                    if typeof(y) == "table" then
                        pcall(
                            function()
                                CameraShaker:Stop()
                                y.activeController.timeToNextAttack = -10
                                y.activeController.timeToNextAttack = 0
                                y.activeController.hitboxMagnitude = 100
                                y.activeController.active = false
                                y.activeController.timeToNextBlock = 0
                                y.activeController.focusStart = 0
                                y.activeController.increment = 0
                                y.activeController.blocking = false
                                y.activeController.attacking = false
                                y.activeController.humanoid.AutoRotate = true
                            end
                        )
                    end
                end
            end
        )
    end
)
spawn(
    function()
        game:GetService("RunService").RenderStepped:Connect(
            function()
                if getgenv().LevelFarm == true then
                    game.Players.LocalPlayer.Character.Stun.Value = 0
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                    game.Players.LocalPlayer.Character.Busy.Value = false
                end
            end
        )
    end
)
--------------Tween
function TweenFarm(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
    pcall(
        function()
            tween =
                game:GetService("TweenService"):Create(
                game.Players.LocalPlayer.Character.HumanoidRootPart,
                TweenInfo.new(Distance / 350, Enum.EasingStyle.Linear),
                {CFrame = Pos}
            )
        end
    )
    tween:Play()
    if Distance <= 350 then
        tween:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
    end
    if _G.StopTween == true then
        tween:Cancel()
        _G.Clip = false
    end
end
function GetDistance(target)
    return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end
-----------Bypass
function ByPass(Position)
    game.Players.LocalPlayer.Character.Head:Destroy()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
    wait(.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
------------------AutoFaarm
task.spawn(
    function()
        while wait() do
            if getgenv().LevelFarm then
                pcall(
                    function()
                        local QuestTitle =
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(QuestTitle, NameMon) then
                            StartMagnet = false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            StartMagnet = false
                            QuestCheck()
                            repeat
                                wait()
                                TweenFarm(CFrameQuest)
                            until (CFrameQuest.Position -
                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                1200 or not getgenv().LevelFarm
                            if
                                (CFrameQuest.Position -
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                    10
                             then
                                wait(1.2)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "StartQuest",
                                    NameQuest,
                                    LevelQuest
                                )
                                wait(0.5)
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            QuestCheck()
                            if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if
                                        v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and
                                            v.Humanoid.Health > 0
                                     then
                                        if v.Name == Mon then
                                            if
                                                string.find(
                                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,
                                                    NameMon
                                                )
                                             then
                                                repeat
                                                    task.wait()
                                                    _G.NotAutoEquip = false
                                                    equip(_G.WeaponMelee)
                                                    AutoHaki()
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                                    TweenFarm(v.HumanoidRootPart.CFrame * CFrame.new(0, 5, 15))
                                                    game:GetService "VirtualUser":CaptureController()
                                                    game:GetService "VirtualUser":Button1Down(Vector2.new(50, 50))
                                                    v.HumanoidRootPart.CanCollide = false
                                                    game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy(

                                                    )
                                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    StartMagnet = true
                                                until not getgenv().LevelFarm or v.Humanoid.Health <= 0 or not v.Parent or
                                                    game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible ==
                                                        false
                                            else
                                                StartMagnet = false
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "AbandonQuest"
                                                )
                                            end
                                        end
                                    end
                                end
                            else
                                StartMagnet = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                                    TweenFarm(
                                        game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame *
                                            CFrame.new(0, 0, 0)
                                    )
                                else
                                    if
                                        (CFrameQuest.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                            200
                                     then
                                        if CFrameMon ~= nil then
                                            TweenFarm(CFrameMon * CFrame.new(0, 0, 0))
                                        else
                                            if OldPos ~= nil then
                                                TweenFarm(OldPos.Position)
                                            end
                                        end
                                    else
                                        StartMagnet = false
                                        TweenFarm(CFrameMon)
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
)
task.spawn(
    function()
        while wait() do
            if getgenv().LevelFarm then
                pcall(
                    function()
                        if game:GetService("Players").LocalPlayer.Data.Level.Value >= 700 and OldWolrd then
                            getgenv().LevelFarm = false
                            if game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                                            if
                                                v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                                    v.Humanoid.Health > 0
                                             then
                                                repeat
                                                    task.wait()
                                                    AutoHaki()
                                                    equip(_G.SelectWeaponHere)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    TweenFarm(v.HumanoidRootPart.CFrame * CFrame.new(0, 0, 35))
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                    sethiddenproperty(
                                                        game:GetService("Players").LocalPlayer,
                                                        "SimulationRadius",
                                                        math.huge
                                                    )
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                        "TravelDressrosa"
                                                    )
                                                until not getgenv().LevelFarm or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                        end
                                    end
                                else
                                    if
                                        game:GetService("ReplicatedStorage"):FindFirstChild(
                                            "Ice Admiral [Lv. 700] [Boss]"
                                        )
                                     then
                                        TweenFarm(
                                            game:GetService("ReplicatedStorage"):FindFirstChild(
                                                "Ice Admiral [Lv. 700] [Boss]"
                                            ).HumanoidRootPart.CFrame * CFrame.new(0, 35, 0)
                                        )
                                    end
                                end
                            else
                                TweenFarm(CFrame.new(4851.732421875, 5.651424884796143, 718.1107788085938))
                                wait(1.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "DressrosaQuestProgress",
                                    "Detective"
                                )
                                wait(.5)
                                equip("Key")
                                TweenFarm(CFrame.new(1348.487060546875, 37.34933853149414, -1326.12158203125))
                            end
                        end
                    end
                )
            end
        end
    end
)
function equip(typ)
    for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if (v:IsA("Tool")) then
            if (v.ToolTip == typ or v.Name == typ) then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
        end
    end
end
-----------------------------other
task.spawn(
    function()
        while task.wait() do
            if game.Players.LocalPlayer.Team == nil then
                pcall(
                    function()
                        if _G.Team == "Pirate" then
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Size =
                                UDim2.new(10000, 1000, 10000, 1000)
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Position =
                                UDim2.new(-4, 0, -5, 0)
                            wait(.5)
                            game:GetService("VirtualInputManager"):SendMouseButtonEvent(
                                605,
                                394,
                                0,
                                true,
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,
                                0
                            )
                            game:GetService("VirtualInputManager"):SendMouseButtonEvent(
                                605,
                                394,
                                0,
                                false,
                                game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton,
                                0
                            )
                        end
                    end
                )
            end
        end
    end
)
task.spawn(
    function()
        while wait() do
            if getgenv().LevelFarm then
                for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                    if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" or v.Name == "Sounds" then
                        v:Destroy()
                    end
                end
            end
        end
    end
)
-------Check
if game.PlaceId == 2753915549 then
    OldWolrd = true
elseif game.PlaceId == 4442272183 then
    SecondSea = true
elseif game.PlaceId == 7449423635 then
    ThirdSea = true
else
    game.Players.LocalPlayer:Kick("You Have Banned")
end
function QuestCheck()
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if OldWolrd then
        if MyLevel == 1 or MyLevel <= 9 then
            Mon = "Bandit [Lv. 5]"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest =
                CFrame.new(
                1059.37195,
                15.4495068,
                1550.4231,
                0.939700544,
                -0,
                -0.341998369,
                0,
                1,
                -0,
                0.341998369,
                0,
                0.939700544
            )
            CFrameMon =
                CFrame.new(
                1059.37195,
                15.4495068,
                1550.4231,
                0.939700544,
                -0,
                -0.341998369,
                0,
                1,
                -0,
                0.341998369,
                0,
                0.939700544
            )
        elseif MyLevel == 10 or MyLevel <= 14 then
            Mon = "Monkey [Lv. 14]"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 15 or MyLevel <= 29 then
            Mon = "Gorilla [Lv. 20]"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon =
                CFrame.new(
                -1301.87988,
                18.6214523,
                -468.544769,
                0.164645091,
                -1.12205412e-09,
                0.986352861,
                -5.18567367e-09,
                1,
                2.00318762e-09,
                -0.986352861,
                -5.44471934e-09,
                0.164645091
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 30 or MyLevel <= 39 then
            Mon = "Pirate [Lv. 35]"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest =
                CFrame.new(
                -1141.07483,
                4.10001802,
                3831.5498,
                0.965929627,
                -0,
                -0.258804798,
                0,
                1,
                -0,
                0.258804798,
                0,
                0.965929627
            )
            CFrameMon =
                CFrame.new(
                -1141.07483,
                4.10001802,
                3831.5498,
                0.965929627,
                -0,
                -0.258804798,
                0,
                1,
                -0,
                0.258804798,
                0,
                0.965929627
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 40 or MyLevel <= 59 then
            Mon = "Brute [Lv. 45]"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest =
                CFrame.new(
                -1141.07483,
                4.10001802,
                3831.5498,
                0.965929627,
                -0,
                -0.258804798,
                0,
                1,
                -0,
                0.258804798,
                0,
                0.965929627
            )
            CFrameMon =
                CFrame.new(
                -1144.44861,
                90.5594559,
                4307.25928,
                -0.998438537,
                0,
                0.0558618344,
                0,
                1,
                0,
                -0.0558618344,
                0,
                -0.998438537
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 60 or MyLevel <= 74 then
            Mon = "Desert Bandit [Lv. 60]"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest =
                CFrame.new(
                894.488647,
                5.14000702,
                4392.43359,
                0.819155693,
                -0,
                -0.573571265,
                0,
                1,
                -0,
                0.573571265,
                0,
                0.819155693
            )
            CFrameMon =
                CFrame.new(
                894.488647,
                5.14000702,
                4392.43359,
                0.819155693,
                -0,
                -0.573571265,
                0,
                1,
                -0,
                0.573571265,
                0,
                0.819155693
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 75 or MyLevel <= 89 then
            Mon = "Desert Officer [Lv. 70]"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest =
                CFrame.new(
                894.488647,
                5.14000702,
                4392.43359,
                0.819155693,
                -0,
                -0.573571265,
                0,
                1,
                -0,
                0.573571265,
                0,
                0.819155693
            )
            CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 90 or MyLevel <= 99 then
            RedeemCode()
            Mon = "Snow Bandit [Lv. 90]"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest =
                CFrame.new(
                1389.74451,
                88.1519318,
                -1298.90796,
                -0.342042685,
                0,
                0.939684391,
                0,
                1,
                0,
                -0.939684391,
                0,
                -0.342042685
            )
            CFrameMon =
                CFrame.new(
                1389.74451,
                88.1519318,
                -1298.90796,
                -0.342042685,
                0,
                0.939684391,
                0,
                1,
                0,
                -0.939684391,
                0,
                -0.342042685
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 100 or MyLevel <= 119 then
            Mon = "Snowman [Lv. 100]"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest =
                CFrame.new(
                1389.74451,
                88.1519318,
                -1298.90796,
                -0.342042685,
                0,
                0.939684391,
                0,
                1,
                0,
                -0.939684391,
                0,
                -0.342042685
            )
            CFrameMon =
                CFrame.new(
                1389.74451,
                88.1519318,
                -1298.90796,
                -0.342042685,
                0,
                0.939684391,
                0,
                1,
                0,
                -0.939684391,
                0,
                -0.342042685
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 120 or MyLevel <= 149 then
            Mon = "Chief Petty Officer [Lv. 120]"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 150 or MyLevel <= 174 then
            Mon = "Sky Bandit [Lv. 150]"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest =
                CFrame.new(
                -4839.53027,
                716.368591,
                -2619.44165,
                0.866007268,
                0,
                0.500031412,
                0,
                1,
                0,
                -0.500031412,
                0,
                0.866007268
            )
            CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 175 or MyLevel <= 189 then
            Mon = "Dark Master [Lv. 175]"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest =
                CFrame.new(
                -4839.53027,
                716.368591,
                -2619.44165,
                0.866007268,
                0,
                0.500031412,
                0,
                1,
                0,
                -0.500031412,
                0,
                0.866007268
            )
            CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 190 or MyLevel <= 209 then
            Mon = "Prisoner [Lv. 190]"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest =
                CFrame.new(
                5308.93115,
                1.65517521,
                475.120514,
                -0.0894274712,
                -5.00292918e-09,
                -0.995993316,
                1.60817859e-09,
                1,
                -5.16744869e-09,
                0.995993316,
                -2.06384709e-09,
                -0.0894274712
            )
            CFrameMon =
                CFrame.new(
                5308.93115,
                1.65517521,
                475.120514,
                -0.0894274712,
                -5.00292918e-09,
                -0.995993316,
                1.60817859e-09,
                1,
                -5.16744869e-09,
                0.995993316,
                -2.06384709e-09,
                -0.0894274712
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 210 or MyLevel <= 249 then
            Mon = "Dangerous Prisoner [Lv. 210]"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest =
                CFrame.new(
                5308.93115,
                1.65517521,
                475.120514,
                -0.0894274712,
                -5.00292918e-09,
                -0.995993316,
                1.60817859e-09,
                1,
                -5.16744869e-09,
                0.995993316,
                -2.06384709e-09,
                -0.0894274712
            )
            CFrameMon =
                CFrame.new(
                5308.93115,
                1.65517521,
                475.120514,
                -0.0894274712,
                -5.00292918e-09,
                -0.995993316,
                1.60817859e-09,
                1,
                -5.16744869e-09,
                0.995993316,
                -2.06384709e-09,
                -0.0894274712
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 250 or MyLevel <= 299 then
            Mon = "Toga Warrior [Lv. 250]"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest =
                CFrame.new(
                -1580.04663,
                6.35000277,
                -2986.47534,
                -0.515037298,
                0,
                -0.857167721,
                0,
                1,
                0,
                0.857167721,
                0,
                -0.515037298
            )
            CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474)
        elseif MyLevel == 275 or MyLevel <= 299 then ----มอนไม่เกิด
            Mon = "Gladiator [Lv. 275]"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest =
                CFrame.new(
                -1580.04663,
                6.35000277,
                -2986.47534,
                -0.515037298,
                0,
                -0.857167721,
                0,
                1,
                0,
                0.857167721,
                0,
                -0.515037298
            )
            CFrameMon =
                CFrame.new(
                -1412.88586,
                7.44255638,
                -3270.89868,
                0.540070057,
                0,
                0.841620088,
                0,
                1,
                0,
                -0.841620088,
                0,
                0.540070057
            )
        elseif MyLevel == 300 or MyLevel <= 324 then
            Mon = "Military Soldier [Lv. 300]"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest =
                CFrame.new(
                -5313.37012,
                10.9500084,
                8515.29395,
                -0.499959469,
                0,
                0.866048813,
                0,
                1,
                0,
                -0.866048813,
                0,
                -0.499959469
            )
            CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 325 or MyLevel <= 374 then
            Mon = "Military Spy [Lv. 325]"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest =
                CFrame.new(
                -5313.37012,
                10.9500084,
                8515.29395,
                -0.499959469,
                0,
                0.866048813,
                0,
                1,
                0,
                -0.866048813,
                0,
                -0.499959469
            )
            CFrameMon =
                CFrame.new(
                -5926.0625,
                57.0983391,
                8898.3877,
                0.820648372,
                -1.39857292e-09,
                -0.571433485,
                5.01257647e-10,
                1,
                -1.72761416e-09,
                0.571433485,
                1.13132836e-09,
                0.820648372
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 375 or MyLevel <= 399 then
            Mon = "Fishman Warrior [Lv. 375]"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61163.8515625, 5.3073043823242, 1819.7841796875)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                    "requestEntrance",
                    Vector3.new(61163.8515625, 11.6796875, 1819.7841796875)
                )
            end
        elseif MyLevel == 400 or MyLevel <= 449 then
            Mon = "Fishman Commando [Lv. 400]"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon =
                CFrame.new(
                61909.7539,
                108.484055,
                1561.8739,
                -0.276268601,
                7.58251204e-08,
                0.961080492,
                5.23033243e-08,
                1,
                -6.38607887e-08,
                -0.961080492,
                3.26249712e-08,
                -0.276268601
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 450 or MyLevel <= 474 then
            Mon = "God's Guard [Lv. 450]"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest =
                CFrame.new(
                -4721.88867,
                843.874695,
                -1949.96643,
                0.996191859,
                -0,
                -0.0871884301,
                0,
                1,
                -0,
                0.0871884301,
                0,
                0.996191859
            )
            CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 475 or MyLevel <= 524 then
            Mon = "Shanda [Lv. 475]"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest =
                CFrame.new(
                -7859.09814,
                5544.19043,
                -381.476196,
                -0.422592998,
                0,
                0.906319618,
                0,
                1,
                0,
                -0.906319618,
                0,
                -0.422592998
            )
            CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 525 or MyLevel <= 549 then
            Mon = "Royal Squad [Lv. 525]"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 550 or MyLevel <= 624 then
            Mon = "Royal Soldier [Lv. 550]"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 625 or MyLevel <= 649 then
            Mon = "Galley Pirate [Lv. 625]"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest =
                CFrame.new(
                5259.81982,
                37.3500175,
                4050.0293,
                0.087131381,
                0,
                0.996196866,
                0,
                1,
                0,
                -0.996196866,
                0,
                0.087131381
            )
            CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel >= 650 then
            Mon = "Galley Captain [Lv. 650]"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest =
                CFrame.new(
                5259.81982,
                37.3500175,
                4050.0293,
                0.087131381,
                0,
                0.996196866,
                0,
                1,
                0,
                -0.996196866,
                0,
                0.087131381
            )
            CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        end
    elseif SecondSea then
        if MyLevel == 700 or MyLevel <= 724 then
            Mon = "Raider [Lv. 700]"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest =
                CFrame.new(
                -429.543518,
                71.7699966,
                1836.18188,
                -0.22495985,
                0,
                -0.974368095,
                0,
                1,
                0,
                0.974368095,
                0,
                -0.22495985
            )
            CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 725 or MyLevel <= 774 then
            Mon = "Mercenary [Lv. 725]"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest =
                CFrame.new(
                -429.543518,
                71.7699966,
                1836.18188,
                -0.22495985,
                0,
                -0.974368095,
                0,
                1,
                0,
                0.974368095,
                0,
                -0.22495985
            )
            CFrameMon =
                CFrame.new(
                -960.12384,
                80.2886276,
                1691.82996,
                0.920708776,
                8.58963034e-09,
                -0.390250295,
                -3.26311032e-08,
                1,
                -5.49752599e-08,
                0.390250295,
                6.33505053e-08,
                0.920708776
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 775 or MyLevel <= 799 then
            Mon = "Swan Pirate [Lv. 775]"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest =
                CFrame.new(
                638.43811,
                71.769989,
                918.282898,
                0.139203906,
                0,
                0.99026376,
                0,
                1,
                0,
                -0.99026376,
                0,
                0.139203906
            )
            CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 800 or MyLevel <= 874 then
            Mon = "Factory Staff [Lv. 800]"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest =
                CFrame.new(
                632.698608,
                73.1055908,
                918.666321,
                -0.0319722369,
                8.96074881e-10,
                -0.999488771,
                1.36326533e-10,
                1,
                8.92172336e-10,
                0.999488771,
                -1.07732087e-10,
                -0.0319722369
            )
            CFrameMon =
                CFrame.new(
                506.323364,
                72.9597626,
                9.77466297,
                -0.339674324,
                -7.69937536e-09,
                -0.940543115,
                -3.40559581e-08,
                1,
                4.11311296e-09,
                0.940543115,
                3.34282184e-08,
                -0.339674324
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 875 or MyLevel <= 899 then
            Mon = "Marine Lieutenant [Lv. 875]"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest =
                CFrame.new(
                -2440.79639,
                71.7140732,
                -3216.06812,
                0.866007268,
                0,
                0.500031412,
                0,
                1,
                0,
                -0.500031412,
                0,
                0.866007268
            )
            CFrameMon =
                CFrame.new(
                -2682.18726,
                198.169113,
                -2991.05737,
                0.600202382,
                6.21085405e-09,
                0.799848199,
                -5.2549618e-09,
                1,
                -3.82174248e-09,
                -0.799848199,
                -1.9093529e-09,
                0.600202382
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 900 or MyLevel <= 949 then
            Mon = "Marine Captain [Lv. 900]"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest =
                CFrame.new(
                -2440.79639,
                71.7140732,
                -3216.06812,
                0.866007268,
                0,
                0.500031412,
                0,
                1,
                0,
                -0.500031412,
                0,
                0.866007268
            )
            CFrameMon =
                CFrame.new(
                -1860.27209,
                197.220596,
                -3219.6062,
                0.816204965,
                2.98379241e-08,
                -0.577762485,
                -9.47813916e-08,
                1,
                -8.22537274e-08,
                0.577762485,
                1.21897031e-07,
                0.816204965
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 950 or MyLevel <= 974 then
            Mon = "Zombie [Lv. 950]"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest =
                CFrame.new(
                -5497.06152,
                47.5923004,
                -795.237061,
                -0.29242146,
                0,
                -0.95628953,
                0,
                1,
                0,
                0.95628953,
                0,
                -0.29242146
            )
            CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 975 or MyLevel <= 999 then
            Mon = "Vampire [Lv. 975]"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest =
                CFrame.new(
                -5497.06152,
                47.5923004,
                -795.237061,
                -0.29242146,
                0,
                -0.95628953,
                0,
                1,
                0,
                0.95628953,
                0,
                -0.29242146
            )
            CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1000 or MyLevel <= 1049 then
            Mon = "Snow Trooper [Lv. 1000]"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest =
                CFrame.new(
                609.858826,
                400.119904,
                -5372.25928,
                -0.374604106,
                0,
                0.92718488,
                0,
                1,
                0,
                -0.92718488,
                0,
                -0.374604106
            )
            CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1050 or MyLevel <= 1099 then
            Mon = "Winter Warrior [Lv. 1050]"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest =
                CFrame.new(
                609.858826,
                400.119904,
                -5372.25928,
                -0.374604106,
                0,
                0.92718488,
                0,
                1,
                0,
                -0.92718488,
                0,
                -0.374604106
            )
            CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1100 or MyLevel <= 1124 then
            Mon = "Lab Subordinate [Lv. 1100]"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest =
                CFrame.new(
                -6064.06885,
                15.2422857,
                -4902.97852,
                0.453972578,
                -0,
                -0.891015649,
                0,
                1,
                -0,
                0.891015649,
                0,
                0.453972578
            )
            CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1125 or MyLevel <= 1174 then
            Mon = "Horned Warrior [Lv. 1125]"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest =
                CFrame.new(
                -6064.06885,
                15.2422857,
                -4902.97852,
                0.453972578,
                -0,
                -0.891015649,
                0,
                1,
                -0,
                0.891015649,
                0,
                0.453972578
            )
            CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1175 or MyLevel <= 1199 then
            Mon = "Magma Ninja [Lv. 1175]"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest =
                CFrame.new(
                -5428.03174,
                15.0622921,
                -5299.43457,
                -0.882952213,
                0,
                0.469463557,
                0,
                1,
                0,
                -0.469463557,
                0,
                -0.882952213
            )
            CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1200 or MyLevel <= 1249 then
            Mon = "Lava Pirate [Lv. 1200]"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest =
                CFrame.new(
                -5428.03174,
                15.0622921,
                -5299.43457,
                -0.882952213,
                0,
                0.469463557,
                0,
                1,
                0,
                -0.469463557,
                0,
                -0.882952213
            )
            CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1250 or MyLevel <= 1274 then
            Mon = "Ship Deckhand [Lv. 1250]"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMon =
                CFrame.new(
                1181.84875,
                130.485107,
                33005.4961,
                -0.946877539,
                -7.47373434e-08,
                -0.321594298,
                -7.391602e-08,
                1,
                -1.47637005e-08,
                0.321594298,
                9.79155601e-09,
                -0.946877539
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1275 or MyLevel <= 1299 then
            Mon = "Ship Engineer [Lv. 1275]"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMon =
                CFrame.new(
                919.250427,
                43.544014,
                32781.9922,
                0.999619186,
                4.03968698e-08,
                -0.0275939237,
                -3.75240887e-08,
                1,
                1.04626984e-07,
                0.0275939237,
                -1.03551706e-07,
                0.999619186
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1300 or MyLevel <= 1324 then
            Mon = "Ship Steward [Lv. 1300]"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon =
                CFrame.new(
                917.478882,
                129.556,
                33441.2227,
                -0.999965012,
                -1.84493896e-08,
                -0.00836863648,
                -1.84426696e-08,
                1,
                -8.80260864e-10,
                0.00836863648,
                -7.2589007e-10,
                -0.999965012
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1325 or MyLevel <= 1349 then
            Mon = "Ship Officer [Lv. 1325]"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            FrameMon =
                CFrame.new(
                1201.18286,
                181.149124,
                33308.0508,
                0.0748318806,
                -7.14178512e-08,
                -0.997196138,
                2.97970733e-08,
                1,
                -6.93826223e-08,
                0.997196138,
                -2.45214959e-08,
                0.0748318806
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1350 or MyLevel <= 1374 then
            Mon = "Arctic Warrior [Lv. 1350]"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest =
                CFrame.new(
                5667.6582,
                26.7997818,
                -6486.08984,
                -0.933587909,
                0,
                -0.358349502,
                0,
                1,
                0,
                0.358349502,
                0,
                -0.933587909
            )
            CFrameMon =
                CFrame.new(
                5667.6582,
                26.7997818,
                -6486.08984,
                -0.933587909,
                0,
                -0.358349502,
                0,
                1,
                0,
                0.358349502,
                0,
                -0.933587909
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1375 or MyLevel <= 1424 then
            Mon = "Snow Lurker [Lv. 1375]"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest =
                CFrame.new(
                5667.6582,
                26.7997818,
                -6486.08984,
                -0.933587909,
                0,
                -0.358349502,
                0,
                1,
                0,
                0.358349502,
                0,
                -0.933587909
            )
            CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1425 or MyLevel <= 1449 then
            Mon = "Sea Soldier [Lv. 1425]"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest =
                CFrame.new(
                -3054.44458,
                235.544281,
                -10142.8193,
                0.990270376,
                -0,
                -0.13915664,
                0,
                1,
                -0,
                0.13915664,
                0,
                0.990270376
            )
            CFrameMon = CFrame.new(-3366.32958984375, 47.21970748901367, -9704.3505859375)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter [Lv. 1450]"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest =
                CFrame.new(
                -3054.44458,
                235.544281,
                -10142.8193,
                0.990270376,
                -0,
                -0.13915664,
                0,
                1,
                -0,
                0.13915664,
                0,
                0.990270376
            )
            CFrameMon = CFrame.new(-3436.7727050781, 290.52191162109, -10503.438476563)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        end
    elseif ThirdSea then
        if MyLevel == 1500 or MyLevel <= 1524 then
            Mon = "Pirate Millionaire [Lv. 1500]"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest =
                CFrame.new(
                -290.074677,
                42.9034653,
                5581.58984,
                0.965929627,
                -0,
                -0.258804798,
                0,
                1,
                -0,
                0.258804798,
                0,
                0.965929627
            )
            CFrameMon =
                CFrame.new(
                -290.674988,
                34.7821121,
                5417.57666,
                -0.959131062,
                7.87279077e-08,
                0.282962203,
                6.99472977e-08,
                1,
                -4.11336849e-08,
                -0.282962203,
                -1.96601544e-08,
                -0.959131062
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1525 or MyLevel <= 1574 then
            Mon = "Pistol Billionaire [Lv. 1525]"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest =
                CFrame.new(
                -290.074677,
                42.9034653,
                5581.58984,
                0.965929627,
                -0,
                -0.258804798,
                0,
                1,
                -0,
                0.258804798,
                0,
                0.965929627
            )
            CFrameMon =
                CFrame.new(
                -387.624237,
                74.2720413,
                5851.84473,
                -0.990750372,
                -6.79122536e-08,
                0.135697171,
                -7.2516066e-08,
                1,
                -2.89841076e-08,
                -0.135697171,
                -3.85562409e-08,
                -0.990750372
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1575 or MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior [Lv. 1575]"
            LevelQuest = 1
            NameQuest = "AmazonQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest =
                CFrame.new(
                5832.83594,
                51.6806107,
                -1101.51563,
                0.898790359,
                -0,
                -0.438378751,
                0,
                1,
                -0,
                0.438378751,
                0,
                0.898790359
            )
            CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1600 or MyLevel <= 1624 then
            Mon = "Dragon Crew Archer [Lv. 1600]"
            NameQuest = "AmazonQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
            CFrameMon =
                CFrame.new(
                6788.97461,
                462.341248,
                164.233673,
                -0.711975694,
                1.98202414e-08,
                0.702204108,
                -1.45830699e-08,
                1,
                -4.30117559e-08,
                -0.702204108,
                -4.08636183e-08,
                -0.711975694
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1625 or MyLevel <= 1649 then
            Mon = "Female Islander [Lv. 1625]"
            NameQuest = "AmazonQuest2"
            LevelQuest = 1
            NameMon = "Female Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon =
                CFrame.new(
                5763.98682,
                848.118103,
                1082.43127,
                0.986172736,
                2.65753979e-08,
                0.165720671,
                -2.36233451e-08,
                1,
                -1.97844852e-08,
                -0.165720671,
                1.55960436e-08,
                0.986172736
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1650 or MyLevel <= 1699 then
            Mon = "Giant Islander [Lv. 1650]"
            NameQuest = "AmazonQuest2"
            LevelQuest = 2
            NameMon = "Giant Islander"
            CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
            CFrameMon =
                CFrame.new(
                4784.24561,
                708.376465,
                466.297485,
                0.99801594,
                3.11927195e-09,
                0.0629619658,
                -5.34848299e-09,
                1,
                3.52371394e-08,
                -0.0629619658,
                -3.55039766e-08,
                0.99801594
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1700 or MyLevel <= 1724 then
            Mon = "Marine Commodore [Lv. 1700]"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest =
                CFrame.new(
                2180.54126,
                27.8156815,
                -6741.5498,
                -0.965929747,
                0,
                0.258804798,
                0,
                1,
                0,
                -0.258804798,
                0,
                -0.965929747
            )
            PosMon = Vector3.new(2490.0844726563, 190.4232635498, -7160.0502929688)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1725 or MyLevel <= 1774 then
            Mon = "Marine Rear Admiral [Lv. 1725]"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1775 or MyLevel <= 1799 then
            Mon = "Fishman Raider [Lv. 1775]"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest =
                CFrame.new(
                -10581.6563,
                330.872955,
                -8761.18652,
                -0.882952213,
                0,
                0.469463557,
                0,
                1,
                0,
                -0.469463557,
                0,
                -0.882952213
            )
            CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1800 or MyLevel <= 1824 then
            Mon = "Fishman Captain [Lv. 1800]"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest =
                CFrame.new(
                -10581.6563,
                330.872955,
                -8761.18652,
                -0.882952213,
                0,
                0.469463557,
                0,
                1,
                0,
                -0.469463557,
                0,
                -0.882952213
            )
            CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1825 or MyLevel <= 1849 then
            Mon = "Forest Pirate [Lv. 1825]"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest =
                CFrame.new(
                -13234.04,
                331.488495,
                -7625.40137,
                0.707134247,
                -0,
                -0.707079291,
                0,
                1,
                -0,
                0.707079291,
                0,
                0.707134247
            )
            CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1850 or MyLevel <= 1899 then
            Mon = "Mythological Pirate [Lv. 1850]"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest =
                CFrame.new(
                -13234.04,
                331.488495,
                -7625.40137,
                0.707134247,
                -0,
                -0.707079291,
                0,
                1,
                -0,
                0.707079291,
                0,
                0.707134247
            )
            CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1900 or MyLevel <= 1924 then
            Mon = "Jungle Pirate [Lv. 1900]"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest =
                CFrame.new(
                -12680.3818,
                389.971039,
                -9902.01953,
                -0.0871315002,
                0,
                0.996196866,
                0,
                1,
                0,
                -0.996196866,
                0,
                -0.0871315002
            )
            FrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1925 or MyLevel <= 1974 then
            Mon = "Musketeer Pirate [Lv. 1925]"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest =
                CFrame.new(
                -12680.3818,
                389.971039,
                -9902.01953,
                -0.0871315002,
                0,
                0.996196866,
                0,
                1,
                0,
                -0.996196866,
                0,
                -0.0871315002
            )
            CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 1975 or MyLevel <= 1999 then
            Mon = "Reborn Skeleton [Lv. 1975]"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8817.880859375, 191.16761779785, 6298.6557617188)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2000 or MyLevel <= 2024 then
            Mon = "Living Zombie [Lv. 2000]"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10125.234375, 183.94705200195, 6242.013671875)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2025 or MyLevel <= 2049 then
            Mon = "Demonic Soul [Lv. 2025]"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9712.03125, 204.69589233398, 6193.322265625)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2050 or MyLevel <= 2074 then
            Mon = "Posessed Mummy [Lv. 2050]"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9545.7763671875, 69.619895935059, 6339.5615234375)
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2075 or MyLevel <= 2099 then
            Mon = "Peanut Scout [Lv. 2075]"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon =
                CFrame.new(
                -2265.89014,
                89.7506104,
                -10261.2197,
                -0.809553444,
                -9.26727282e-08,
                0.587046146,
                -5.44419549e-08,
                1,
                8.27857534e-08,
                -0.587046146,
                3.50595535e-08,
                -0.809553444
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2100 or MyLevel <= 2124 then
            Mon = "Peanut President [Lv. 2100]"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon =
                CFrame.new(
                -2062.11792,
                86.0444489,
                -10481.1445,
                0.834163189,
                -9.79785408e-09,
                -0.551517665,
                -2.60617616e-09,
                1,
                -2.17070646e-08,
                0.551517665,
                1.95445864e-08,
                0.834163189
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2125 or MyLevel <= 2149 then
            Mon = "Ice Cream Chef [Lv. 2125]"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon =
                CFrame.new(
                -875.441345,
                107.871437,
                -11253.3691,
                0.630182087,
                5.98710486e-08,
                0.776447415,
                -6.03229751e-08,
                1,
                -2.81494827e-08,
                -0.776447415,
                -2.90983202e-08,
                0.63018208
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2150 or MyLevel <= 2199 then
            Mon = "Ice Cream Commander [Lv. 2150]"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon =
                CFrame.new(
                -643.3078,
                140.913528,
                -11334.7109,
                -0.996822715,
                -9.07818087e-09,
                0.0796525627,
                -1.43212509e-08,
                1,
                -6.52529906e-08,
                -0.0796525627,
                -6.61863808e-08,
                -0.996822715
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2200 or MyLevel <= 2224 then
            Mon = "Cookie Crafter [Lv. 2200]"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest =
                CFrame.new(
                -2021.32007,
                37.7982254,
                -12028.7295,
                0.957576931,
                -8.80302053e-08,
                0.288177818,
                6.9301187e-08,
                1,
                7.51931211e-08,
                -0.288177818,
                -5.2032135e-08,
                0.957576931
            )
            CFrameMon =
                CFrame.new(
                -2437.66064,
                133.07428,
                -12122.8721,
                0.215197399,
                2.05706883e-08,
                -0.976570547,
                -6.6551344e-08,
                1,
                6.39893472e-09,
                0.976570547,
                6.36150475e-08,
                0.215197399
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2225 or MyLevel <= 2249 then
            Mon = "Cake Guard [Lv. 2225]"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest =
                CFrame.new(
                -2021.32007,
                37.7982254,
                -12028.7295,
                0.957576931,
                -8.80302053e-08,
                0.288177818,
                6.9301187e-08,
                1,
                7.51931211e-08,
                -0.288177818,
                -5.2032135e-08,
                0.957576931
            )
            CFrameMon =
                CFrame.new(
                -1595.00916,
                44.7149811,
                -12252.0547,
                -0.998557925,
                -6.0718726e-08,
                -0.0536852553,
                -5.64001539e-08,
                1,
                -8.19574169e-08,
                0.0536852553,
                -7.88113681e-08,
                -0.998557925
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2250 or MyLevel <= 2274 then
            Mon = "Baking Staff [Lv. 2250]"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest =
                CFrame.new(
                -1927.91602,
                37.7981339,
                -12842.5391,
                -0.96804446,
                4.22142143e-08,
                0.250778586,
                4.74911062e-08,
                1,
                1.49904711e-08,
                -0.250778586,
                2.64211941e-08,
                -0.96804446
            )
            CFrameMon =
                CFrame.new(
                -1817.20581,
                93.8077316,
                -12885.6309,
                -0.696141601,
                7.12665269e-08,
                0.717904449,
                4.05417566e-08,
                1,
                -5.99574506e-08,
                -0.717904449,
                -1.26337669e-08,
                -0.696141601
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2274 or MyLevel <= 2300 then
            Mon = "Head Baker [Lv. 2275]"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest =
                CFrame.new(
                -1927.91602,
                37.7981339,
                -12842.5391,
                -0.96804446,
                4.22142143e-08,
                0.250778586,
                4.74911062e-08,
                1,
                1.49904711e-08,
                -0.250778586,
                2.64211941e-08,
                -0.96804446
            )
            CFrameMon =
                CFrame.new(
                -2263.37744,
                156.999985,
                -12776,
                0.945995748,
                2.16281637e-09,
                0.324179053,
                -1.23387056e-09,
                1,
                -3.0710805e-09,
                -0.324179053,
                2.50523402e-09,
                0.945995748
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2301 or MyLevel <= 2324 then
            Mon = "Cocoa Warrior [Lv. 2300]"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            CFrameMon =
                CFrame.new(
                -103.987442,
                141.551514,
                -12260.2188,
                0.589523733,
                -3.54913752e-08,
                -0.80775106,
                4.28455316e-08,
                1,
                -1.26684059e-08,
                0.80775106,
                -2.71401959e-08,
                0.589523733
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2325 or MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler [Lv. 2325]"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(231.75, 23.9003029, -12200.292, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            CFrameMon =
                CFrame.new(
                617.304688,
                80.6076355,
                -12580.6494,
                -0.485228658,
                3.42073503e-09,
                -0.874387324,
                -4.0368306e-08,
                1,
                2.63139608e-08,
                0.874387324,
                4.80658215e-08,
                -0.485228658
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2350 or MyLevel <= 2374 then
            Mon = "Sweet Thief [Lv. 2350]"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest =
                CFrame.new(
                151.198242,
                23.8907146,
                -12774.6172,
                0.422592998,
                0,
                0.906319618,
                0,
                1,
                0,
                -0.906319618,
                0,
                0.422592998
            )
            CFrameMon =
                CFrame.new(
                72.062767,
                77.630722,
                -12640.4287,
                -0.62450999,
                -9.80953416e-08,
                0.781016827,
                1.42118917e-09,
                1,
                1.26735927e-07,
                -0.781016827,
                8.02578199e-08,
                -0.62450999
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        elseif MyLevel == 2375 or MyLevel <= 2400 then
            Mon = "Candy Rebel [Lv. 2375]"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest =
                CFrame.new(
                151.198242,
                23.8907146,
                -12774.6172,
                0.422592998,
                0,
                0.906319618,
                0,
                1,
                0,
                -0.906319618,
                0,
                0.422592998
            )
            CFrameMon =
                CFrame.new(
                420.127747,
                109.63044,
                -12989.6035,
                0.0957952142,
                3.10210027e-08,
                0.995401084,
                -9.46955225e-09,
                1,
                -3.02529948e-08,
                -0.995401084,
                -6.52791066e-09,
                0.0957952142
            )
            if
                getgenv().LevelFarm and
                    (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >
                        1200
             then
                ByPass(CFrameQuest)
                local LibraryNotify =
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/luable/main/notify.lua"))()
                LibraryNotify:Notification({Text = "Jerry Hub : Farming...", Duration = 1})
            end
        end
    end
end

----BringMons
task.spawn(
    function()
        while task.wait() do
            pcall(
                function()
                    if getgenv().LevelFarm then
                        QuestCheck()
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if
                                getgenv().LevelFarm and StartMagnet and v.Name == Mon and
                                    (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or
                                        Mon == "Dragon Crew Warrior [Lv. 1575]" or
                                        Mon == "Dragon Crew Archer [Lv. 1600]" or
                                        Mon == "Head Baker [Lv. 2275]" or
                                        Mon == "Baking Staff [Lv. 2250]" or
                                        Mon == "Cake Guard [Lv. 2225]") and
                                    v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0 and
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        220
                             then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            elseif
                                getgenv().LevelFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0 and
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        275
                             then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                            if
                                _G.AutoFarmSword and StartMagnet and v.Name == Mon and
                                    (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or
                                        Mon == "Dragon Crew Warrior [Lv. 1575]" or
                                        Mon == "Dragon Crew Archer [Lv. 1600]" or
                                        Mon == "Head Baker [Lv. 2275]" or
                                        Mon == "Baking Staff [Lv. 2250]" or
                                        Mon == "Cake Guard [Lv. 2225]") and
                                    v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0 and
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        220
                             then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            elseif
                                _G.AutoFarmSword and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and
                                    v:FindFirstChild("HumanoidRootPart") and
                                    v.Humanoid.Health > 0 and
                                    (v.HumanoidRootPart.Position -
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=
                                        275
                             then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                            if _G.AutoEctoplasm and StartEctoplasmMagnet then
                                if
                                    string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0 and
                                        (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= 250
                                 then
                                    v.HumanoidRootPart.CFrame = EctoplasmMon
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoRengoku and StartRengokuMagnet then
                                if
                                    (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and
                                        (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= 250 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = RengokuMon
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
                                if
                                    v.Name == "Forest Pirate [Lv. 1825]" and
                                        (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 250 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = MusketeerHatMon
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Auto_EvoRace and StartEvoMagnet then
                                if
                                    v.Name == "Zombie [Lv. 950]" and
                                        (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= 250 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonEvo
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoBartilo and AutoBartiloBring then
                                if
                                    v.Name == "Swan Pirate [Lv. 775]" and
                                        (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 250 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBarto
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
                                if v.Name == Mon then
                                    if
                                        (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 225 and
                                            v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                end
                            end
                            if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                                if v.Name == "Monkey [Lv. 14]" then
                                    if
                                        (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and
                                            v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                elseif v.Name == "Factory Staff [Lv. 800]" then
                                    if
                                        (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and
                                            v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                elseif v.Name == Mon then
                                    if
                                        (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and
                                            v:FindFirstChild("Humanoid") and
                                            v:FindFirstChild("HumanoidRootPart") and
                                            v.Humanoid.Health > 0
                                     then
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(
                                            game:GetService("Players").LocalPlayer,
                                            "SimulationRadius",
                                            math.huge
                                        )
                                    end
                                end
                            end
                            if _G.AutoGodHuman and StartMagnetAutoGodHuman then
                                if
                                    v.Name == "Dragon Crew Warrior [Lv. 1575]" and
                                        (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoFarmMoney and StartMagnetMoney then
                                if
                                    (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or
                                        v.Name == "Baking Staff [Lv. 2250]" or
                                        v.Name == "Head Baker [Lv. 2275]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoFish and StartMagnetAutoFish then
                                if
                                    (v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoMagma and StartMagnetAutoMagma then
                                if
                                    (v.Name == "Magma Ninja [Lv. 1175]" or v.Name == "Lava Pirate [Lv. 1200]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Scrap_Metal2 and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Mercenary [Lv. 725]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Radioactive_Meterial and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Factory Staff [Lv. 800]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Leather2 and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Marine Captain [Lv. 900]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Vampire_Fang and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Vampire [Lv. 975]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Gunpowder and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Pistol Billionaire [Lv. 1525]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Scrap_Metal and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Pirate Millionaire [Lv. 1500]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Mini_Tusk and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Mythological Pirate [Lv. 1850]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Leather1 and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Pirate [Lv. 35]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Scrap_Metal1 and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Brute [Lv. 45]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Angel_Wings and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Shanda [Lv. 475]" or v.Name == "Royal Squad [Lv. 525]" or
                                        v.Name == "Royal Soldier [Lv. 550]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Fish_Tail and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Fishman Warrior [Lv. 375]" or v.Name == "Fishman Commando [Lv. 400]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Magma_Ore and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Military Soldier [Lv. 300]" or v.Name == "Military Spy [Lv. 325]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Demonic_wisp and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Demonic Soul [Lv. 2025]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Leather and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Forest Pirate [Lv. 1825]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Cocoa and StartMagnetrawmaterial then
                                if
                                    (v.Name == "Chocolate Bar Battler [Lv. 2325]" or
                                        v.Name == "Cocoa Warrior [Lv. 2300]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.Mystic and StartMagnetMystic then
                                if
                                    (v.Name == "Sea Soldier [Lv. 1425]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoFarmBone and StartMagnetBoneMon then
                                if
                                    (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or
                                        v.Name == "Demonic Soul [Lv. 2025]" or
                                        v.Name == "Posessed Mummy [Lv. 2050]") and
                                        (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 250 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoDoughtBossv2 and MagnetDought then
                                if
                                    (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or
                                        v.Name == "Baking Staff [Lv. 2250]" or
                                        v.Name == "Head Baker [Lv. 2275]") and
                                        (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 250 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoFarmSword and MagnetDought then
                                if
                                    v.Name == "Candy Rebel [Lv. 2375]" and
                                        (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 250 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBarto
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoDoughtBoss and MagnetDought then
                                if
                                    (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or
                                        v.Name == "Baking Staff [Lv. 2250]" or
                                        v.Name == "Head Baker [Lv. 2275]") and
                                        (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 250 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.AutoCandy and StartMagnetCandy then
                                if
                                    (v.HumanoidRootPart.Position - PosMonCandy.Position).Magnitude <= 250 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonCandy
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                            if _G.SelectQuest and StartMagnetCandy then
                                if
                                    (v.HumanoidRootPart.Position - PosMonCandy.Position).Magnitude <= 250 and
                                        v:FindFirstChild("Humanoid") and
                                        v:FindFirstChild("HumanoidRootPart") and
                                        v.Humanoid.Health > 0
                                 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonCandy
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(
                                        game:GetService("Players").LocalPlayer,
                                        "SimulationRadius",
                                        math.huge
                                    )
                                end
                            end
                        end
                    end
                end
            )
        end
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoSuperhuman then
                        if
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Combat") and
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000
                         then
                            wait(.1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                        end
                        if
                            game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")
                         then
                            _G.WeaponMelee = "Superhuman"
                        end
                        if
                            game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Electro") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or
                                game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")
                         then
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299
                             then
                                _G.WeaponMelee = "Black Leg"
                            end
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299
                             then
                                _G.WeaponMelee = "Electro"
                            end
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <=
                                        299
                             then
                                _G.WeaponMelee = "Fishman Karate"
                            end
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299
                             then
                                _G.WeaponMelee = "Dragon Claw"
                            end
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000
                             then
                                unequip("Black Leg")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                            end
                            if
                                game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and
                                    game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000
                             then
                                unequip("Black Leg")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                            end
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000
                             then
                                unequip("Electro")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                            end
                            if
                                game.Players.LocalPlayer.Character:FindFirstChild("Electro") and
                                    game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000
                             then
                                unequip("Electro")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                            end
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >=
                                        300 and
                                    game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500
                             then
                                unequip("Fishman Karate")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BlackbeardReward",
                                    "DragonClaw",
                                    "1"
                                )
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BlackbeardReward",
                                    "DragonClaw",
                                    "2"
                                )
                            end
                            if
                                game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and
                                    game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >=
                                        300 and
                                    game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500
                             then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BlackbeardReward",
                                    "DragonClaw",
                                    "1"
                                )
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "BlackbeardReward",
                                    "DragonClaw",
                                    "2"
                                )
                            end
                            if
                                game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and
                                    game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000
                             then
                                unequip("Dragon Claw")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                            end
                            if
                                game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and
                                    game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and
                                    game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000
                             then
                                unequip("Dragon Claw")
                                wait(.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                            end
                        end
                    end
                end
            end
        )
    end
)