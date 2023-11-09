repeat wait() until game:IsLoaded()
repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
local Ply = game:GetService("Players")
local LP = Ply.LocalPlayer
local Remote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_")
local folder = "Hirimi Hub"
local filer = game.Players.LocalPlayer.Name .. "-Blox Fruit.json"
local h = {}
local y = game.PlaceId
local Sea1, Sea2, Sea3, FastAttack, NoClip
if y == 2753915549 then
    Sea1 = true
elseif y == 4442272183 then
    Sea2 = true
    elseif y == 7449423635 then
    Sea3 = true
end
--[[function SaveSettings(m, n)
    if m ~= nil then
        h[m] = n
    end
	HttpService = game:GetService("HttpService")
    if not isfolder(folder) then
        makefolder(folder)
    end
    writefile(folder .. "/" .. filer, HttpService:JSONEncode(h))
end
function ReadSetting()
    local s, o = pcall(function()
	HttpService = game:GetService("HttpService")
        if not isfoler(folder) then
            makefolder(folder)
        end
        return HttpService:JSONDecode(readfile(folder .. "/" .. filer))
    end)
    if s then
        return o
    else
        SaveSettings()
        return ReadSetting()
    end
end
h = ReadSetting()]]
repeat
    pcall(function()
        wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main"):FindFirstChild("ChooseTeam") then
            for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
                v.Function()
            end
        end
    end)
until game.Players.LocalPlayer.Team ~= nil
local K = Instance.new("Folder")
K.Parent = game.Workspace
K.Name = "MobSpawns"
repeat
    wait()
until game.Workspace:FindFirstChild("MobSpawns")
local function FunctionFoldermob()
    repeat
        wait()
        if game.Workspace:FindFirstChild("MobSpawns") then
            game.Workspace.MobSpawns:Destroy()
        end
    until not game.Workspace:FindFirstChild("MobSpawns")
    local K = Instance.new("Folder")
    K.Parent = game.Workspace
    K.Name = "MobSpawns"
    wait()
    repeat
        wait()
    until game.Workspace:FindFirstChild("MobSpawns")
    for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
        local a = v:Clone()
        a.Parent = game.Workspace.MobSpawns
    end
    local L = {}
    for r, v in next, require(game:GetService("ReplicatedStorage").Quests) do
        for M, N in next, v do
            for O, P in next, N.Task do
                if P > 1 then
                    table.insert(L, O)
                end
            end
        end
    end
    if string.find(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()[1].Name, "Lv.") then
        for r, v in pairs(getnilinstances()) do
            if table.find(L, tostring(v.Name:gsub(" %pLv. %d+%p", ""))) then
                local a = v:Clone()
                a.Parent = game.Workspace.MobSpawns
            end
        end
    else
        for r, v in pairs(getnilinstances()) do
            if table.find(L, v.Name) then
                local a = v:Clone()
                if a.Parent then
                    a.Parent = game.Workspace.MobSpawns
                end
            end
        end
    end
end
FunctionFoldermob()
local function GetDistance(pos)
    if typeof(pos) == "CFrame" then
        return LP:DistanceFromCharacter(pos.Position)
    elseif typeof(pos) == "Vector3" then
        return LP:DistanceFromCharacter(pos)
    end
end
local function CheckTele(c)
    local Locations, choose
    local min = math.huge
    if Sea1 then
        Locations = {
            Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
            Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
            Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
            Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
            Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875),
            Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)
        }
    elseif Sea2 then
        Locations = {
            Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
            Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
            Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
            Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
        }
    elseif Sea3 then
        Locations = {
            Vector3.new(-7894.6201171875, 5545.49169921875, -380.2467346191406),
            Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
            Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875), 
            Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
        }
    end
    for i, v in pairs(Locations) do
        local dis = (v - c.Position).Magnitude
        if min > dis then
            min = dis
            choose = v
        end
    end
    if min <= GetDistance(c) then
        return choose
    end
end
local function TpEntrance(pos)
    Remote:InvokeServer("requestEntrance", pos)
    LP.Character.Character.HumanoidRootPart.CFrame = LP.Character.Character.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
    wait(.5)
end
local function TP(P, object)
    if LP.Character and LP.Character:FindFirstChild("Humanoid") and LP.Character.Humanoid.Health > 0 and LP.Character:FindFirstChild("HumanoidRootPart") then
        local dis = GetDistance(P)
        if not object then
            object = LP.Character.HumanoidRootPart
        end
        if dis <= 250 then
            LP.Character.HumanoidRootPart.CFrame = P
        end
        local tween = game:GetService("TweenService"):Create(object, TweenInfo.new(dis/325, Enum.EasingStyle.Linear),{CFrame = P})
        local bypass = CheckTele(P)
        if bypass then
            pcall(function()
                tween:Cancel()
            end)
            TpEntrance(bypass)
        end
        tween:Play()
        tween.Completed:Wait()
    end
end
local Q = require(game.ReplicatedStorage.Quests)
local function Quest()
    local ml = LP.Data.Level.Value
    local Iq = {"BartiloQuest", "Trainees", "MarineQuest", "CitizenQuest"}
    local Qs = {}
    local LevelReq = 0
    for i, v in pairs(Q) do
        for a, b in pairs(v) do
            for j, k in pairs(b["Task"]) do
                if b["LevelReq"] <= ml and b["LevelReq"] >= LevelReq and not table.find(Iq, i) and k > 1 then
                    Qs["Name"] = i
                    Qs["ID"] = a
                    Qs["Mob"] = j
                    LevelReq = b["LevelReq"]
                end
            end
        end 
    end
    if LevelReq >= 700 and Sea1 then
        Qs["Mob"] = "Galley Captain"
        Qs["Name"] = "FountainQuest"
        Qs["ID"] = 2
    elseif LevelReq >= 1450 and Sea2 then
        Qs["Mob"] = "Water Fighter"
        Qs["Name"] = "ForgottenQuest"
        Qs["ID"] = 2
    end
	return Qs
end
local function GetQuest()
    local pos
    local mq = Quest()
    for i, v in pairs(require(game.ReplicatedStorage.GuideModule).Data.NPCList) do
        if v.NPCName == require(game.ReplicatedStorage.GuideModule).Data.LastClosestNPC then
            pos = i["CFrame"]
        end
    end
    local dis = GetDistance(pos)
    if dis <= 20 then
        Remote:InvokeServer("StartQuest", mq["Name"], mq["ID"])
    else
        TP(pos)
    end
end
local function Equip()
    local a = LP.Backpack or LP.Character
    local wea, weap
    for i, v in pairs(LP.Backpack) do
        if v:IsA("Tool") and v.ToolTip == "Melee" then
            wea = v.Name
        end
    end
    for i, v in pairs(LP.Character) do
        if v:IsA("Tool") and v.ToolTip == "Melee" then
            wea = v.Name
        end
    end
    if LP.Backpack:FindFirstChild(wea) then
        local weap = LP.Backpack:FindFirstChild(wea)
        wait(.5)
        LP.Character.Humanoid:EquipTool(weap)
    end
end
local function Buso()
    if not LP.Character:FindFirstChild("HasBuso") then
        Remote:InvokeServer("Buso")
    end
end
local function KillMob(Mob)
    pcall(function()
    local MobList = {}
    local totalPos = Vector3.new(0,0,0)
    local count = 0
    local min = math.huge
    local Poss = {}
    local LockPos
    if not Workspace.Enemies:FindFirstChild(Mob) then
        for i, v in pairs(Workspace.MobSpawns:GetChildren()) do
            if v.Name == GetMob(Mob) then
                table.insert(Poss, v.CFrame)
            end
        end
        for i, v in pairs(Poss) do
            local Dis = GetDistance(v)
            if min > Dis and Dis > 5 then
                min = Dis
                LockPos = v
            end
        end
        TP(LockPos)
    else
    for i, v in pairs(Workspace.Enemies:GetChildren()) do
        if v.Name == Mob and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and GetDistance(v.HumanoidRootPart.Position) <= 350 then
            table.insert(MobList, v)
        end
    end
    for i, v in pairs(MobList) do
        local m = v.HumanoidRootPart.Position
        totalPos = totalPos + m
        count = count + 1
    end
    local Pos = CFrame.new(totalPos / count)
    for i, v in pairs(MobList) do
        v.HumanoidRootPart.CFrame = Pos
        v.HumanoidRootPart.CanCollide = false
        v.HumanoidRootPart.Size = Vector3.new(1,1,1)
        v.HumanoidRootPart.Transparency = 1
        for a, b in pairs(v:GetChildren()) do
            if v:IsA("BasePart") then
                v.Velocity = Vector3.new(0, 0, 0)
                v.CanCollide = 0
                v.Anchored = true
            end
        end
        v.Humanoid.WalkSpeed = 0
        v.Humanoid.JumpPower = 0
        if v.Humanoid:FindFirstChild("Animator") then
            v.Humanoid.Animator:Destroy()
        end
        v.Humanoid:ChangeState(11)
        v.Humanoid:ChangeState(14)
        sethiddenproperty(LP, "SimulationRadius", math.huge)
    end
        Equip()
        Buso()
        TP(Pos * CFrame.new(0, 25, 10))
        FastAttack = true
        end
    end)
end
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Hirimi Hub ",
    SubTitle = "by Hutao",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.RightControl
})

local Main = Window:AddTab({ Title = "Main", Icon = "rbxassetid://14299284116" })
local Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
SaveManager:SetLibrary(Fluent)InterfaceManager:SetLibrary(Fluent)SaveManager:IgnoreThemeSettings()InterfaceManager:SetFolder("HirimiHub")InterfaceManager:BuildInterfaceSection(Settings)Window:SelectTab(1)SaveManager:LoadAutoloadConfig()
function Noti(c, s, t)
    Fluent:Notify({
        Title = "Hirimi Hub",
        Content = c,
        SubContent = s,
        Duration = t
    })
end
local AutoFarm = Main:AddToggle("Auto Farm", {
    Title = "Auto Farm",
    Default = false,
    Callback = function(v)
        h["Auto Farm"] = v
        NoClip = v
    end
})
spawn(function()
    while wait() do
        if h["Auto Farm"] then
            --if h["Level"] then
                local mQ = Quest()
                local QD = require(game.ReplicatedStorage.GuideModule)["Data"]["QuestData"]
                if QD then
                    if QD["Name"] ~= mQ["Mob"] then
                        Remote:InvokeServer("AbandonQuest")
                    else
                        KillMob(mQ["Mob"])
                    end
                else
                    GetQuest()
                end
            --end
        end
    end  
end)
spawn(function()
    while wait() do
        if NoClip and LP.Character and LP.Character:FindFirstChild("Humanoid") and LP.Character:FindFirstChild("HumanoidRootPart") then
            setfflag("HumanoidParallelRemoveNoPhysics", "False")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
            LP.Character.Humanoid:ChangeState(11)
            if not LP.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
		        local Body = Instance.new("BodyVelocity")
			    Body.Name = "BodyClip"
        		Body.Parent = LP.Character.PrimaryPart
        		Body.MaxForce = Vector3.new(100000,100000,100000)
	        	Body.Velocity = Vector3.new(0,0,0)
	        end
            for _, v in pairs(LP.Character:GetDescendants()) do
		        if v:IsA("BasePart") then
		            v.CanCollide = false    		        
	            end
	        end
        elseif not NoClip and LP.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            LP.Character.HumanoidRootPart.BodyClip:Destroy()
        end
    end
end)
spawn(function()
    while wait() do
        if FastAttack then
            pcall(function()
                local a=game.Players.LocalPlayer;local b=getupvalues(require(a.PlayerScripts.CombatFramework))[2]function GetCurrentBlade()local c=b.activeController;local d=c.blades[1]if not d then return end;while d.Parent~=game.Players.LocalPlayer.Character do d=d.Parent end;return d end;local e=b.activeController;for f=1,1 do local g=require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(a.Character,{a.Character.HumanoidRootPart},60)local h={}local i={}for j,k in pairs(g)do if k.Parent:FindFirstChild("HumanoidRootPart")and not i[k.Parent]then table.insert(h,k.Parent.HumanoidRootPart)i[k.Parent]=true end end;g=h;if#g>0 then local l=debug.getupvalue(e.attack,5)local m=debug.getupvalue(e.attack,6)local n=debug.getupvalue(e.attack,4)local o=debug.getupvalue(e.attack,7)local p=(l*798405+n*727595)%m;local q=n*798405(function()p=(p*m+q)%1099511627776;l=math.floor(p/m)n=p-l*m end)()o=o+1;debug.setupvalue(e.attack,5,l)debug.setupvalue(e.attack,6,m)debug.setupvalue(e.attack,4,n)debug.setupvalue(e.attack,7,o)pcall(function()if a.Character:FindFirstChildOfClass("Tool")and e.blades and e.blades[1]then e.animator.anims.basic[1]:Play(0.01,0.01,0.01)game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(p/1099511627776*16777215),o)game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit",g,f,"")end end)end end;b.activeController.timeToNextAttack=-math.huge;b.activeController.attacking=false;b.activeController.timeToNextBlock=0;b.activeController.humanoid.AutoRotate=80;b.activeController.increment=4;b.activeController.blocking=false;b.activeController.hitboxMagnitude=200               
            end)
        end
    end
end)
