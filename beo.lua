getgenv().Kaitun = true
getgenv().PosX, getgenv().PosY, getgenv().PosZ = 10, 30, 5
Pos = 1
local P = game:GetService("Players")
local LP = P.LocalPlayer
local PG = LP.PlayerGui
local RS = game:GetService("ReplicatedStorage")
local Remotes = RS:WaitForChild("Remotes")
local Remote = Remotes:WaitForChild("CommF_")
local RunS = game:GetService("RunService")
local Loop = RunS.RenderStepped
local Data = LP.Data
local WS = game:GetService("Workspace")
local WO = WS["_WorldOrigin"]
local VU = game:GetService("VirtualUser")
local EnemySpawns = WO.EnemySpawns
local Enemies = WS.Enemies
local CameraShaker = require(RS.Util.CameraShaker)
local GuideModule = require(RS.GuideModule)
local Quests = require(RS.Quests)
local VIM = game:service("VirtualInputManager")
repeat wait() until game:IsLoaded()
if PG.Main:FindFirstChild("ChooseTeam") and PG:WaitForChild("Main").ChooseTeam.Visible == true and LP.Team == nil then
    for i, v in pairs(getconnections(PG.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
        v.Function()
    end
end 
CameraShaker:Stop()
--RS.Assets.GUI.DamageCounter.Enabled = false
--PG.Notifications.Enabled = false
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

for _, v in pairs(codes) do
    Remotes:WaitForChild("Redeem"):InvokeServer(v)
end
local function Hop()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        end
        function Teleport() 
            while wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        Teleport()
    end
local function TP(P)
   if LP.Character and LP.Character:FindFirstChild("Humanoid") and LP.Character.Humanoid.Health > 0 then
        Dis = LP:DistanceFromCharacter(P.Position)
        Speed = 300
        if Dis <= 200 then
            LP.Character.PrimaryPart.CFrame = P
        end
        game:GetService("TweenService"):Create(LP.Character.PrimaryPart,TweenInfo.new(Dis/Speed, Enum.EasingStyle.Linear),{CFrame = P}):Play()
     end
end
local function BTP(P)
    if LP.Character then
        if LP:DistanceFromCharacter(P.Position) > 3000 then
            wait(1)
            LP.Character.Humanoid:ChangeState(15)
            LP.Character.PrimaryPart.CFrame = P
            wait()
            LP.Character.PrimaryPart.CFrame = P
        else
            return TP(P)
        end 
    end
end
local function TPPlayer(P)
    LP.Character.Head:Destroy()
	LP.Character.PrimaryPart.CFrame = P * CFrame.new(0,50,0)
	wait(.2)
	LP.Character.PrimaryPart.CFrame = P
	wait(.1)
	LP.Character.PrimaryPart.CFrame = P * CFrame.new(0,50,0)
	LP.Character.PrimaryPart.Anchored = true
	wait(.1)
	LP.Character.PrimaryPart.CFrame = P
	wait(0.5)
	LP.Character.PrimaryPart.Anchored = false
end
local function CheckQuest()
    local Lvl = Data.Level.Value
    local IgnoreQuests = {"BartiloQuest", "Trainees", "MarineQuest", "CitizenQuest"}
    local Quest = {
        ["LevelReq"] = 0
    }
    for i,v in pairs(Quests) do
		for a,b in pairs(v) do
		    for j, k in pairs(b["Task"]) do
		    	if b["LevelReq"] <= Lvl and b["LevelReq"] >= Quest["LevelReq"] and not table.find(IgnoreQuests, i) and k > 1 then		            
			    	Quest["QuestName"] = i
			        Quest["ID"] = a
			        Quest["MobName"] = j
                    Quest["LevelReq"] = b["LevelReq"]
		        end
			end	
		end
	end
	if Quest["LevelReq"] >= 700 and game.PlaceId == 2753915549 then
        Quest["MobName"] = "Galley Captain"
        Quest["QuestName"] = "FountainQuest"
        Quest["ID"] = 2
        Quest["LevelReq"] = 650
    elseif Quest["LevelReq"] >= 1450 and game.PlaceId == 4442272183 then
        Quest["MobName"] = "Water Fighter"
        Quest["QuestName"] = "ForgottenQuest"
        Quest["ID"] = 2
        Quest["LevelReq"] = 1450
    end
    local MobCFrame = {}
    local LvTab = {
        [0] = 5, [10] = 14, [15] = 20,[30] = 35, [40] = 45, [75] = 70
    }
    local Lv = Quest["LevelReq"]
    for i, v in pairs(LvTab) do
        if i == Lv then
            Lv = v
        end
    end 
    local Mob = Quest["MobName"] .. "Lv. " .. Lv .. "]"
	if EnemySpawns:FindFirstChild(Mob) then
    	for i, v in pairs(EnemySpawns:GetChildren()) do
    	    if v:IsA("Part") and v.Name == Mob then
	            table.insert(MobCFrame, v.CFrame)
	        end
	    end
	elseif Mob == "Isle Outlaw [Lv. 2450]" then
	    MobCFrame[1] = CFrame.new(-16362.3047, 18.695322, -155.015701)
	end
	Quest["Position"] = MobCFrame
	return Quest
end
for i, v in pairs(CheckQuest()) do
        print(i, v)   
end
local function MobPos(mob)
    local CFrameTab = {}
	if EnemySpawns:FindFirstChild(mob) then
    	for i, v in pairs(EnemySpawns:GetChildren()) do
    	    if v:IsA("Part") and v.Name == mob then
	            table.insert(CFrameTab, v.CFrame)
	        end
	    end
	end
	return CFrameTab
end
local function NPCPos()
    for i,v in pairs(GuideModule["Data"]["NPCList"]) do
		if v["NPCName"] == GuideModule["Data"]["LastClosestNPC"] then
			return i["CFrame"]
		end
	end
end
local function GetQuest()
    local Distance = LP:DistanceFromCharacter(NPCPos()["Position"])
    local questname, id = CheckQuest()["QuestName"], CheckQuest()["ID"]
    if Distance <= 20 then
        Remote:InvokeServer("StartQuest", questname, id)
    elseif Distance > 3000 then
        if questname == "FishmanQuest" then
            Remote:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        elseif questname == "SkyExp1Quest" and id == 1 then
            Remote:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
        elseif (questname == "SkyExp1Quest" and id == 2) or questname == "SkyExp2Quest" then
            Remote:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
        else
            BTP(NPCPos())
        end
    else
            TP(NPCPos())
    end
    Remote:InvokeServer("SetSpawnPoint")
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
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Main = Window:AddTab({ Title = "Main", Icon = "rbxassetid://14299284116" })
local Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
local Misc = Window
local Options = Fluent.Options

Main:AddParagraph({Title = "Time", Content = os.date("%A"..", ".."%B".." ".."%d"..", ".."%Y") })
local Toggle = Main:AddToggle("Auto Farm Level", {
    Title = "Auto Farm Level",  
    Callback = function(v)
        getgenv()["Kaitun"] = v
        getgenv()["NoClip"] = v
    end 
})
    
    Options["Auto Farm Level"]:SetValue(true)
    
local SelectTool = Main:AddDropdown("SelectTool",{
    Title = "Dropdown",
    Values = {"Melee", "Sword"},
    Multi = false,
    Callback = function(v)
        getgenv()["Tool"] = v
    end
})
    
SelectTool:SetValue("Melee")
    
SaveManager:SetLibrary(Fluent)InterfaceManager:SetLibrary(Fluent)SaveManager:IgnoreThemeSettings()InterfaceManager:SetFolder("HirimiHub")InterfaceManager:BuildInterfaceSection(Settings)Window:SelectTab(1)SaveManager:LoadAutoloadConfig()
local function Click()
    VU:CaptureController()
    VU:Button1Down(Vector2.new(1280, 672))
end
local function SendKey(key, hold)
    if not hold then
        VIM:SendKeyEvent(true, key, false, game)
        wait()
    	VIM:SendKeyEvent(false, key, false, game)
    else
        VIM:SendKeyEvent(true, key, false, game)
        wait(hold)
    	VIM:SendKeyEvent(false, key, false, game)
    end
end
local function EquipTool(ToolSe)
    if LP.Backpack:FindFirstChild(ToolSe) then
        wait(.5)
        Tool = LP.Backpack:FindFirstChild(ToolSe)
         wait(.5)
         LP.Character.Humanoid:EquipTool(Tool)
    end
end
local function Buso()
    if LP.Character and not LP.Character:FindFirstChild("HasBuso") then
        Remote:InvokeServer("Buso")
    end
end
local function FastFarm()
    local cframefarm = CFrame.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
    if LP:DistanceFromCharacter(cframefarm.Position) > 1500 then
        Remote:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
    end
    if Enemies:FindFirstChild("Shanda") then     
        for i,v in pairs(Enemies:GetChildren()) do
            if v.Name == "Shanda" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0  and v.Parent then
                    EquipTool(getgenv().SelectedWeapon)                                                                                                                    
                    Buso()
                    NameMob = v.Name
                    PosMon = v.HumanoidRootPart.CFrame                                                                       
                     v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                     v.HumanoidRootPart.Transparency = 1
                     v.HumanoidRootPart.CanCollide = false
                     v.Head.CanCollide = false
                     v.Humanoid.JumpPower = 0
                     v.Humanoid.WalkSpeed = 0
                     if v.Humanoid:FindFirstChild("Animator") then
                         v.Humanoid.Animator:Destroy()
                     end
                     v.Humanoid:ChangeState(11)
                     v.Humanoid:ChangeState(14)
                      sethiddenproperty(LP, "SimulationRadius",  math.huge)
                      getgenv().BringMob = true
                      TP(v.HumanoidRootPart.CFrame * CFrame.new(getgenv().PosX, getgenv().PosY, getgenv().PosZ))               
                      getgenv().AutoAttack = true                                                               
                  else
                      getgenv().AutoAttack = false
                      getgenv().BringMob = false
                end
            end
        else
            if Pos == nil or Pos == "" or Pos > #MobPos("Shanda") then
                Pos = 1
            end
            TP(MobPos("Shanda [Lv. 475]")[Pos] * CFrame.new(getgenv().PosX, getgenv().PosY, getgenv().PosZ))
            Pos = Pos + 1
            wait(1)
        end 
end
CheckPlayer = 0
local function HuntPlayer()
    local Players = game:GetService("Players"):GetPlayers()
    local Quest = PG.Main.Quest
    local mylevel = Data.Level.Value
    local QuestTitle = Quest.Container.QuestTitle.Title.Text
    local skyland1 = CFrame.new(-4607.82275, 872.54248, -1667.55688)
    local skyland2 = CFrame.new(-7894.6176757813, 5547.1416015625, -380.29119873047)
    local fishisland = CFrame.new(61163.8515625, 11.6796875, 1819.7841796875)
    if Quest.Visible == true then
        if string.find(QuestTitle, "Defeat") then
            getgenv().Ply = string.split(QuestTitle," ")[2]
            for i, v in pairs(Players) do
	            if v.Name == getgenv().Ply and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("HumanoidRootPart") then
	                if v.Data.Level.Value < 20 or v.Data.Level.Value > mylevel * 5 then
	                    Remote:InvokeServer("PlayerHunter")
	                end
                    if PG.Main.PvpDisabled.Visible == true then
                        Remote:InvokeServer("EnablePvp")                   
		           end
		           EquipTool(getgenv().SelectedWeapon)
	               Buso()	            
		           if v:DistanceFromCharacter(fishisland.Position) < 1000 then
		               Remote:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
	               elseif v:DistanceFromCharacter(skyland1.Position) < 1000 then
		               Remote:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
		           elseif v:DistanceFromCharacter(skyland2.Position) < 1000 then
		                   Remote:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		           elseif v:DistanceFromCharacter(LP.Character.PrimaryPart.Position) > 3000 then
		                   TPPlayer(v.Character.PrimaryPart.CFrame * CFrame.new(5, 5, 5))
		            else
		                   TP(v.Character.PrimaryPart.CFrame * CFrame.new(5, 5, 5))
	                end
		            v.Character.PrimaryPart.Size = Vector3.new(200,200,200)
		            if v:DistanceFromCharacter(LP.Character.PrimaryPart.Position) <= 200 then		    
		                getgenv().AutoAttack = true
	    	            SendKey("Z")
	                    wait(1)
		                SendKey("X")
                    end
                end
            end
        else
            Remote:InvokeServer("PlayerHunter")
        end
    else                
        if Remote:InvokeServer("PlayerHunter") == "I don't have anything for you right now. Come back later." then
            CheckPlayer = CheckPlayer + 1
            end
    end
    if CheckPlayer >= 12 and Quest.Visible == false and not string.find(QuestTitle, "Defeat") then
        Hop()
    end
end
local function GoToSea2()
    local bag = LP.Backpack or LP.Character
    local b = Enemies or RS
    local cframe = CFrame.new(1349.697265625, 37.34928512573242, -1328.8309326171875)
    local Distance = LP:DistanceFromCharacter(cframe.Position)
    if Remote:InvokeServer("DressrosaQuestProgress").UsedKey == false then
        if not bag:FindFirstChild("Key") then
            Remote:InvokeServer("DressrosaQuestProgress","Detective")
        end
        if LP.Backpack:FindFirstChild("Key") then
            LP.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Key"])
            if Distance > 1500 then
                BTP(cframe)
            else
                TP(cframe)
            end
            WS.Map.Ice.Door.Size = Vector3.new(30, 30, 30)
        end
    else 
        if Remote:InvokeServer("DressrosaQuestProgress").KilledIceBoss == false then
            if b:FindFirstChild("Ice Admiral") then
                for i, v in pairs(b:GetChildren()) do
                     if v.Name == "Ice Admiral" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Parent then
                         EquipTool(getgenv().SelectedWeapon)                                                                                                                    
                         Buso()
                         NameMob = v.Name
                         PosMon = v.HumanoidRootPart.CFrame
                        if LP:DistanceFromCharacter(v.HumanoidRootPart.Position) > 1500 then
                            BTP(v.HumanoidRootPart.CFrame)
                        else                           
                         TP(v.HumanoidRootPart.CFrame * CFrame.new(getgenv().PosX, getgenv().PosY, getgenv().PosZ))
                        end     
                          v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                          v.HumanoidRootPart.Transparency = 1
                          v.HumanoidRootPart.CanCollide = false
                          v.Head.CanCollide = false
                          v.Humanoid.JumpPower = 0
                          v.Humanoid.WalkSpeed = 0
                           if v.Humanoid:FindFirstChild("Animator") then
                               v.Humanoid.Animator:Destroy()
                           end
                           v.Humanoid:ChangeState(11)
                           v.Humanoid:ChangeState(14)
                           sethiddenproperty(LP, "SimulationRadius",  math.huge)
                            getgenv().BringMob = true
                                getgenv().AutoAttack = true                                                                           
                         else
                             getgenv().AutoAttack = false
                              getgenv().BringMob = false
                          end
                     end
                 end
        else
            Remote:InvokeServer("TravelDressrosa")
        end
    end
end
Loop:Connect(function()
if Data.Points.Value ~= 0 then
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
if getgenv().NoClip and LP.Character and LP.Character:FindFirstChild("Humanoid") then
            setfflag("HumanoidParallelRemoveNoPhysics", "False")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
            LP.Character.Humanoid:ChangeState(11)
            if not LP.Character.PrimaryPart:FindFirstChild("BodyClip") then
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
            elseif not getgenv().Kaitun and LP.Character.PrimaryPart:FindFirstChild("BodyClip") then
                LP.Character.PrimaryPart:FindFirstChild("BodyClip"):Destroy()    
        end    
    if getgenv().BringMob then
                for i,v in pairs(Enemies:GetChildren()) do
                    if v.Name == NameMob and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and LP:DistanceFromCharacter(v.HumanoidRootPart.Position) <= 450 then                            
                            v.HumanoidRootPart.CFrame = PosMon
                            v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)                                                  
                            v.HumanoidRootPart.Transparency = 1
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            v.Humanoid:ChangeState(11)
                            v.Humanoid:ChangeState(14)
                            sethiddenproperty(LP, "SimulationRadius",  math.huge)
                end
            end            
        end
        if getgenv().Kaitun and getgenv().AutoAttack then
            pcall(function()
                local a=game.Players.LocalPlayer;local b=getupvalues(require(a.PlayerScripts.CombatFramework))[2]function GetCurrentBlade()local c=b.activeController;local d=c.blades[1]if not d then return end;while d.Parent~=game.Players.LocalPlayer.Character do d=d.Parent end;return d end;local e=b.activeController;for f=1,1 do local g=require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(a.Character,{a.Character.HumanoidRootPart},60)local h={}local i={}for j,k in pairs(g)do if k.Parent:FindFirstChild("HumanoidRootPart")and not i[k.Parent]then table.insert(h,k.Parent.HumanoidRootPart)i[k.Parent]=true end end;g=h;if#g>0 then local l=debug.getupvalue(e.attack,5)local m=debug.getupvalue(e.attack,6)local n=debug.getupvalue(e.attack,4)local o=debug.getupvalue(e.attack,7)local p=(l*798405+n*727595)%m;local q=n*798405(function()p=(p*m+q)%1099511627776;l=math.floor(p/m)n=p-l*m end)()o=o+1;debug.setupvalue(e.attack,5,l)debug.setupvalue(e.attack,6,m)debug.setupvalue(e.attack,4,n)debug.setupvalue(e.attack,7,o)pcall(function()if a.Character:FindFirstChildOfClass("Tool")and e.blades and e.blades[1]then e.animator.anims.basic[1]:Play(0.01,0.01,0.01)game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(p/1099511627776*16777215),o)game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit",g,f,"")end end)end end;b.activeController.timeToNextAttack=-math.huge;b.activeController.attacking=false;b.activeController.timeToNextBlock=0;b.activeController.humanoid.AutoRotate=80;b.activeController.increment=4;b.activeController.blocking=false;b.activeController.hitboxMagnitude=200
                Click()
            end)
        end
        for i, v in pairs(LP.Backpack:GetChildren())do
            if v:IsA("Tool") and v.ToolTip == getgenv().Tool then
                getgenv().SelectedWeapon = v.Name
            end
        end
    end)
spawn(function()
    while wait() do
        if getgenv().Kaitun then
        local mylevel = Data.Level.Value
        if mylevel >= 15 and mylevel < 60 then
            FastFarm()
        elseif mylevel >= 60 and mylevel < 300 then
            HuntPlayer()
        elseif mylevel >= 700 and game.PlaceId == 2753915549 then
             GoToSea2()         
        else
            local Quest = PG.Main.Quest
            local QuestTitle = Quest.Container.QuestTitle.Title.Text          
            if Quest.Visible == true then
                if not string.find(QuestTitle, CheckQuest()["MobName"]) then
                    Remote:InvokeServer("AbandonQuest")
                else       
                    if Enemies:FindFirstChild(CheckQuest()["MobName"]) then     
                        for i,v in pairs(Enemies:GetChildren()) do
                            if v.Name == CheckQuest()["MobName"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0  then
                                EquipTool(getgenv().SelectedWeapon)                                                                                                                    
                                Buso()
                                NameMob = v.Name
                                PosMon = v.HumanoidRootPart.CFrame                                                                                                   
                                 v.HumanoidRootPart.Size = Vector3.new(1, 1, 1)
                                 v.HumanoidRootPart.Transparency = 1
                                 v.HumanoidRootPart.CanCollide = false
                                 v.Head.CanCollide = false
                                 v.Humanoid.JumpPower = 0
                                 v.Humanoid.WalkSpeed = 0
                                 if v.Humanoid:FindFirstChild("Animator") then
                                     v.Humanoid.Animator:Destroy()
                                end
                                v.Humanoid:ChangeState(11)
                                v.Humanoid:ChangeState(14)
                                sethiddenproperty(LP, "SimulationRadius",  math.huge)
                                 getgenv().BringMob = true
                                 TP(v.HumanoidRootPart.CFrame * CFrame.new(getgenv().PosX, getgenv().PosY, getgenv().PosZ))
                                    getgenv().AutoAttack = true                                                            
                             else
                                 getgenv().AutoAttack = false
                                 getgenv().BringMob = false
                            end
                        end
                    else
                        if Pos == nil or Pos == "" or Pos > #CheckQuest()["Position"] then
                            Pos = 1
                        end
                        pcall(function()
                            TP(CheckQuest()["Position"][Pos] * CFrame.new(getgenv().PosX, getgenv().PosY, getgenv().PosZ))
                        end)
                         Pos = Pos + 1
                         wait(1)
                    end
                end   
            else
                GetQuest()
            end
        end
    end
    end
end)
