local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
-- bring Monster
task.spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().LevelFarm then
                QuestCheck()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if getgenv().LevelFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]" or Mon == "Head Baker [Lv. 2275]" or Mon == "Baking Staff [Lv. 2250]" or Mon == "Cake Guard [Lv. 2225]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    elseif getgenv().LevelFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 275 then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    end
                    if _G.AutoFarmSword and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]" or Mon == "Head Baker [Lv. 2275]" or Mon == "Baking Staff [Lv. 2250]" or Mon == "Cake Guard [Lv. 2225]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    elseif _G.AutoFarmSword and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 275 then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    end
                    if _G.AutoEctoplasm and StartEctoplasmMagnet then
                        if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= 250 then
                            v.HumanoidRootPart.CFrame = EctoplasmMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoRengoku and StartRengokuMagnet then
                        if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = RengokuMon
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
                        if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = MusketeerHatMon
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Auto_EvoRace and StartEvoMagnet then
                        if v.Name == "Zombie [Lv. 950]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonEvo
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoBartilo and AutoBartiloBring then
                        if v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBarto
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
                        if v.Name == Mon then
                            if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 225 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                    if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                        if v.Name == "Monkey [Lv. 14]" then
                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == "Factory Staff [Lv. 800]" then
                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == Mon then
                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                    if _G.AutoGodHuman and StartMagnetAutoGodHuman then
                        if v.Name == "Dragon Crew Warrior [Lv. 1575]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoFarmMoney and StartMagnetMoney then
                        if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoFish and StartMagnetAutoFish then
                        if (v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoMagma and StartMagnetAutoMagma then
                        if (v.Name == "Magma Ninja [Lv. 1175]" or v.Name == "Lava Pirate [Lv. 1200]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Scrap_Metal2 and StartMagnetrawmaterial then
                        if (v.Name == "Mercenary [Lv. 725]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Radioactive_Meterial and StartMagnetrawmaterial then
                        if (v.Name == "Factory Staff [Lv. 800]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Leather2 and StartMagnetrawmaterial then
                        if (v.Name == "Marine Captain [Lv. 900]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Vampire_Fang and StartMagnetrawmaterial then
                        if (v.Name == "Vampire [Lv. 975]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Gunpowder and StartMagnetrawmaterial then
                        if (v.Name == "Pistol Billionaire [Lv. 1525]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Scrap_Metal and StartMagnetrawmaterial then
                        if (v.Name == "Pirate Millionaire [Lv. 1500]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Mini_Tusk and StartMagnetrawmaterial then
                        if (v.Name == "Mythological Pirate [Lv. 1850]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Leather1 and StartMagnetrawmaterial then
                        if (v.Name == "Pirate [Lv. 35]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Scrap_Metal1 and StartMagnetrawmaterial then
                        if (v.Name == "Brute [Lv. 45]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Angel_Wings and StartMagnetrawmaterial then
                        if (v.Name == "Shanda [Lv. 475]" or v.Name == "Royal Squad [Lv. 525]" or v.Name == "Royal Soldier [Lv. 550]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Fish_Tail and StartMagnetrawmaterial then
                        if (v.Name == "Fishman Warrior [Lv. 375]" or v.Name == "Fishman Commando [Lv. 400]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Magma_Ore and StartMagnetrawmaterial then
                        if (v.Name == "Military Soldier [Lv. 300]" or v.Name == "Military Spy [Lv. 325]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Demonic_wisp and StartMagnetrawmaterial then
                        if (v.Name == "Demonic Soul [Lv. 2025]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Leather and StartMagnetrawmaterial then
                        if (v.Name == "Forest Pirate [Lv. 1825]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Cocoa and StartMagnetrawmaterial then
                        if (v.Name == "Chocolate Bar Battler [Lv. 2325]" or v.Name == "Cocoa Warrior [Lv. 2300]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Mystic and StartMagnetMystic then
                        if (v.Name == "Sea Soldier [Lv. 1425]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 350 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoFarmBone and StartMagnetBoneMon then
                        if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoDoughtBossv2 and MagnetDought then
                        if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoFarmSword and MagnetDought then
                        if v.Name == "Candy Rebel [Lv. 2375]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBarto
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoDoughtBoss and MagnetDought then
                        if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoCandy and StartMagnetCandy then
                        if (v.HumanoidRootPart.Position - PosMonCandy.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonCandy
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.SelectQuest and StartMagnetCandy then
                        if (v.HumanoidRootPart.Position - PosMonCandy.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonCandy
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                end
            end
        end)
    end
end)

-- haki
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


-- fast

FastAttackSpeed = true
_G.Fast_Delay = 0.2

local CurveFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
local VirtualUser = game:GetService("VirtualUser")
local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
local Client = game:GetService("Players").LocalPlayer
local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)
local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShaker:Stop()
function CurveFuckWeapon()
    local p13 = CurveFrame.activeController
    local wea = p13.blades[1]
    if not wea then
        return
    end
    while wea.Parent ~= game.Players.LocalPlayer.Character do
        wea = wea.Parent
    end
    return wea
end

function getHits(Size)
    local Hits = {}
    local Enemies = workspace.Enemies:GetChildren()
    local Characters = workspace.Characters:GetChildren()
    for i = 1, #Enemies do
        local v = Enemies[i]
        local Human = v:FindFirstChildOfClass("Humanoid")
        if
            Human and Human.RootPart and Human.Health > 0 and
                game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size + 5
         then
            table.insert(Hits, Human.RootPart)
        end
    end
    for i = 1, #Characters do
        local v = Characters[i]
        if v ~= game.Players.LocalPlayer.Character then
            local Human = v:FindFirstChildOfClass("Humanoid")
            if
                Human and Human.RootPart and Human.Health > 0 and
                    game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size + 5
             then
                table.insert(Hits, Human.RootPart)
            end
        end
    end
    return Hits
end

function Boost()
    task.spawn(function()
    	game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurveFuckWeapon()))
    end)
end

function Unboost()
    tsak.spawn(function()
    	game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("unequipWeapon",tostring(CurveFuckWeapon()))
    end)
end

local cdnormal = 0
local Animation = Instance.new("Animation")
local CooldownFastAttack = 0

FastAttack = function()
    local ac = CurveFrame.activeController
    if ac and ac.equipped then
        task.spawn(function()
            if tick() - cdnormal > 0.5 then
                ac:attack()
                cdnormal = tick()
            else
                Animation.AnimationId = ac.anims.basic[2]
                ac.humanoid:LoadAnimation(Animation):Play(1, 1)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(120), 2, "")
            end
        end)
    end
end

bs = tick()
task.spawn(function()
	while task.wait(_G.Fast_Delay) do
		if FastAttackSpeed then
		    _G.Fast = true
			if bs - tick() > 0.75 then
				task.wait()
				bs = tick()
			end
			pcall(function()
				for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
					if v.Humanoid.Health > 0 then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
							FastAttack()
							task.wait()
							Boost()
						end
					end
				end
			end)
		end
	end
end)

k = tick()
task.spawn(function()
    if _G.Fast then
    while task.wait(.2) do
            if k - tick() > 0.75 then
                task.wait()
                k = tick()
            end
            end
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Humanoid.Health > 0 then
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            task.wait(.000025)
                            Unboost()
                        end
                    end
                end
            end)
    end
end)

task.spawn(function()
    while task.wait() do
        if getgenv().LevelFarm == true then
	   pcall(function()
		CurveFrame.activeController.timeToNextAttack = -1
		CurveFrame.activeController.focusStart = 0
		CurveFrame.activeController.hitboxMagnitude = 200
		CurveFrame.activeController.humanoid.AutoRotate = true
		CurveFrame.activeController.increment = 1 + 1 / 1
	   end)
    end
    end
end)

abc = true
task.spawn(function()
    local a = game.Players.LocalPlayer
    local b = require(a.PlayerScripts.CombatFramework.Particle)
    local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
    if not shared.orl then
        shared.orl = c.wrapAttackAnimationAsync
    end
    if not shared.cpc then
        shared.cpc = b.play
    end
    if abc then
        pcall(function()
            c.wrapAttackAnimationAsync = function(d, e, f, g, h)
            local i = c.getBladeHits(e, f, g)
            if i then
                b.play = function()
                end
                d:Play(0.25, 0.25, 0.25)
                h(i)
                b.play = shared.cpc
                wait(.5)
                d:Stop()
            end
            end
        end)
    end
end)

local Window = OrionLib:MakeWindow({Name = "Mtriet Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Mtriet Kaitun", IntroEnabled = true, IntroText = "Mtriet Hub - Kaitun Version"})


local Tab = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddLabel("Kaitun Make By Flontium2 ( Developer At Mtriet Hub )")
Tab:AddLabel("PC/Mobile: ✅")
Tab:AddButton({
	Name = "Copy Server Discord",
	Callback = function()
      	setclipboard(tostring("https://discord.gg/mFzWdBUn45"))
  	end    
})


function checkquest2()
    if usequest and MyLevel == 1 and MyLevel >= 120 then 
     return true
   end
  return false
  end

local Mouse = game.Players.LocalPlayer:GetMouse()

if game.PlaceId == 2753915549 then  OldWolrd=true elseif game.PlaceId == 4442272183 then SecondSea=true elseif game.PlaceId == 7449423635 then ThirdSea=true else game.Players.LocalPlayer:Kick("You Have Banned") end

function QuestCheck()
MyLevel = game.Players.LocalPlayer.Character.Data.Level.Value
if OldWolrd then
    if MyLevel == 1 or MyLevel <= 120 then
        usequest = false
        Mon = "God's Guard [Lv. 450]"
        LevelQuest = 1
        NameQuest = "SkyExp1Quest"
        NameMon = "God's Guard"
        CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
        CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.925427)
        if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
            ByPass(CFrameQuest)
        end
    elseif MyLevel == 300 or MyLevel >= 324 then
        Mon = "Military Soldier [Lv. 300]"
        LevelQuest = 1
        NameQuest = "MagmaQuest"
        NameMon = "Military Soldier"
        CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
        CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
            Bypass(CFrameQuest)
        end
    elseif MyLevel == 325 or MyLevel <= 374 then
        Mon = "Military Spy [Lv. 325]"
        LevelQuest = 2
        NameQuest = "MagmaQuest"
        NameMon = "Military Spy"
        CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
        CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
            Bypass(CFrameQuest)
        end
    elseif MyLevel == 375 or MyLevel <= 399 then
        Mon = "Fishman Warrior [Lv. 375]"
        LevelQuest = 1
        NameQuest = "FishmanQuest"
        NameMon = "Fishman Warrior"
        CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
        CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
        if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
            Bypass(CFrameQuest)
        end
    elseif MyLevel == 400 or MyLevel <= 449 then
        Mon = "Fishman Commando [Lv. 400]"
        LevelQuest = 2
        NameQuest = "FishmanQuest"
        NameMon = "Fishman Commando"
        CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
        CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
        if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
            Bypass(CFrameQuest)
        end
    elseif MyLevel == 450 or MyLevel <= 474 then
        Mon = "God's Guard [Lv. 450]"
        LevelQuest = 1
        NameQuest = "SkyExp1Quest"
        NameMon = "God's Guard"
        CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
        CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
        if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
            Bypass(CFrameQuest)
        end
    elseif MyLevel == 475 or MyLevel <= 524 then
        Mon = "Shanda [Lv. 475]"
        LevelQuest = 2
        NameQuest = "SkyExp1Quest"
        NameMon = "Shanda"
        CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
        CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
        if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
            Bypass(CFrameQuest)
        end
    elseif MyLevel == 525 or MyLevel <= 549 then
        Mon = "Royal Squad [Lv. 525]"
        LevelQuest = 1
        NameQuest = "SkyExp2Quest"
        NameMon = "Royal Squad"
        CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
            Bypass(CFrameQuest)
        end
    elseif MyLevel == 550 or MyLevel <= 624 then
        Mon = "Royal Soldier [Lv. 550]"
        LevelQuest = 2
        NameQuest = "SkyExp2Quest"
        NameMon = "Royal Soldier"
        CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
            Bypass(CFrameQuest)
        end
    elseif MyLevel == 625 or MyLevel <= 649 then
        Mon = "Galley Pirate [Lv. 625]"
        LevelQuest = 1
        NameQuest = "FountainQuest"
        NameMon = "Galley Pirate"
        CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
        CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
            Bypass(CFrameQuest)
        end
    elseif MyLevel >= 650 then
        Mon = "Galley Captain [Lv. 650]"
        LevelQuest = 2
        NameQuest = "FountainQuest"
        NameMon = "Galley Captain"
        CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
        CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
            Bypass(CFrameQuest)
        end
        if SecondSea then
        elseif World2 then
            if MyLevel == 700 or MyLevel <= 724 then
                Mon = "Raider [Lv. 700]"
                LevelQuest = 1
                NameQuest = "Area1Quest"
                NameMon = "Raider"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 725 or MyLevel <= 774 then
                Mon = "Mercenary [Lv. 725]"
                LevelQuest = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 775 or MyLevel <= 799 then
                Mon = "Swan Pirate [Lv. 775]"
                LevelQuest = 1
                NameQuest = "Area2Quest"
                NameMon = "Swan Pirate"
                CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 800 or MyLevel <= 874 then
                Mon = "Factory Staff [Lv. 800]"
                NameQuest = "Area2Quest"
                LevelQuest = 2
                NameMon = "Factory Staff"
                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 875 or MyLevel <= 899 then
                Mon = "Marine Lieutenant [Lv. 875]"
                LevelQuest = 1
                NameQuest = "MarineQuest3"
                NameMon = "Marine Lieutenant"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 900 or MyLevel <= 949 then
                Mon = "Marine Captain [Lv. 900]"
                LevelQuest = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 950 or MyLevel <= 974 then
                Mon = "Zombie [Lv. 950]"
                LevelQuest = 1
                NameQuest = "ZombieQuest"
                NameMon = "Zombie"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 975 or MyLevel <= 999 then
                Mon = "Vampire [Lv. 975]"
                LevelQuest = 2
                NameQuest = "ZombieQuest"
                NameMon = "Vampire"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 1000 or MyLevel <= 1049 then
                Mon = "Snow Trooper [Lv. 1000]"
                LevelQuest = 1
                NameQuest = "SnowMountainQuest"
                NameMon = "Snow Trooper"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 1050 or MyLevel <= 1099 then
                Mon = "Winter Warrior [Lv. 1050]"
                LevelQuest = 2
                NameQuest = "SnowMountainQuest"
                NameMon = "Winter Warrior"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 1100 or MyLevel <= 1124 then
                Mon = "Lab Subordinate [Lv. 1100]"
                LevelQuest = 1
                NameQuest = "IceSideQuest"
                NameMon = "Lab Subordinate"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 1125 or MyLevel <= 1174 then
                Mon = "Horned Warrior [Lv. 1125]"
                LevelQuest = 2
                NameQuest = "IceSideQuest"
                NameMon = "Horned Warrior"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 1175 or MyLevel <= 1199 then
                Mon = "Magma Ninja [Lv. 1175]"
                LevelQuest = 1
                NameQuest = "FireSideQuest"
                NameMon = "Magma Ninja"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 1200 or MyLevel <= 1249 then
                Mon = "Lava Pirate [Lv. 1200]"
                LevelQuest = 2
                NameQuest = "FireSideQuest"
                NameMon = "Lava Pirate"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 1250 or MyLevel <= 1274 then
                Mon = "Ship Deckhand [Lv. 1250]"
                LevelQuest = 1
                NameQuest = "ShipQuest1"
                NameMon = "Ship Deckhand"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
                CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 1275 or MyLevel <= 1299 then
                Mon = "Ship Engineer [Lv. 1275]"
                LevelQuest = 2
                NameQuest = "ShipQuest1"
                NameMon = "Ship Engineer"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
                CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end          
            elseif MyLevel == 1300 or MyLevel <= 1324 then
                Mon = "Ship Steward [Lv. 1300]"
                LevelQuest = 1
                NameQuest = "ShipQuest2"
                NameMon = "Ship Steward"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
                CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 1325 or MyLevel <= 1349 then
                Mon = "Ship Officer [Lv. 1325]"
                LevelQuest = 2
                NameQuest = "ShipQuest2"
                NameMon = "Ship Officer"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 1350 or MyLevel <= 1374 then
                Mon = "Arctic Warrior [Lv. 1350]"
                LevelQuest = 1
                NameQuest = "FrostQuest"
                NameMon = "Arctic Warrior"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 1375 or MyLevel <= 1424 then
                Mon = "Snow Lurker [Lv. 1375]"
                LevelQuest = 2
                NameQuest = "FrostQuest"
                NameMon = "Snow Lurker"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel == 1425 or MyLevel <= 1449 then
                Mon = "Sea Soldier [Lv. 1425]"
                LevelQuest = 1
                NameQuest = "ForgottenQuest"
                NameMon = "Sea Soldier"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            elseif MyLevel >= 1450 then
                Mon = "Water Fighter [Lv. 1450]"
                LevelQuest = 2
                NameQuest = "ForgottenQuest"
                NameMon = "Water Fighter"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
                if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                    Bypass(CFrameQuest)
                end
            if ThirdSea then
                if MyLevel == 1500 or MyLevel <= 1524 then
                    Mon = "Pirate Millionaire [Lv. 1500]"
                    LevelQuest = 1
                    NameQuest = "PiratePortQuest"
                    NameMon = "Pirate Millionaire"
                    CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                    CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 1525 or MyLevel <= 1574 then
                    Mon = "Pistol Billionaire [Lv. 1525]"
                    LevelQuest = 2
                    NameQuest = "PiratePortQuest"
                    NameMon = "Pistol Billionaire"
                    CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                    CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 1575 or MyLevel <= 1599 then
                    Mon = "Dragon Crew Warrior [Lv. 1575]"
                    LevelQuest = 1
                    NameQuest = "AmazonQuest"
                    NameMon = "Dragon Crew Warrior"
                    CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                    CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 1600 or MyLevel <= 1624 then 
                    Mon = "Dragon Crew Archer [Lv. 1600]"
                    NameQuest = "AmazonQuest"
                    LevelQuest = 2
                    NameMon = "Dragon Crew Archer"
                    CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
                    CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 1625 or MyLevel <= 1649 then
                    Mon = "Female Islander [Lv. 1625]"
                    NameQuest = "AmazonQuest2"
                    LevelQuest = 1
                    NameMon = "Female Islander"
                    CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                    CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 1650 or MyLevel <= 1699 then 
                    Mon = "Giant Islander [Lv. 1650]"
                    NameQuest = "AmazonQuest2"
                    LevelQuest = 2
                    NameMon = "Giant Islander"
                    CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                    CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 1700 or MyLevel <= 1724 then
                    Mon = "Marine Commodore [Lv. 1700]"
                    LevelQuest = 1
                    NameQuest = "MarineTreeIsland"
                    NameMon = "Marine Commodore"
                    CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                    CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 1725 or MyLevel <= 1774 then
                    Mon = "Marine Rear Admiral [Lv. 1725]"
                    NameMon = "Marine Rear Admiral"
                    NameQuest = "MarineTreeIsland"
                    LevelQuest = 2
                    CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                    CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 1775 or MyLevel <= 1799 then
                    Mon = "Fishman Raider [Lv. 1775]"
                    LevelQuest = 1
                    NameQuest = "DeepForestIsland3"
                    NameMon = "Fishman Raider"
                    CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                    CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 1800 or MyLevel <= 1824 then
                    Mon = "Fishman Captain [Lv. 1800]"
                    LevelQuest = 2
                    NameQuest = "DeepForestIsland3"
                    NameMon = "Fishman Captain"
                    CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                    CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 1825 or MyLevel <= 1849 then
                    Mon = "Forest Pirate [Lv. 1825]"
                    LevelQuest = 1
                    NameQuest = "DeepForestIsland"
                    NameMon = "Forest Pirate"
                    CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                    CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 1850 or MyLevel <= 1899 then
                    Mon = "Mythological Pirate [Lv. 1850]"
                    LevelQuest = 2
                    NameQuest = "DeepForestIsland"
                    NameMon = "Mythological Pirate"
                    CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
                    CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 1900 or MyLevel <= 1924 then
                    Mon = "Jungle Pirate [Lv. 1900]"
                    LevelQuest = 1
                    NameQuest = "DeepForestIsland2"
                    NameMon = "Jungle Pirate"
                    CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                    CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 1925 or MyLevel <= 1974 then
                    Mon = "Musketeer Pirate [Lv. 1925]"
                    LevelQuest = 2
                    NameQuest = "DeepForestIsland2"
                    NameMon = "Musketeer Pirate"
                    CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                    CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 1975 or MyLevel <= 1999 then
                    Mon = "Reborn Skeleton [Lv. 1975]"
                    LevelQuest = 1
                    NameQuest = "HauntedQuest1"
                    NameMon = "Reborn Skeleton"
                    CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                    CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 2000 or MyLevel <= 2024 then
                    Mon = "Living Zombie [Lv. 2000]"
                    LevelQuest = 2
                    NameQuest = "HauntedQuest1"
                    NameMon = "Living Zombie"
                    CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                    CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 2025 or MyLevel <= 2049 then
                    Mon = "Demonic Soul [Lv. 2025]"
                    LevelQuest = 1
                    NameQuest = "HauntedQuest2"
                    NameMon = "Demonic Soul"
                    CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
                    CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 2050 or MyLevel <= 2074 then
                    Mon = "Posessed Mummy [Lv. 2050]"
                    LevelQuest = 2
                    NameQuest = "HauntedQuest2"
                    NameMon = "Posessed Mummy"
                    CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                    CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 2075 or MyLevel <= 2099 then
                    Mon = "Peanut Scout [Lv. 2075]"
                    LevelQuest = 1
                    NameQuest = "NutsIslandQuest"
                    NameMon = "Peanut Scout"
                    CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                    CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 2100 or MyLevel <= 2124 then
                    Mon = "Peanut President [Lv. 2100]"
                    LevelQuest = 2
                    NameQuest = "NutsIslandQuest"
                    NameMon = "Peanut President"
                    CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                    CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 2125 or MyLevel <= 2149 then
                    Mon = "Ice Cream Chef [Lv. 2125]"
                    LevelQuest = 1
                    NameQuest = "IceCreamIslandQuest"
                    NameMon = "Ice Cream Chef"
                    CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                    CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 2150 or MyLevel <= 2199 then
                    Mon = "Ice Cream Commander [Lv. 2150]"
                    LevelQuest = 2
                    NameQuest = "IceCreamIslandQuest"
                    NameMon = "Ice Cream Commander"
                    CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                    CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 2200 or MyLevel <= 2224 then
                    Mon = "Cookie Crafter [Lv. 2200]"
                    LevelQuest = 1
                    NameQuest = "CakeQuest1"
                    NameMon = "Cookie Crafter"
                    CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                    CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 2225 or MyLevel <= 2249 then
                    Mon = "Cake Guard [Lv. 2225]"
                    LevelQuest = 2
                    NameQuest = "CakeQuest1"
                    NameMon = "Cake Guard"
                    CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                    CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end

                elseif MyLevel == 2250 or MyLevel <= 2274 then
                    Mon = "Baking Staff [Lv. 2250]"
                    LevelQuest = 1
                    NameQuest = "CakeQuest2"
                    NameMon = "Baking Staff"
                    CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                    CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 2275 or MyLevel <= 2299 then
                    Mon = "Head Baker [Lv. 2275]"
                    LevelQuest = 2
                    NameQuest = "CakeQuest2"
                    NameMon = "Head Baker"
                    CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                    CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 2300 or MyLevel <= 2324 then
                    Mon = "Cocoa Warrior [Lv. 2300]"
                    LevelQuest = 1
                    NameQuest = "ChocQuest1"
                    NameMon = "Cocoa Warrior"
                    CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                    CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 2325 or MyLevel <= 2349 then
                    Mon = "Chocolate Bar Battler [Lv. 2325]"
                    LevelQuest = 2
                    NameQuest = "ChocQuest1"
                    NameMon = "Chocolate Bar Battler"
                    CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                    CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
                elseif MyLevel == 2350 or MyLevel <= 2374 then
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                    Mon = "Sweet Thief [Lv. 2350]"
                    LevelQuest = 1
                    NameQuest = "ChocQuest2"
                    NameMon = "Sweet Thief"
                    CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                    CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 2375 or MyLevel <= 2399 then
                    Mon = "Candy Rebel [Lv. 2375]"
                    LevelQuest = 2
                    NameQuest = "ChocQuest2"
                    NameMon = "Candy Rebel"
                    CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                    CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel == 2400 or MyLevel <= 2449 then
                    Mon = "Candy Pirate [Lv. 2400]"
                    LevelQuest = 1
                    NameQuest = "CandyQuest1"
                    NameMon = "Candy Pirate"
                    CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                    CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                elseif MyLevel <= 2450 then
                    Mon = "Snow Demon [Lv. 2425]"
                    LevelQuest = 2
                    NameQuest = "CandyQuest1"
                    NameMon = "Snow Demon"
                    CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                    CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
                    if getgenv().LevelFarm and (CFrameQuest.Position - game.Players.localPlayer.Character.HumanoidRootPart.Position) > 1200 then
                        Bypass(CFrameQuest)
                    end
                end
            end
        end
            end
            end
        end
    end

function Click()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

spawn(function()
    while task.wait() do
        if _G.Hunter_Quest then
            pcall(function()
                if game.Players.LocalPlayer.Data.Level.Value >= 120 then
                    getgenv().LevelFarm = false
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.PvpDisabled.Visible == true then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnabldPvp")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        for i,v in pairs(game.Players:GetPlayers()) do
                            if not v.Data.SpawnPoint.Value == "Default" or v.Data.SpawnPoint.Value == "Town" or v.Data.SpawnPoint.Value == "Jungle" then
                                if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
                                    if v.Data.Level.Value >= 20  or v.Data.Level.Value <= 100 then
                                        repeat task.wait()
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso");
                                            end
                                            EquipWeapon(SelectToolWeapon)
                                            getgenv().ToTarget(v.Character.HumanoidRootPart.CFrame * CFrame.new(0,5,5))
                                            if (game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude < 30 then
                                                Click()
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                wait(.1)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                wait(2)
                                                game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                wait(.1)
                                                game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                            end
                                        until v.Character.Humanoid.Health <= 0 or _G.AutoKillPlayerAfterLv50 == false
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                                    end
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                                end
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                            end
                        end
                    end
                else
                    if MyLevel == 300 or MyLevel <= 324 then
                    _G.Hunter_Quest = false
                    StopTween(_G.Hunter_Quest)
                end
            end
        end)
    end
end
end)



spawn(function()
	while task.wait() do
		if getgenv().LevelFarm then
	function UseCode(Text)
				game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
			end
		UseCode("Enyo_is_Pro")
		UseCode("Magicbus")
		UseCode("JCWK")
		UseCode("Starcodeheo")
		UseCode("Bluxxy")
		UseCode("fudd10_v2")
		UseCode("3BVISITS")
		UseCode("UPD16")
		UseCode("FUDD10")
		UseCode("BIGNEWS")
		UseCode("Sub2OfficialNoobie")
		UseCode("SUB2GAMERROBOT_EXP1")
		UseCode("StrawHatMaine")
		UseCode("SUB2NOOBMASTER123")
		UseCode("Sub2Daigrock")
		UseCode("Axiore")
		UseCode("TantaiGaming")
		UseCode("STRAWHATMAINE")
		UseCode("kittgaming")
		UseCode("Magicbus")
		UseCode("JCWK")
		UseCode("Starcodeheo")
		UseCode("Bluxxy")
		UseCode("fudd10_v2")
		UseCode("Enyu_is_Pro")
		UseCode("Sub2Fer999")
		UseCode("THEGREATACE")
		UseCode("SUB2GAMERROBOT_EXP1")
		UseCode("Sub2OfficialNoobie")
		UseCode("StrawHatMaine")
		UseCode("SUB2NOOBMASTER123")
		UseCode("Sub2Daigrock")
		UseCode("Axiore")
		UseCode("TantaiGaming")
		UseCode("STRAWHATMAINE")
		UseCode("JCWK")
		UseCode("Sub2Fer999")
		UseCode("Magicbus")
		UseCode("Starcodeheo")
		UseCode("Bluxxy")
		UseCode("Sub2Fer999")
		UseCode("GAMERROBOT_YT")
			end
		end
	end)

    function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end

task.spawn(
    function()
        while wait() do
            if getgenv().LevelFarm then
                pcall(
                    function()
                        local QuestTitle =
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if not string.find(QuestTitle, NameMon) then
                            StartMagnet = true
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                        end
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            StartMagnet = true
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
                                                    equip(_G.SelectWeapon)
                                                    AutoHaki()
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                                    TweenFarm(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
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
                                                StartMagnet = true
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                                    "AbandonQuest"
                                                )
                                            end
                                        end
                                    end
                                end
                            else
                                StartMagnet = true
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
                                        StartMagnet = true
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

task.spawn(function()
	while wait() do
		pcall(function()
			if _G.SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
            end
        end)
    end
end)



function TweenFarm(P1)
    Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distrance < 15 then
        Speed = 10000
    elseif Distrance < 50 then
        Speed = 2000
    elseif Distrance < 100 then
        Speed = 1000
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P1}
    ):Play()
end

function Tween(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
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
        getgenv().Noclip = false
    end
end
function GetDistance(target)
    return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end



function ByPass(Position)
    game.Players.LocalPlayer.Character.Head:Destroy()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
    wait(.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end


local decalsyeeted = true
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("BasePart") then
        v.Material = Enum.Material.Plastic
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = Enum.Material.Plastic
        v.Reflectance = 0
        v.TextureID = "10385902758728957"
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("PostEffect") then
        e.Enabled = false
    end
end

spawn(function()                     
while wait(.1) do    
    if getgenv().LevelFarm then                                            
        for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do                            
            if v.ToolTip == "Melee" then                           
                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then                               
                    local ToolSe = tostring(v.Name)                              
                local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)                              
                wait()                              
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)                                   
                end                               
                end    
                end                       
                end                                          
                end                 
                end)

--auto buy legendary sword
task.spawn(
    function()
        while wait() do
            if getgenv().LevelFarm then
                pcall(
                    function()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3")
                    end
                )
            end
        end
    end
)
  
-- stats
task.spawn(
    function()
        while wait() do
            pcall(
                function()
                    if getgenv().LevelFarm then
                        if game:GetService("Players").localPlayer.Data.Stats.Melee.Level.Value <= 2450 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "AddPoint",
                                "Melee",
                                _G.PointStats
                            )
                        elseif game:GetService("Players").Data.Stats.Sword.Level.Value <= 2450 then
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

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Start Kaitun",
	Default = false,
	Callback = function(Value)
		getgenv().LevelFarm = Value
        _G.Hunter_Quest = Value
	end    
})

