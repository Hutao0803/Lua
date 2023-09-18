local P = game:GetService("Players")
local LP = P.LocalPlayer
local Data = LP.Data
local Backpack = LP.Backpack
local RS = game:GetService("ReplicatedStorage")
local Remotes = RS:WaitForChild("Remotes")
local Remote = Remotes:WaitForChild("CommF_")
local VU = game:GetService('VirtualUser')
local placeId = game.PlaceId

if placeId == 2753915549 then
    World1 = true
elseif placeId == 4442272183 then
    World2 = true
elseif placeId == 7449423635 then
    World3 = true
end

RS.Assets.GUI.DamageCounter.Enabled = false

local function Notify(title, text, time)
    game:GetService("StarterGui"):SetCore("SendNotification",
    {
        Title = title,
        Text = text,
        Icon = "rbxassetid://14299284116",
        Duration = time
    })
end

--Tween
local function TP(P)
    if LP.Character then
        Distance = (P.Position - LP.Character.PrimaryPart.Position).Magnitude
        if Distance < 25 then
            Speed = 10000
        elseif Distance < 50 then
            Speed = 5000
        elseif Distance < 300 then
            Speed = 2000
        elseif Distance < 500 then
            Speed = 500
        elseif Distance < 750 then
            Speed = 300
        elseif Distance >= 1000 then
            Speed = 250
        end
        game:GetService("TweenService"):Create(LP.Character.PrimaryPart, TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {CFrame = P}):Play()
    end
end

local function TPPlayer(P)
    if LP.Character then
        Distance = (P.Position - LP.Character.PrimaryPart.Position).Magnitude
        if Distance < 25 then
            Speed = 300
        elseif Distance < 50 then
            Speed = 400
        elseif Distance < 300 then
            Speed = 10000
        elseif Distance >= 1000 then
            Speed = 300
        end
        local tween = game:GetService("TweenService"):Create(LP.Character.PrimaryPart, TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {CFrame = P})
        if LP.Character.Humanoid.Health > 0 then
            tween:Play()
        elseif LP.Character.Humanoid.Health <= 0 then
            tween:Cancel()
        end
    end
end

local function BTP(Pos)
    if LP.Character then
        LP.Character:BreakJoints()
        repeat game:GetService("RunService").RenderStepped:Wait()
            LP.Character.PrimaryPart.CFrame = Pos
            Remote:InvokeServer("SetSpawnPoint")
        until not LP.Character
    end
end

--Stop Tween
local function StopTP(target)
    if LP.Character then
        if not target then
            TP(LP.Character.PrimaryPart.CFrame)
            if LP.Character.PrimaryPart:FindFirstChild("BodyClip") then
                LP.Character.PrimaryPart:FindFirstChild("BodyClip"):Destroy()
            end
            getgenv().NoClip = false
        end
    end
end

local function Attack()
    if LP.Character then
        local b = getupvalues(require(LP.PlayerScripts.CombatFramework))[2]
        function GetCurrentBlade()
            local c = b.activeController
            local d = c.blades[1]
            if not d then
                return
            end
            while d.Parent ~= LP.Character do
                d = d.Parent
            end
            return d
        end
        local e = b.activeController
        for f = 1, 1 do
            local g = require(RS.CombatFramework.RigLib).getBladeHits(LP.Character, {LP.Character.PrimaryPart}, 60)
            local h = {}
            local i = {}
            for j, k in pairs(g) do
                if k.Parent:FindFirstChild("PrimaryPart") and not i[k.Parent] then
                    table.insert(h, k.Parent.PrimaryPart)
                    i[k.Parent] = true
                end
            end
            g = h
            if #g > 0 then
                local l = debug.getupvalue(e.attack, 5)
                local m = debug.getupvalue(e.attack, 6)
                local n = debug.getupvalue(e.attack, 4)
                local o = debug.getupvalue(e.attack, 7)
                local p = (l * 798405 + n * 727595) % m
                local q = n * 798405
                (function()
                    p = (p * m + q) % 1099511627776
                    l = math.floor(p / m)
                    n = p - l * m
                end)()
                o = o + 1
                debug.setupvalue(e.attack, 5, l)
                debug.setupvalue(e.attack, 6, m)
                debug.setupvalue(e.attack, 4, n)
                debug.setupvalue(e.attack, 7, o)
                pcall(function()
                    if LP.Character:FindFirstChildOfClass("Tool") and e.blades and e.blades[1] then
                        e.animator.anims.basic[1]:Play(0.01, 0.01, 0.01)
                        RS.RigControllerEvent:FireServer("weaponChange", tostring(GetCurrentBlade()))
                        Remotes.Validator:FireServer(math.floor(p / 1099511627776 * 16777215), o)
                        RS.RigControllerEvent:FireServer("hit", g, f, "")
                    end
                end)
            end
        end
        b.activeController.timeToNextAttack = -math.huge
        b.activeController.attacking = false
        b.activeController.timeToNextBlock = 0
        b.activeController.humanoid.AutoRotate = 80
        b.activeController.increment = 4
        b.activeController.blocking = false
        b.activeController.hitboxMagnitude = 200
    end
end

local function BringMob()
    local Character = game.Players.LocalPlayer.Character
    local PosMon = Character.PrimaryPart.Position
    local enemy = game.workspace.Enemies:GetChildren()
    for _, v in pairs(enemy) do
        if #enemy > 1 and (v.PrimaryPart.Position - PosMon).Magnitude <= 350 and
            v.Name == QuestCheck()[3] and (not string.find(v.Name, "Boss") and not string.find(v.Name, "Raid"))
        then
            v.PrimaryPart.CFrame = PosMon
            v.PrimaryPart.CanCollide = false
            v.Head.CanCollide = false
            v.PrimaryPart.Size = Vector3.new(1, 1, 1)
            v.PrimaryPart.Transparency = 1
            if v:IsA("BasePart") then
                v.Velocity = Vector3.new(0, 0, 0)
                v.CanCollide = false
                v.Anchored = true
            end
            if v:FindFirstChild("Humanoid") then
                v.Humanoid.WalkSpeed = 0
                v.Humanoid.JumpPower = 0
                v.Humanoid:ChangeState(Enum.HumanoidStateType.Seated)
            end
            if v.Humanoid:FindFirstChild("Animator") then
                v.Humanoid.Animator:Destroy()
            end
        end
    end
end

--Auto Haki (Buso)
local function AutoHaki()
    if LP.Character then
        if not LP.Character:FindFirstChild("HasBuso") then
            Remote:InvokeServer("Buso")
        end
    end
end

--unequip
local function UnEquipWeapon(wea)
    if LP.Character then
        if LP.Character:FindFirstChild(wea) then
            getgenv().NotAutoEquip = true
            LP.Character.Humanoid:UnequipTools()
            getgenv().NotAutoEquip = false
        end
    end
end

--equip
local function Equip()
    if LP.Character then
        if not getgenv().NotAutoEquip then
            if Backpack:FindFirstChild(getgenv().SelectWeapon) then
                LP.Character.Humanoid:EquipTool(Backpack:FindFirstChild(getgenv().SelectWeapon))
            end
        end
    end
end

local function QuestCheck()
    local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
    if Lvl >= 1 and Lvl <= 9 then
        if tostring(game.Players.LocalPlayer.Team) == "Marines" then
            MobName = "Trainee [Lv. 5]"
            QuestName = "MarineQuest"
            QuestLevel = 1
            Mon = "Trainee"
            NPCPosition = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
        elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
            MobName = "Bandit [Lv. 5]"
            Mon = "Bandit"
            QuestName = "BanditQuest1"
            QuestLevel = 1
            NPCPosition = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, -0.297689587, 1.19340022e-08, -0.95466274)
        end
        return {
            [1] = QuestLevel,
            [2] = NPCPosition,
            [3] = MobName,
            [4] = QuestName,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = MobCFrame
        }
    end

    if Lvl >= 375 and Lvl <= 399 then -- Fishman Warrior
        MobName = "Fishman Warrior [Lv. 375]"
        QuestName = "FishmanQuest"
        QuestLevel = 1
        Mon = "Fishman Warrior"
        NPCPosition = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
        MobCFrame = CFrame.new(60955.0625, 48.7988472, 1543.7168, -0.831178129, 6.20639318e-09, -0.556006253, 7.20035302e-08, 1, -9.64761853e-08, 0.556006253, -1.20223305e-07, -0.831178129)
        if _G.Start_Kaitun and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
        return {
            [1] = QuestLevel,
            [2] = NPCPosition,
            [3] = MobName,
            [4] = QuestName,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = MobCFrame
        }
    end

    if Lvl >= 15 and Lvl <= 29 then
        MobName = "Gorilla [Lv. 20]"
        QuestName = "JungleQuest"
        QuestLevel = 2
        Mon = "Gorilla"
        NPCPosition = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
        MobCFrame = CFrame.new(-1142.0293, 40.5877495, -516.118103, 0.55559355, 7.58965513e-08, 0.831454039, 1.24594361e-08, 1, -9.96073553e-08, -0.831454039, 6.57006538e-08, 0.55559355)
        return {
            [1] = QuestLevel,
            [2] = NPCPosition,
            [3] = MobName,
            [4] = QuestName,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = MobCFrame
        }
    end

    if Lvl >= 400 and Lvl <= 449 then -- Fishman Commando
        MobName = "Fishman Commando [Lv. 400]"
        QuestName = "FishmanQuest"
        QuestLevel = 2
        Mon = "Fishman Commando"
        NPCPosition = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
        MobCFrame = CFrame.new(61872.3008, 75.5976562, 1394.83484, -0.922134459, 4.36911973e-09, -0.38686946, -2.54707899e-08, 1, 7.20052e-08, 0.38686946, 7.62523484e-08, -0.922134459)
        if _G.Start_Kaitun and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
        return {
            [1] = QuestLevel,
            [2] = NPCPosition,
            [3] = MobName,
            [4] = QuestName,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = MobCFrame
        }
    end
    
    --game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
    local Quests = require(game:GetService("ReplicatedStorage").Quests)
    for i,v in pairs(GuideModule["Data"]["NPCList"]) do
        for i1,v1 in pairs(v["Levels"]) do
            if Lvl >= v1 then
                if not LevelRequire then
                    LevelRequire = 0
                end
                if v1 > LevelRequire then
                    NPCPosition = i["CFrame"]
                    QuestLevel = i1
                    LevelRequire = v1
                end
                if #v["Levels"] == 3 and QuestLevel == 3 then
                    NPCPosition = i["CFrame"]
                    QuestLevel = 2
                    LevelRequire = v["Levels"][2]
                end
            end
        end
    end
    for i,v in pairs(Quests) do
        for i1,v1 in pairs(v) do
            if v1["LevelReq"] == LevelRequire and i ~= "CitizenQuest" then
                QuestName = i
                for i2,v2 in pairs(v1["Task"]) do
                    MobName = i2
                    Mon = string.split(i2," [Lv. ".. v1["LevelReq"] .. "]")[1]
                end
            end
        end
    end
    if QuestName == "MarineQuest2" then
        QuestName = "MarineQuest2"
        QuestLevel = 1
        MobName = "Chief Petty Officer [Lv. 120]"
        Mon = "Chief Petty Officer"
        LevelRequire = 120
    elseif QuestName == "ImpelQuest" then
        QuestName = "PrisonerQuest"
        QuestLevel = 2
        MobName = "Dangerous Prisoner [Lv. 190]"
        Mon = "Dangerous Prisoner"
        LevelRequire = 210
        NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
    elseif QuestName == "SkyExp1Quest" then
        if QuestLevel == 1 then
            NPCPosition = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
        elseif QuestLevel == 2 then
            NPCPosition = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
        end
    elseif QuestName == "Area2Quest" and QuestLevel == 2 then
        QuestName = "Area2Quest"
        QuestLevel = 1
        MobName = "Swan Pirate [Lv. 775]"
        Mon = "Swan Pirate"
        LevelRequire = 775
    end
    MobName = MobName:sub(1,#MobName)
    if not MobName:find("Lv") then
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            MonLV = string.match(v.Name, "%d+")
            if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
                MobName = v.Name
            end
        end
    end
    if not MobName:find("Lv") then
        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            MonLV = string.match(v.Name, "%d+")
            if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
                MobName = v.Name
                Mon = a
            end
        end
    end
    for _,v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
        if v.Name == MobName then
            MobCFrame = v.CFrame * CFrame.new(0,30,0)
        end
    end

    return {
        [1] = QuestLevel,
        [2] = NPCPosition,
        [3] = MobName,
        [4] = QuestName,
        [5] = LevelRequire,
        [6] = Mon,
        [7] = MobCFrame
    }
end

local codes = {
    "Enyo_is_Pro",
    "Magicbus",
    "MAGICBIS",
    "JCWK",
    "Starcodeheo",
    "Bluxxy",
    "fudd10_v2",
    "3BVISITS",
    "UPD16",
    "FUDD10",
    "BIGNEWS",
    "Sub2OfficialNoobie",
    "SUB2GAMERROBOT_EXP1",
    "StrawHatMaine",
    "SUB2NOOBMASTER123",
    "Sub2Daigrock",
    "Axiore",
    "TantaiGaming",
    "STRAWHATMAINE",
    "kittgaming",
    "Enyu_is_Pro",
    "THEGREATACE",
    "StrawHatMaine",
    "Sub2Fer999",
    "GAMERROBOT_YT",
    "TY_FOR_WATCHING",
    "STAFFBATTLE",
    "ADMIN_STRENGTH",
    "DRAGONABUSE"
}
pcall(function()
    for _v in pairs(codes) do
	Remotes:WaitForChild("Redeem"):InvokeServer(v)
    end
end)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KvdzUwU/TrashHub/main/PC/UI.lua"))()
local window = library:W({
    Name = "Kaitun",
    Theme = true   
})
local tab = window:T({Name ="Main"})
local section = tab:Sec({Name = "Farming", Side = "Left"})
local Farm = section:Tog({
    Name = "Start Kaitun", 
    Value = true, 
    Callback = function(v)
        getgenv().AutoLevel = v
        getgenv().Attack = v
        getgenv().BringMob = v
        getgenv().NoClip = v
        getgenv().Saber = v
        getgenv().Pole = v
   end
})
game:GetService("RunService").RenderStepped:Connect(function()
    for i ,v in pairs(Backpack:GetChildren()) do
        if v.ToolTip == "Melee" then
            if Backpack:FindFirstChild(tostring(v.Name)) then
                getgenv().SelectWeapon = v.Name
            end
        end
    end
    if getgenv().AutoLevel and getgenv().NoClip then
        if not Character.PrimaryPart:FindFirstChild("BodyClip") then
		    local Body = Instance.new("BodyVelocity")
			Body.Name = "BodyClip"
			Body.Parent = game:GetService("Players").LocalPlayer.Character.PrimaryPart
			Body.MaxForce = Vector3.new(100000,100000,100000)
			Body.Velocity = Vector3.new(0,0,0)
        end
        for _, v in pairs(Character:GetDescendants()) do
		    if v:IsA("BasePart") then
		        v.CanCollide = false    		        
	        end
	    end
    end
    if getgenv().BringMob and BringMob then
        BringMob()
    end
    if getgenv().FastAttack == true then
        if LP.Character then
            if LP.PlayerGui.Main.SafeZone.Visible == false then
                Attack()
            end
        end
    end
    if Data.Points.Value > 1 then
        local meleeLevel = Data.Stats.Melee.Level.Value
        local defenseLevel = Data.Stats.Defense.Level.Value
        local swordLevel = Data.Stats.Sword.Level.Value
        if meleeLevel < 2450 then 
            Remote:InvokeServer("AddPoint", "Melee", Data.Points.Value)
        elseif meleeLevel >= 2450 and defenseLevel < 2450 then 
            Remote:InvokeServer("AddPoint", "Defense", Data.Points.Value)
        elseif meleeLevel >= 2450 and defenseLevel >= 2450 and swordLevel < 2450 then
            Remote:InvokeServer("AddPoint", "Sword", Data.Points.Value)
        end
    end
    if World2 or World3 then
        if Remote:InvokeServer("ColorsDealer", "1") then
            Remote:InvokeServer("ColorsDealer", "2")
        end
    end
    if World1 then
        local table = {
            {Beli = 5000, Buy = {"BuyHaki", "Geppo"}},
            {Beli = 25000, Buy = {"BuyHaki", "Buso"}},
            {Beli = 100000, Buy = {"BuyHaki", "Soru"}},
            {Beli = 750000, Buy = {"KenTalk", "Buy"}}
        }
        for _, v in pairs(table) do
            if Data.Beli.Value == v.Beli then
                Remote:InvokeServer(v.Buy[1], v.Buy[2])
            end
        end
    elseif World2 then
        if Remote:InvokeServer("LegendarySwordDealer") then
            for i = 1, 3 do
                Remote:InvokeServer("LegendarySwordDealer", tostring(i))
            end
        end
    end
    if not LP.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
        VU:CaptureController()
        VU:SetKeyDown('0x65')
        VU:SetKeyUp('0x65')
    end
end)

spawn(function()
    while wait() do
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
        pcall(function()
            if getgenv().AutoLevel then
                if _G.GoGat and (MyLevel >= 15 and MyLevel <= 300) then
                    if MyLevel >= 15 and MyLevel <= 300 then
                        Start_KaitunFast()
                    end
                else
                    if QuestC.Visible == true then
                        if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                            BTP(QuestCheck()[2])
                        end
                        if game:GetService("Workspace").Enemies:FindFirstChild(QuestCheck()[3]) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == QuestCheck()[3] then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            else
                                                BringMob = true
                                                AutoHaki()
                                                Equip()                          
                                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                            end
                                        until not getgenv().AutoLevel or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
                                    end
                                end
                            end
                        else
                            for i,v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
                                if v.Name == QuestCheck()[6] then local CFrameEnemySpawns = v.CFrame  wait(0.5)
                                    TP(CFrameEnemySpawns * CFrame.new(0, 30, 5))
                                end
                            end
                        end
                    else
                        if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                            BTP(QuestCheck()[2])
                        else
                            repeat wait() TP(QuestCheck()[2]) until (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not getgenv().AutoLevel
                        end
                        repeat wait() TP(QuestCheck()[2]) until (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not getgenv().AutoLevel
                        if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                            BringMob = false
                            wait(0.2)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5)
                        end
                        TP(QuestCheck()[7])
                    end
                end
            end
        end)
    end
end)
_G.ChackPlayer = 0
_G.ChackPlayer2 = _G.ChackPlayer
function Start_KaitunFast()
    local PlayersAll = game.Players:GetPlayers()
    local PlayerLevel = game.Players.LocalPlayer.Data.Level.Value
    local quest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
    local Player = string.split(quest," ")[2]
    getgenv().SelectPly = string.split(quest," ")[2]
    pcall(function()
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
        CFrameMon = CFrame.new(-4837.64258, 850.10199, -1840.58374, -0.430530697, -4.42848638e-08, -0.90257591, -3.08042516e-08, 1, -3.43712756e-08, 0.90257591, 1.30052875e-08, -0.430530697)
        if MyLevel >= 15 and MyLevel <= 69 then
            BringMobFarm55 = false
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v.Name == "God's Guard [Lv. 450]" then
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            BringMob = true
                            AutoHaki()
                            Equip()
                            TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                        until not v.Parent or not _G.Start_Kaitun or v.Humanoid.Health < 0
                    end
                else
                    BringMob = false
                    if getgenv().AutoLevel and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                    end
                    TP(CFrameMon)
                end
            end
        elseif MyLevel >= 70 and MyLevel <= 309 then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            end
            if QuestC.Visible == false then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            elseif QuestC.Visible == true then
                if string.find(quest,"Defeat") then
                    if game.Players[getgenv().SelectPly].Data.Level.Value >= 20 and game.Players[getgenv().SelectPly].Data.Level.Value <= MyLevel + 50 then
                        repeat task.wait()
                            AutoHaki()
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                            end
                            Equip()          
                            TPPlayer(game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame)                           
                            game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.Size = Vector3.new(120,120,120)
                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                        until game.Players[getgenv().SelectPly].Character.Humanoid.Health <= 0 or not game.Players[getgenv().SelectPly].Character.Humanoid.Health or not Start_KaitunFast()
                        _G.GoGat = false
                        _G.KillPlayerQ = true
                        if not game.Players:FindFirstChild(Player) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                        end
                    else
                        for i,v in pairs(PlayersAll) do
                            if v.Data.Level.Value >= 20 and v.Data.Level.Value <= PlayerLevel + 2 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                            else
                                _G.ChackPlayer = _G.ChackPlayer + 1
                                if _G.ChackPlayer >= 12 then
                                    _G.GoGat = false
                                else
                                    if _G.ChackPlayer2 >= 13 then 
                                        _G.GoGat = false
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
end
