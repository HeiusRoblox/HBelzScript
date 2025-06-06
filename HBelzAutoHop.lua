--- Function Là Lấy Từ Source HBelzV4Banana ( Skid Hiru Hub )
--- Ai mà Decode được script ( sau khi mã hóa ) thì mong bạn đừng share cho ai nhé!
--- Mình Cảm Ơn!
if not game:IsLoaded() then
    game.Loaded:Wait()
end
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local Player = Players.LocalPlayer
local Remotes = ReplicatedStorage:WaitForChild("Remotes", 5)
local CommF = Remotes:WaitForChild("CommF_", 5) 
local PlayerGui = Player:WaitForChild("PlayerGui", 5)
local MainGui = PlayerGui:WaitForChild("Main", 5)
local lastNotificationTime = 0
local notificationCooldown = 10
local currentTime = tick()
if currentTime - lastNotificationTime >= notificationCooldown then
    lastNotificationTime = currentTime
end
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local EffectContainer = ReplicatedStorage:FindFirstChild("Effect") and ReplicatedStorage.Effect:FindFirstChild("Container")
if EffectContainer then
    local Death = EffectContainer:FindFirstChild("Death")
    if Death then
        local success, result = pcall(require, Death)
        if success and type(result) == "function" then
            hookfunction(result, function() end)
        end
    end
    local Respawn = EffectContainer:FindFirstChild("Respawn")
    if Respawn then
        local success, result = pcall(require, Respawn)
        if success and type(result) == "function" then
            hookfunction(result, function() end)
        end
    end
end
local GuideModule = ReplicatedStorage:FindFirstChild("GuideModule")
if GuideModule then
    local success, module = pcall(require, GuideModule)
    if success and module and type(module.ChangeDisplayedNPC) == "function" then
        hookfunction(module.ChangeDisplayedNPC, function() end)
    end
end
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Util = ReplicatedStorage:WaitForChild("Util", 5)
if Util then
    local CameraShaker = Util:FindFirstChild("CameraShaker")
    if CameraShaker then
        require(CameraShaker):Stop()
    end
end
local placeId = game.PlaceId
local worldMap = {
    [2753915549] = true,
    [4442272183] = true,
    [7449423635] = true
}
if worldMap[placeId] then
    if placeId == 2753915549 then
        World1 = true
    elseif placeId == 4442272183 then
        World2 = true
    elseif placeId == 7449423635 then
        World3 = true
    end
else
    game.Players.LocalPlayer:Kick("Unsupported Game")
end
repeat
    wait()
until game.Players.LocalPlayer.Character
function CheckQuest() 
    MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel >= 1 and MyLevel <= 9 then
            Mon = "Bandit"
            LevelQuest = 1
            NameQuest = "BanditQuest1"
            NameMon = "Bandit"
            CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif MyLevel >= 10 and MyLevel <= 14 then
            Mon = "Monkey"
            LevelQuest = 1
            NameQuest = "JungleQuest"
            NameMon = "Monkey"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif MyLevel >= 15 and MyLevel <= 29 then
            Mon = "Gorilla"
            LevelQuest = 2
            NameQuest = "JungleQuest"
            NameMon = "Gorilla"
            CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif MyLevel >= 30 and MyLevel <= 39 then
            Mon = "Pirate"
            LevelQuest = 1
            NameQuest = "BuggyQuest1"
            NameMon = "Pirate"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif MyLevel >= 40 and MyLevel <= 59 then
            Mon = "Brute"
            LevelQuest = 2
            NameQuest = "BuggyQuest1"
            NameMon = "Brute"
            CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif MyLevel >= 60 and MyLevel <= 74 then
            Mon = "Desert Bandit"
            LevelQuest = 1
            NameQuest = "DesertQuest"
            NameMon = "Desert Bandit"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif MyLevel >= 75 and MyLevel <= 89 then
            Mon = "Desert Officer"
            LevelQuest = 2
            NameQuest = "DesertQuest"
            NameMon = "Desert Officer"
            CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif MyLevel >= 90 and MyLevel <= 99 then
            Mon = "Snow Bandit"
            LevelQuest = 1
            NameQuest = "SnowQuest"
            NameMon = "Snow Bandit"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
        elseif MyLevel >= 100 and MyLevel <= 119 then
            Mon = "Snowman"
            LevelQuest = 2
            NameQuest = "SnowQuest"
            NameMon = "Snowman"
            CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
            CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
        elseif MyLevel >= 120 and MyLevel <= 149 then
            Mon = "Chief Petty Officer"
            LevelQuest = 1
            NameQuest = "MarineQuest2"
            NameMon = "Chief Petty Officer"
            CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif MyLevel >= 150 and MyLevel <= 174 then
            Mon = "Sky Bandit"
            LevelQuest = 1
            NameQuest = "SkyQuest"
            NameMon = "Sky Bandit"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif MyLevel >= 175 and MyLevel <= 189 then
            Mon = "Dark Master"
            LevelQuest = 2
            NameQuest = "SkyQuest"
            NameMon = "Dark Master"
            CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif MyLevel >= 190 and MyLevel <= 209 then
            Mon = "Prisoner"
            LevelQuest = 1
            NameQuest = "PrisonerQuest"
            NameMon = "Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif MyLevel >= 210 and MyLevel <= 249 then
            Mon = "Dangerous Prisoner"
            LevelQuest = 2
            NameQuest = "PrisonerQuest"
            NameMon = "Dangerous Prisoner"
            CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif MyLevel >= 250 and MyLevel <= 274 then
            Mon = "Toga Warrior"
            LevelQuest = 1
            NameQuest = "ColosseumQuest"
            NameMon = "Toga Warrior"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif MyLevel >= 275 and MyLevel <= 299 then
            Mon = "Gladiator"
            LevelQuest = 2
            NameQuest = "ColosseumQuest"
            NameMon = "Gladiator"
            CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif MyLevel >= 300 and MyLevel <= 324 then
            Mon = "Military Soldier"
            LevelQuest = 1
            NameQuest = "MagmaQuest"
            NameMon = "Military Soldier"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif MyLevel >= 325 and MyLevel <= 374 then
            Mon = "Military Spy"
            LevelQuest = 2
            NameQuest = "MagmaQuest"
            NameMon = "Military Spy"
            CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        elseif MyLevel >= 375 and MyLevel <= 399 then
            Mon = "Fishman Warrior"
            LevelQuest = 1
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Warrior"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel >= 400 and MyLevel <= 449 then
            Mon = "Fishman Commando"
            LevelQuest = 2
            NameQuest = "FishmanQuest"
            NameMon = "Fishman Commando"
            CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            end
        elseif MyLevel >= 450 and MyLevel <= 474 then
            Mon = "God's Guard"
            LevelQuest = 1
            NameQuest = "SkyExp1Quest"
            NameMon = "God's Guard"
            CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            end
        elseif MyLevel >= 475 and MyLevel <= 524 then
            Mon = "Shanda"
            LevelQuest = 2
            NameQuest = "SkyExp1Quest"
            NameMon = "Shanda"
            CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            end
        elseif MyLevel >= 525 and MyLevel <= 549 then
            Mon = "Royal Squad"
            LevelQuest = 1
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Squad"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif MyLevel >= 550 and MyLevel <= 624 then
            Mon = "Royal Soldier"
            LevelQuest = 2
            NameQuest = "SkyExp2Quest"
            NameMon = "Royal Soldier"
            CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        elseif MyLevel >= 625 and MyLevel <= 649 then
            Mon = "Galley Pirate"
            LevelQuest = 1
            NameQuest = "FountainQuest"
            NameMon = "Galley Pirate"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif MyLevel >= 650 then
            Mon = "Galley Captain"
            LevelQuest = 2
            NameQuest = "FountainQuest"
            NameMon = "Galley Captain"
            CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
            CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        end
    elseif World2 then
        if MyLevel >= 700 and MyLevel <= 724 then
            Mon = "Raider"
            LevelQuest = 1
            NameQuest = "Area1Quest"
            NameMon = "Raider"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif MyLevel >= 725 and MyLevel <= 774 then
            Mon = "Mercenary"
            LevelQuest = 2
            NameQuest = "Area1Quest"
            NameMon = "Mercenary"
            CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif MyLevel >= 775 and MyLevel <= 799 then
            Mon = "Swan Pirate"
            LevelQuest = 1
            NameQuest = "Area2Quest"
            NameMon = "Swan Pirate"
            CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif MyLevel >= 800 and MyLevel <= 874 then
            Mon = "Factory Staff"
            NameQuest = "Area2Quest"
            LevelQuest = 2
            NameMon = "Factory Staff"
            CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
        elseif MyLevel >= 875 and MyLevel <= 899 then
            Mon = "Marine Lieutenant"
            LevelQuest = 1
            NameQuest = "MarineQuest3"
            NameMon = "Marine Lieutenant"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif MyLevel >= 900 and MyLevel <= 949 then
            Mon = "Marine Captain"
            LevelQuest = 2
            NameQuest = "MarineQuest3"
            NameMon = "Marine Captain"
            CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
        elseif MyLevel >= 950 and MyLevel <= 974 then
            Mon = "Zombie"
            LevelQuest = 1
            NameQuest = "ZombieQuest"
            NameMon = "Zombie"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif MyLevel >= 975 and MyLevel <= 999 then
            Mon = "Vampire"
            LevelQuest = 2
            NameQuest = "ZombieQuest"
            NameMon = "Vampire"
            CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif MyLevel >= 1000 and MyLevel <= 1049 then
            Mon = "Snow Trooper"
            LevelQuest = 1
            NameQuest = "SnowMountainQuest"
            NameMon = "Snow Trooper"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif MyLevel >= 1050 and MyLevel <= 1099 then
            Mon = "Winter Warrior"
            LevelQuest = 2
            NameQuest = "SnowMountainQuest"
            NameMon = "Winter Warrior"
            CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif MyLevel >= 1100 and MyLevel <= 1124 then
            Mon = "Lab Subordinate"
            LevelQuest = 1
            NameQuest = "IceSideQuest"
            NameMon = "Lab Subordinate"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif MyLevel >= 1125 and MyLevel <= 1174 then
            Mon = "Horned Warrior"
            LevelQuest = 2
            NameQuest = "IceSideQuest"
            NameMon = "Horned Warrior"
            CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif MyLevel >= 1175 and MyLevel <= 1199 then
            Mon = "Magma Ninja"
            LevelQuest = 1
            NameQuest = "FireSideQuest"
            NameMon = "Magma Ninja"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif MyLevel >= 1200 and MyLevel <= 1249 then
            Mon = "Lava Pirate"
            LevelQuest = 2
            NameQuest = "FireSideQuest"
            NameMon = "Lava Pirate"
            CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif MyLevel >= 1250 and MyLevel <= 1274 then
            Mon = "Ship Deckhand"
            LevelQuest = 1
            NameQuest = "ShipQuest1"
            NameMon = "Ship Deckhand"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1275 and MyLevel <= 1299 then
            Mon = "Ship Engineer"
            LevelQuest = 2
            NameQuest = "ShipQuest1"
            NameMon = "Ship Engineer"
            CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end             
        elseif MyLevel >= 1300 and MyLevel <= 1324 then
            Mon = "Ship Steward"
            LevelQuest = 1
            NameQuest = "ShipQuest2"
            NameMon = "Ship Steward"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1325 and MyLevel <= 1349 then
            Mon = "Ship Officer"
            LevelQuest = 2
            NameQuest = "ShipQuest2"
            NameMon = "Ship Officer"
            CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
            end
        elseif MyLevel >= 1350 and MyLevel <= 1374 then
            Mon = "Arctic Warrior"
            LevelQuest = 1
            NameQuest = "FrostQuest"
            NameMon = "Arctic Warrior"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
            if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
            end
        elseif MyLevel >= 1375 and MyLevel <= 1424 then
            Mon = "Snow Lurker"
            LevelQuest = 2
            NameQuest = "FrostQuest"
            NameMon = "Snow Lurker"
            CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif MyLevel >= 1425 and MyLevel <= 1449 then
            Mon = "Sea Soldier"
            LevelQuest = 1
            NameQuest = "ForgottenQuest"
            NameMon = "Sea Soldier"
            CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif MyLevel >= 1450 then
            Mon = "Water Fighter"
            LevelQuest = 2
            NameQuest = "ForgottenQuest"
            NameMon = "Water Fighter"
            CFrameQuest = CFrame.new(-3054, 240, -10146)
            CFrameMon = CFrame.new(-3291, 252, -10501)
        end
    elseif World3 then
        if MyLevel >= 1500 and MyLevel <= 1524 then
            Mon = "Pirate Millionaire"
            LevelQuest = 1
            NameQuest = "PiratePortQuest"
            NameMon = "Pirate Millionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
        elseif MyLevel >= 1525 and MyLevel <= 1574 then
            Mon = "Pistol Billionaire"
            LevelQuest = 2
            NameQuest = "PiratePortQuest"
            NameMon = "Pistol Billionaire"
            CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
            CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
        elseif MyLevel >= 1575 and MyLevel <= 1599 then
            Mon = "Dragon Crew Warrior"
            LevelQuest = 1
            NameQuest = "DragonCrewQuest"
            NameMon = "Dragon Crew Warrior"
            CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
            CFrameMon = CFrame.new(6920.71435546875, 56.15597152709961, -942.5044555664062)
        elseif MyLevel >= 1600 and MyLevel <= 1624 then 
            Mon = "Dragon Crew Archer"
            NameQuest = "DragonCrewQuest"
            LevelQuest = 2
            NameMon = "Dragon Crew Archer"
            CFrameQuest = CFrame.new(6738.96142578125, 127.81645965576172, -713.511474609375)
            CFrameMon = CFrame.new(6817.91259765625, 484.804443359375, 513.4141235351562)
        elseif MyLevel >= 1625 and MyLevel <= 1649 then
            Mon = "Hydra Enforcer"
            NameQuest = "VenomCrewQuest"
            LevelQuest = 1
            NameMon = "Hydra Enforcer"
            CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
            CFrameMon = CFrame.new(4584.69287109375, 1002.6435546875, 705.7958984375)
        elseif MyLevel >= 1650 and MyLevel <= 1699 then 
            Mon = "Venomous Assailant"
            NameQuest = "VenomCrewQuest"
            LevelQuest = 2
            NameMon = "Venomous Assailant"
            CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609375, 758.6944580078125)
            CFrameMon = CFrame.new(4638.78564453125, 1078.94091796875, 881.8002319335938)        
        elseif MyLevel >= 1700 and MyLevel <= 1724 then
            Mon = "Marine Commodore"
            LevelQuest = 1
            NameQuest = "MarineTreeIsland"
            NameMon = "Marine Commodore"
            CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif MyLevel >= 1725 and MyLevel <= 1774 then
            Mon = "Marine Rear Admiral"
            NameMon = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            LevelQuest = 2
            CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif MyLevel >= 1775 and MyLevel <= 1799 then
            Mon = "Fishman Raider"
            LevelQuest = 1
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Raider"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif MyLevel >= 1800 and MyLevel <= 1824 then
            Mon = "Fishman Captain"
            LevelQuest = 2
            NameQuest = "DeepForestIsland3"
            NameMon = "Fishman Captain"
            CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
        elseif MyLevel >= 1825 and MyLevel <= 1849 then
            Mon = "Forest Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland"
            NameMon = "Forest Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif MyLevel >= 1850 and MyLevel <= 1899 then
            Mon = "Mythological Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland"
            NameMon = "Mythological Pirate"
            CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif MyLevel >= 1900 and MyLevel <= 1924 then
            Mon = "Jungle Pirate"
            LevelQuest = 1
            NameQuest = "DeepForestIsland2"
            NameMon = "Jungle Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif MyLevel >= 1925 and MyLevel <= 1974 then
            Mon = "Musketeer Pirate"
            LevelQuest = 2
            NameQuest = "DeepForestIsland2"
            NameMon = "Musketeer Pirate"
            CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif MyLevel >= 1975 and MyLevel <= 1999 then
            Mon = "Reborn Skeleton"
            LevelQuest = 1
            NameQuest = "HauntedQuest1"
            NameMon = "Reborn Skeleton"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif MyLevel >= 2000 and MyLevel <= 2024 then
            Mon = "Living Zombie"
            LevelQuest = 2
            NameQuest = "HauntedQuest1"
            NameMon = "Living Zombie"
            CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif MyLevel >= 2025 and MyLevel <= 2049 then
            Mon = "Demonic Soul"
            LevelQuest = 1
            NameQuest = "HauntedQuest2"
            NameMon = "Demonic Soul"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif MyLevel >= 2050 and MyLevel <= 2074 then
            Mon = "Posessed Mummy"
            LevelQuest = 2
            NameQuest = "HauntedQuest2"
            NameMon = "Posessed Mummy"
            CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif MyLevel >= 2075 and MyLevel <= 2099 then
            Mon = "Peanut Scout"
            LevelQuest = 1
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif MyLevel >= 2100 and MyLevel <= 2124 then
            Mon = "Peanut President"
            LevelQuest = 2
            NameQuest = "NutsIslandQuest"
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif MyLevel >= 2125 and MyLevel <= 2149 then
            Mon = "Ice Cream Chef"
            LevelQuest = 1
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif MyLevel >= 2150 and MyLevel <= 2199 then
            Mon = "Ice Cream Commander"
            LevelQuest = 2
            NameQuest = "IceCreamIslandQuest"
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif MyLevel >= 2200 and MyLevel <= 2224 then
            Mon = "Cookie Crafter"
            LevelQuest = 1
            NameQuest = "CakeQuest1"
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif MyLevel >= 2225 and MyLevel <= 2249 then
            Mon = "Cake Guard"
            LevelQuest = 2
            NameQuest = "CakeQuest1"
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif MyLevel >= 2250 and MyLevel <= 2274 then
            Mon = "Baking Staff"
            LevelQuest = 1
            NameQuest = "CakeQuest2"
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif MyLevel >= 2275 and MyLevel <= 2299 then
            Mon = "Head Baker"
            LevelQuest = 2
            NameQuest = "CakeQuest2"
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif MyLevel >= 2300 and MyLevel <= 2324 then
            Mon = "Cocoa Warrior"
            LevelQuest = 1
            NameQuest = "ChocQuest1"
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif MyLevel >= 2325 and MyLevel <= 2349 then
            Mon = "Chocolate Bar Battler"
            LevelQuest = 2
            NameQuest = "ChocQuest1"
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif MyLevel >= 2350 and MyLevel <= 2374 then
            Mon = "Sweet Thief"
            LevelQuest = 1
            NameQuest = "ChocQuest2"
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif MyLevel >= 2375 and MyLevel <= 2399 then
            Mon = "Candy Rebel"
            LevelQuest = 2
            NameQuest = "ChocQuest2"
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif MyLevel >= 2400 and MyLevel <= 2424 then
            Mon = "Candy Pirate"
            LevelQuest = 1
            NameQuest = "CandyQuest1"
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif MyLevel >= 2425 and MyLevel <= 2449 then
            Mon = "Snow Demon"
            LevelQuest = 2
            NameQuest = "CandyQuest1"
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)            
        elseif MyLevel >= 2450 and MyLevel <= 2474 then
            Mon = "Isle Outlaw"
            LevelQuest = 1
            NameQuest = "TikiQuest1"
            NameMon = "Isle Outlaw"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
        elseif MyLevel >= 2475 and MyLevel <= 2524 then
            Mon = "Island Boy"
            LevelQuest = 2
            NameQuest = "TikiQuest1"
            NameMon = "Island Boy"
            CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
            CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
        elseif MyLevel >= 2525 and MyLevel <= 2550 then
            Mon = "Isle Champion"
            LevelQuest = 2
            NameQuest = "TikiQuest2"
            NameMon = "Isle Champion"
            CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
            CFrameMon = CFrame.new(-16641.6796875, 235.7825469970703, 1031.282958984375)
        elseif MyLevel >= 2550 and MyLevel <= 2574 then
            Mon = "Serpent Hunter"
            LevelQuest = 1
            NameQuest = "TikiQuest3"
            NameMon = "Serpent Hunter"
            CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-16521.0625, 106.09285, 1488.78467, 0.469467044, 0, 0.882950008, 0, 1, 0, -0.882950008, 0, 0.469467044)
        elseif MyLevel >= 2575 then
            Mon = "Skull Slayer"
            LevelQuest = 2
            NameQuest = "TikiQuest3"
            NameMon = "Skull Slayer"
            CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401, -0, -0.308980465, 0, 1, -0, 0.308980465, 0, 0.951068401)
            CFrameMon = CFrame.new(-16855.043, 122.457253, 1478.15308, -0.999392271, 0, -0.0348687991, 0, 1, 0, 0.0348687991, 0, -0.999392271)
        end
    end
end
function MaterialMon()
    local player = game.Players.LocalPlayer
    local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    local function shouldRequestEntrance(targetPosition, distanceThreshold)
        local distance = (humanoidRootPart.Position - targetPosition).Magnitude
        if distance >= distanceThreshold then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", targetPosition)
        end
    end
    if World1 then
        if SelectMaterial == "Angel Wings" then
            MMon = { "Shanda", "Royal Squad", "Royal Soldier", "Wysper", "Thunder God" }
            MPos = CFrame.new(-4698, 845, -1912)
            SP = "Default"
            local targetPosition = Vector3.new(-4607.82275, 872.54248, -1667.55688)
            shouldRequestEntrance(targetPosition, 10000)
        elseif SelectMaterial == "Leather + Scrap Metal" then
            MMon = { "Brute", "Pirate" }
            MPos = CFrame.new(-1145, 15, 4350)
            SP = "Default"
        elseif SelectMaterial == "Magma Ore" then
            MMon = { "Military Soldier", "Military Spy", "Magma Admiral" }
            MPos = CFrame.new(-5815, 84, 8820)
            SP = "Default"
        elseif SelectMaterial == "Fish Tail" then
            MMon = { "Fishman Warrior", "Fishman Commando", "Fishman Lord" }
            MPos = CFrame.new(61123, 19, 1569)
            SP = "Default"
            local targetPosition = Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)
            shouldRequestEntrance(targetPosition, 17000)
        end
    elseif World2 then
        if SelectMaterial == "Leather + Scrap Metal" then
            MMon = { "Marine Captain" }
            MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
            SP = "Default"
        elseif SelectMaterial == "Magma Ore" then
            MMon = { "Magma Ninja", "Lava Pirate" }
            MPos = CFrame.new(-5428, 78, -5959)
            SP = "Default"
        elseif SelectMaterial == "Ectoplasm" then
            MMon = { "Ship Deckhand", "Ship Engineer", "Ship Steward", "Ship Officer" }
            MPos = CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)
            SP = "Default"
            local targetPosition = Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)
            shouldRequestEntrance(targetPosition, 18000)
        elseif SelectMaterial == "Mystic Droplet" then
            MMon = { "Water Fighter" }
            MPos = CFrame.new(-3385, 239, -10542)
            SP = "Default"
        elseif SelectMaterial == "Radioactive Material" then
            MMon = { "Factory Staff" }
            MPos = CFrame.new(295, 73, -56)
            SP = "Default"
        elseif SelectMaterial == "Vampire Fang" then
            MMon = { "Vampire" }
            MPos = CFrame.new(-6033, 7, -1317)
            SP = "Default"
        end
    elseif World3 then
        if SelectMaterial == "Leather + Scrap Metal" then
            MMon = { "Jungle Pirate", "Forest Pirate" }
            MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
            SP = "Default"
        elseif SelectMaterial == "Fish Tail" then
            MMon = { "Fishman Raider", "Fishman Captain" }
            MPos = CFrame.new(-10993, 332, -8940)
            SP = "Default"
        elseif SelectMaterial == "Conjured Cocoa" then
            MMon = { "Chocolate Bar Battler", "Cocoa Warrior" }
            MPos = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
            SP = "Default"
        elseif SelectMaterial == "Dragon Scale" then
            MMon = { "Dragon Crew Warrior" }
            MPos = CFrame.new(6594, 383, 139)
            SP = "Default"
        elseif SelectMaterial == "Gunpowder" then
            MMon = { "Pistol Billionaire" }
            MPos = CFrame.new(-469, 74, 5904)
            SP = "Default"
        elseif SelectMaterial == "Mini Tusk" then
            MMon = { "Mythological Pirate" }
            MPos = CFrame.new(-13545, 470, -6917)
            SP = "Default"
        end
    end
end
local lastHakiTime = 0
local hakiCooldown = 1
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        local currentTime = tick()
        if currentTime - lastHakiTime >= hakiCooldown then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            lastHakiTime = currentTime
        end
    end
end
local lastUnEquipTime = 0
local unEquipCooldown = 0.5
function UnEquipWeapon(Weapon)
    local currentTime = tick()
    if currentTime - lastUnEquipTime >= unEquipCooldown then
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            getgenv().NotAutoEquip = true
            game.Players.LocalPlayer.Character[Weapon].Parent = game.Players.LocalPlayer.Backpack
            getgenv().NotAutoEquip = false
        end
        lastUnEquipTime = currentTime
    end
end
local lastEquipTime = 0
local equipCooldown = 0.5
function EquipWeapon(ToolSe)
    local currentTime = tick()
    if currentTime - lastEquipTime >= equipCooldown then        
        if not getgenv().NotAutoEquip then
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            if tool then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            end
        end
        lastEquipTime = currentTime
    end
end
function BTP(p)
    local player = game.Players.LocalPlayer
    local humanoidRootPart = player.Character.HumanoidRootPart
    local humanoid = player.Character.Humanoid
    local playerGui = player.PlayerGui.Main
    local targetPosition = p.Position
    local lastPosition = humanoidRootPart.Position
    repeat
        humanoid.Health = 0
        humanoidRootPart.CFrame = p
        playerGui.Quest.Visible = false
        if (humanoidRootPart.Position - lastPosition).Magnitude > 1 then
            lastPosition = humanoidRootPart.Position
            humanoidRootPart.CFrame = p
        end
        task.wait(0.5)
    until (p.Position - humanoidRootPart.Position).Magnitude <= 2000
end
function BTPZ(v209)
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local rootPart = player.Character.HumanoidRootPart
        rootPart.CFrame = v209
    end
end
local lastTweenTime = 0
local tweenCooldown = 0.5
function fastpos(Pos)
    local currentTime = tick()
    if currentTime - lastTweenTime >= tweenCooldown then
        local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local Speed = 1000        
        local tween = game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),
            { CFrame = Pos }
        )
        tween:Play()
        lastTweenTime = currentTime
    end
end
local lastTPBTime = 0
local tpbCooldown = 0.5
function TPB(pos, boat)
    local currentTime = tick()
    if currentTime - lastTPBTime >= tpbCooldown then
        local tween_s = game:GetService("TweenService")
        local distance = (boat.CFrame.Position - pos.Position).Magnitude
        local speed = getgenv().SpeedBoat
        local info = TweenInfo.new(distance / speed, Enum.EasingStyle.Linear)
        if distance <= 25 then
            return {Stop = function() end}
        else
            local tween = tween_s:Create(boat, info, {CFrame = pos})
            tween:Play()
            lastTPBTime = currentTime
            return {
                Stop = function()
                    tween:Cancel()
                end
            }
        end
    end
end
local lastEquipTime = 0
local equipCooldown = 0.2
function EquipAllWeapon()
    pcall(function()
        local currentTime = tick()
        if currentTime - lastEquipTime >= equipCooldown then
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA('Tool') and not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening") then
                    local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
                    if ToolHumanoid then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid)
                    end
                end
            end
            lastEquipTime = currentTime
        end
    end)
end
function CheckNearestTeleporter(aI)
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    local vcspos = aI.Position
    local min = math.huge
    local min2 = math.huge
    local y = game.PlaceId
    local World1, World2, World3
    if y == 2753915549 then
        World1 = true
    elseif y == 4442272183 then
        World2 = true
    elseif y == 7449423635 then
        World3 = true
    end
    local TableLocations = {}
    if World3 then
        TableLocations = {
            ["Mansion"] = Vector3.new(-12471, 374, -7551),
            ["Hydra"] = Vector3.new(5659, 1013, -341),
            ["Caslte On The Sea"] = Vector3.new(-5092, 315, -3130),
            ["Floating Turtle"] = Vector3.new(-12001, 332, -8861),
            ["Beautiful Pirate"] = Vector3.new(5319, 23, -93),
            ["Temple Of Time"] = Vector3.new(28286, 14897, 103)
        }
    elseif World2 then
        TableLocations = {
            ["Flamingo Mansion"] = Vector3.new(-317, 331, 597),
            ["Flamingo Room"] = Vector3.new(2283, 15, 867),
            ["Cursed Ship"] = Vector3.new(923, 125, 32853),
            ["Zombie Island"] = Vector3.new(-6509, 83, -133)
        }
    elseif World1 then
        TableLocations = {
            ["Sky Island 1"] = Vector3.new(-4652, 873, -1754),
            ["Sky Island 2"] = Vector3.new(-7895, 5547, -380),
            ["Under Water Island"] = Vector3.new(61164, 5, 1820),
            ["Under Water Island Entrace"] = Vector3.new(3865, 5, -1926)
        }
    end
    local TableLocations2 = {}
    for r, v in pairs(TableLocations) do
        TableLocations2[r] = (v - vcspos).Magnitude
    end
    for r, v in pairs(TableLocations2) do
        if v < min then
            min = v
            min2 = v
        end
    end
    local choose
    for r, v in pairs(TableLocations2) do
        if v <= min then
            choose = TableLocations[r]
        end
    end
    local min3 = (vcspos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if min2 <= min3 then
        return choose
    end
end    
function requestEntrance(aJ)
    local args = {"requestEntrance", aJ}
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))    
    local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local char = game.Players.LocalPlayer.Character.HumanoidRootPart
    char.CFrame = CFrame.new(oldcframe.X, oldcframe.Y + 50, oldcframe.Z)    
    task.wait(0.5)
end   
function topos(Tween_Pos)
    pcall(function()
        if game:GetService("Players").LocalPlayer 
            and game:GetService("Players").LocalPlayer.Character 
            and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") 
            and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") 
            and game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 
            and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
            if not TweenSpeed then
                TweenSpeed = 350
            end
            DefualtY = Tween_Pos.Y
            TargetY = Tween_Pos.Y
            targetCFrameWithDefualtY = CFrame.new(Tween_Pos.X, DefualtY, Tween_Pos.Z)
            targetPos = Tween_Pos.Position
            oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            Distance = (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
            if Distance <= 300 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Tween_Pos
            end
            local aM = CheckNearestTeleporter(Tween_Pos)
            if aM then
                pcall(function()
                    tween:Cancel()
                end)
                requestEntrance(aM)
            end
            b1 = CFrame.new(
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                DefualtY,
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
            )
            IngoreY = true
            if IngoreY and (b1.Position - targetCFrameWithDefualtY.Position).Magnitude > 5 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    DefualtY,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
                local tweenfunc = {}
                local aN = game:GetService("TweenService")
                local aO = TweenInfo.new(
                    (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / TweenSpeed,
                    Enum.EasingStyle.Linear
                )
                tween = aN:Create(
                    game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                    aO,
                    {CFrame = targetCFrameWithDefualtY}
                )
                tween:Play()
                function tweenfunc:Stop()
                    tween:Cancel()
                end
                tween.Completed:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    TargetY,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
            else
                local tweenfunc = {}
                local aN = game:GetService("TweenService")
                local aO = TweenInfo.new(
                    (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / TweenSpeed,
                    Enum.EasingStyle.Linear
                )
                tween = aN:Create(
                    game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                    aO,
                    {CFrame = Tween_Pos}
                )
                tween:Play()
                function tweenfunc:Stop()
                    tween:Cancel()
                end
                tween.Completed:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
                    TargetY,
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
                )
            end
            if not tween then
                return tween
            end
            return tweenfunc
        end
    end)
end
function StopTween(target)
    pcall(function()
        if not target then
            getgenv().StopTween = true            
            if tween then
                tween:Cancel()
                tween = nil
            end            
            local player = game:GetService("Players").LocalPlayer
            local character = player and player.Character
            local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                humanoidRootPart.Anchored = true
                task.wait(0.1)
                humanoidRootPart.CFrame = humanoidRootPart.CFrame
                humanoidRootPart.Anchored = false
            end
            local bodyClip = humanoidRootPart and humanoidRootPart:FindFirstChild("BodyClip")
            if bodyClip then
                bodyClip:Destroy()
            end
            getgenv().StopTween = false
            getgenv().Clip = false
        end
    end)
end
spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().TeleportIsland or 
               getgenv().AutoFarm or 
               getgenv().AutoMaterial or 
               getgenv().MasteryFarm or 
               getgenv().AutoGetMelee or 
               getgenv().TeleportToFruit or 
               getgenv().AutoNewWorld or 
               getgenv().AutoThirdSea or 
               getgenv().AutoFactory or 
               getgenv().AutoPirateRaid or 
               getgenv().AutoEliteHunter or 
               getgenv().AutoTouchPadHaki or 
               getgenv().AutoRipIndra or 
               getgenv().AutoSoulReaper or 
               getgenv().AutoDoughKing or 
               getgenv().AutoDarkbeard or 
               getgenv().DojoClaimQuest or 
               getgenv().DragonTalonUpgrade or 
               getgenv().BlazeEmberFarm or 
               getgenv().AutoObservationHakiV2 or 
               getgenv().AutoObservation or 
               getgenv().AutoFarmBoss or 
               getgenv().AutoFarmAllBoss or 
               getgenv().Auto_Dungeon or 
               getgenv().SailBoat or 
               getgenv().RelzFishBoat or 
               getgenv().RelzPirateBrigade or 
               getgenv().RelzPirateGrandBrigade or 
               getgenv().AutoTerrorshark or 
               getgenv().AutoSeaBest or 
               getgenv().AutoFrozenDimension or 
               getgenv().KillLevi or
               getgenv().UpgradeRaceV2 or
               getgenv().AutoCyborg or
               getgenv().AutoGhoul or
               getgenv().QuestTrain_2 or
               getgenv().TeleportMigare or
               getgenv().Tweentohighestpoint or
               getgenv().TeleportToGear or
               getgenv().AutoTrialRace or
               getgenv().AutoKillPlayerAfterTrial or
               getgenv().AutoRainbowHaki or
               getgenv().AutoSkullGuitar or
               getgenv().AutoGetCDK or
               getgenv().AutoTushita or
               getgenv().AutoSaber or
               getgenv().TeleportPlayer
            then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
                    Noclip.Velocity = Vector3.new(0, 0, 0)
                end
            else
                local bodyClip = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip")
                if bodyClip then
                    bodyClip:Destroy()
                end
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if getgenv().TeleportIsland or 
               getgenv().AutoFarm or 
               getgenv().AutoMaterial or 
               getgenv().MasteryFarm or 
               getgenv().AutoGetMelee or 
               getgenv().TeleportToFruit or 
               getgenv().AutoNewWorld or 
               getgenv().AutoThirdSea or 
               getgenv().AutoFactory or 
               getgenv().AutoPirateRaid or 
               getgenv().AutoEliteHunter or 
               getgenv().AutoTouchPadHaki or 
               getgenv().AutoRipIndra or 
               getgenv().AutoSoulReaper or 
               getgenv().AutoDoughKing or 
               getgenv().AutoDarkbeard or 
               getgenv().DojoClaimQuest or 
               getgenv().DragonTalonUpgrade or 
               getgenv().BlazeEmberFarm or 
               getgenv().AutoObservationHakiV2 or 
               getgenv().AutoObservation or 
               getgenv().AutoFarmBoss or 
               getgenv().AutoFarmAllBoss or 
               getgenv().Auto_Dungeon or 
               getgenv().SailBoat or 
               getgenv().RelzFishBoat or 
               getgenv().RelzPirateBrigade or 
               getgenv().RelzPirateGrandBrigade or 
               getgenv().AutoTerrorshark or 
               getgenv().AutoSeaBest or 
               getgenv().AutoFrozenDimension or 
               getgenv().KillLevi or
               getgenv().UpgradeRaceV2 or
               getgenv().AutoCyborg or
               getgenv().AutoGhoul or
               getgenv().QuestTrain_2 or
               getgenv().TeleportMigare or
               getgenv().Tweentohighestpoint or
               getgenv().TeleportToGear or
               getgenv().AutoTrialRace or
               getgenv().AutoKillPlayerAfterTrial or
               getgenv().AutoRainbowHaki or
               getgenv().AutoSkullGuitar or
               getgenv().AutoGetCDK or
               getgenv().AutoTushita or
               getgenv().AutoSaber or
               getgenv().TeleportPlayer
            then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    local lastCall = 0
    local callInterval = 1
    while wait() do
        if (getgenv().AutoFarm or getgenv().Kill_Trial_V4) and tick() - lastCall > callInterval then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
            end)
            lastCall = tick()
        end
    end
end)
spawn(function()
    local lastPosUpdate = tick()
    while task.wait(0.1) do
        if getgenv().AutoSeaBest and CheckSeaBeast() then
            local currentTime = tick()
            if currentTime - lastPosUpdate >= 0.5 then
                Pos = CFrame.new(math.random(-600, 600), math.random(0, 300), math.random(-600, 600))
                lastPosUpdate = currentTime
            end
        end
    end
end)
local player = game.Players.LocalPlayer
local function IsEntityAlive(entity)
    if not entity then return false end
    local humanoid = entity:FindFirstChild("Humanoid")
    return humanoid and humanoid.Health > 0
end
local function GetEnemiesInRange(character, range)
    local enemies = game:GetService("Workspace").Enemies:GetChildren()
    local players = game:GetService("Players"):GetPlayers()
    local targets = {}
    local playerPos = character:GetPivot().Position
    for _, enemy in ipairs(enemies) do
        local rootPart = enemy:FindFirstChild("HumanoidRootPart")
        if rootPart and IsEntityAlive(enemy) then
            local distance = (rootPart.Position - playerPos).Magnitude
            if distance <= range then
                table.insert(targets, enemy)
            end
        end
    end
    for _, otherPlayer in ipairs(players) do
        if otherPlayer ~= player and otherPlayer.Character then
            local rootPart = otherPlayer.Character:FindFirstChild("HumanoidRootPart")
            if rootPart and IsEntityAlive(otherPlayer.Character) then
                local distance = (rootPart.Position - playerPos).Magnitude
                if distance <= range then
                    table.insert(targets, otherPlayer.Character)
                end
            end
        end
    end
    return targets
end
function AttackNoCoolDown()
    local character = player.Character
    if not character then return end
    local equippedWeapon
    for _, item in ipairs(character:GetChildren()) do
        if item:IsA("Tool") then
            equippedWeapon = item
            break
        end
    end
    if not equippedWeapon then return end
    local enemiesInRange = GetEnemiesInRange(character, 60)
    if equippedWeapon:FindFirstChild("LeftClickRemote") then
        local attackCount = 1  
        for _, enemy in ipairs(enemiesInRange) do
            local rootPart = enemy:FindFirstChild("HumanoidRootPart")
            if rootPart then
                local direction = (rootPart.Position - character:GetPivot().Position).Unit
                equippedWeapon.LeftClickRemote:FireServer(direction, attackCount)
                attackCount = attackCount + 1
            end
        end
    else
        local targets, mainTarget = {}, nil
        for _, enemy in ipairs(enemiesInRange) do
            if not enemy:GetAttribute("IsBoat") then
                local head = enemy:FindFirstChild("Head")
                if head then
                    table.insert(targets, { enemy, head })
                    mainTarget = head
                end
            end
        end
        if mainTarget then
            local storage = game:GetService("ReplicatedStorage")
            local attackEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack")
            local hitEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit")
            pcall(function()
                attackEvent:FireServer(0.1)
                hitEvent:FireServer(mainTarget, targets)
            end)
        end
    end
end
--- Auto Join Marine Team ---
local function autojoin()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", getgenv().Team)
end
autojoin()
--- Make Hiru Theme
Fluent.ThemeManager:AddTheme("HiruTheme", {
    FontColor = Color3.fromRGB(20, 20, 20),
    MainBackgroundColor = Color3.fromRGB(255, 150, 100), 
    AccentColor = Color3.fromRGB(180, 100, 255), 
    BackgroundColor = Color3.fromRGB(230, 100, 160),
    LightBackgroundColor = Color3.fromRGB(255, 180, 140),
    DarkBackgroundColor = Color3.fromRGB(190, 90, 150),
    OutlineColor = Color3.fromRGB(255, 120, 160),
    InlineColor = Color3.fromRGB(180, 80, 180),
})
--- Make HBelz Theme
Fluent.ThemeManager:AddTheme("HBelzColor", {
    FontColor = Color3.fromRGB(30, 30, 30),
    MainBackgroundColor = Color3.fromRGB(230, 230, 255), -- Màu nền sáng
    AccentColor = Color3.fromRGB(120, 0, 255), -- Màu tím
    BackgroundColor = Color3.fromRGB(200, 220, 255), -- Màu xanh nhạt
    LightBackgroundColor = Color3.fromRGB(220, 230, 255),
    DarkBackgroundColor = Color3.fromRGB(180, 200, 255),
    OutlineColor = Color3.fromRGB(100, 0, 200),
    InlineColor = Color3.fromRGB(80, 0, 180),
})
----------------------------------------------------------------------------------------------------------------------------------------------
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
----------------------------------------------------------------------------------------------------------------------------------------------
local Window = Fluent:CreateWindow({
    Title = "Heius Roblox-Blox Fruits",
    SubTitle = "Script Auto Hop | by HieuYeager",
    TabWidth = 160,
    Size = UDim2.fromOffset(430, 250),
    Acrylic = true,
    Theme = "HBelzTheme",
    MinimizeKey = Enum.KeyCode.LeftControl 
})
local Tabs = {
	Info = Window:AddTab({ Title = "Tab Infomantion", Icon = "" }),
	Shop = Window:AddTab({ Title = "Tab Shop", Icon = "" }),
	Status = Window:AddTab({ Title = "Tab Status And Server", Icon = "" }),
	Ui = Window:AddTab({ Title = "Tab Config Ui", Icon = "" }),
	Main = Window:AddTab({ Title = "Tab Auto Hop & Button Hop", Icon = "" }),
	Setting = Window:AddTab({ Title = "Tab Setting Farm", Icon = "" }),
	Farm = Window:AddTab({ Title = "Tab Attack & Get Items", Icon = "" }),
	Race = Window:AddTab({ Title = "Tab Get Race & Upgrade V4", Icon = "" }),
}
--- Tab Info
local Credits = Tabs.Info:AddSection("Credits")

Tabs.Info:AddParagraph({
    Title = "I'm Heius",
    Content = "HieuYeager",
})

Tabs.Info:AddParagraph({
    Title = "Facebook: Hoang Hieu ( HieuYeager )",
    Content = "Tại Sao Phải Làm Vua Khi Ta Có Thể Làm Thần?"
})

local executorName
if identifyexecutor then
    executorName = identifyexecutor()
elseif getexecutorname then
    executorName = getexecutorname()
end

if executorName then
    Tabs.Info:AddParagraph({
        Title = "Client in Use",
        Content = executorName
    })
end


Tabs.Info:AddParagraph({
    Title = "Update Info Hub",
    Content = "This script is a combination for both PE and PC, so some clients may not work properly"
})

Tabs.Info:AddParagraph({
    Title = "Client Support ( Mobile ): All Client",
    Content = ""
})

Tabs.Info:AddParagraph({
    Title = "Client Support ( PC ): All Client",
    Content = ""
})
local Time = Tabs.Status:AddParagraph({
    Title = "Time",
    Content = ""
})
local function UpdateLocalTime()
    local date = os.date("*t")
    local hour = date.hour % 24
    local ampm = hour < 12 and "AM" or "PM"
    local formattedTime = string.format("%02i:%02i:%02i %s", ((hour - 1) % 12) + 1, date.min, date.sec, ampm)
    local formattedDate = string.format("%02d/%02d/%04d", date.day, date.month, date.year)

    local LocalizationService = game:GetService("LocalizationService")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local regionCode = "Unknown"

    local success, code = pcall(function()
        return LocalizationService:GetCountryRegionForPlayerAsync(player)
    end)

    if success then
        regionCode = code
    end

    Time:SetDesc(formattedDate .. " - " .. formattedTime .. " [ " .. regionCode .. " ]")
end
task.spawn(function()
    while true do
        UpdateLocalTime()
        game:GetService("RunService").RenderStepped:Wait()
    end
end)
local ServerTime = Tabs.Status:AddParagraph({
    Title = "Server Time",
    Content = ""
})
local function UpdateServerTime()
    local GameTime = math.floor(workspace.DistributedGameTime + 0.5)
    local Hour = math.floor(GameTime / (60 ^ 2)) % 24
    local Minute = math.floor(GameTime / 60) % 60
    local Second = GameTime % 60

    ServerTime:SetDesc(string.format("%02dh - %02dm - %02ds", Hour, Minute, Second))
end

task.spawn(function()
    while task.wait(1) do
        pcall(UpdateServerTime)
    end
end)
--- Tab Config Ui
local InterSec = Tabs.Ui:AddSection("Interface")
local ThemeUi = InterSec:AddDropdown("ThemeSetting", {
    Title = "Theme",
    Description = "",
    Values = {"HBelzTheme", "HiruTheme", "Dark", "Darker", "Light", "Aqua", "Rose", "Amethyst"},
    Multi = false,
    Default = 1,
    Callback = function(v)
    Window:SetTheme(v)
})
InterSec:AddToggle("Transparency", 
{
    Title = "Transparency", 
    Description = "Makes the interface transparent",
    Default = true
    Callback = function(v)
    Window:SetTransparency(v)
})
InterSec:AddKeybind({
    Title = "Minimize Bind",
    Mode = "",
    Default = Enum.KeyCode.LeftControl,
    Callback = function(key)
        Window:SetMinimizeKey(key)
    end
})
local ConfigSec = Tabs.Ui:AddSection("Configuration")
local configList = Fluent:GetConfigs()

ConfigSec:AddDropdown({
    Title = "Select Config",
    Values = configList,
    Default = 1,
    Callback = function(name)
        Fluent:LoadConfig(name)
    end
})

ConfigSec:AddButton({
    Title = "Save Configuration",
    Callback = function()
        Fluent:SaveConfig("MyConfig")
    end
})

ConfigSec:AddButton({
    Title = "Delete Configuration",
    Callback = function()
        Fluent:DeleteConfig("MyConfig")
    end
})
--- Tab Shop
sex1 = {
    "WildDares",
    "BossBuild",
    "GetPranked",
    "Sub2OfficialNoobie",
    "Sub2Daigrock",
    "Sub2NoobMaster123",
    "Bluxxy",
    "JCWK",
    "Enyu_is_Pro",
    "Sub2Fer999",
    "kittgaming",
    "TheGreatAce",
    "StrawHatMaine",
    "TantaiGaming",
    "Axiore",
    "SUB2GAMERROBOT_EXP1",
    "MagicBus",
    "StarcodeHEO",
    "Sub2CaptainMaui",
    "FIGHT4FRUIT",
    "EARN_FRUITS",
}
Tabs.Shop:AddButton({
    Title = "Redeem Code",
    Callback = function()
        function RedeemCode(Value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Value)
        end
        local delayBetweenRequests = 0.5
        for i, v in pairs(sex1) do
            spawn(function()
                RedeemCode(v)
                wait(delayBetweenRequests)
            end)
        end
    end
})
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CommF_Remote = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_")
Tabs.Shop:AddButton({
    Title = "Teleport Old World",
    Callback = function()
        local success, result = pcall(function()
            return CommF_Remote:InvokeServer("TravelMain")
        end)
        if not success then
        end
    end
})
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local CommF_Remote = Remotes:WaitForChild("CommF_")
Tabs.Shop:AddButton({
    Title = "Teleport New World",
    Callback = function()
        local success, result = pcall(function()
            return CommF_Remote:InvokeServer("TravelDressrosa")
        end)
        if not success then            
        end
    end
})
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local CommF_Remote = Remotes:WaitForChild("CommF_")
Tabs.Shop:AddButton({
    Title = "Teleport Third Sea",
    Callback = function()
        local success, result = pcall(function()
            return CommF_Remote:InvokeServer("TravelZou")
        end)
        if not success then
        end
    end
})
Tabs.Shop:AddParagraph({
    Title = "Fighting Shop",
    Content = string.rep("-", 21)
})
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local CommF_Remote = Remotes:WaitForChild("CommF_")
Tabs.Shop:AddButton({
    Title = "Black Leg",
    Callback = function()
        local success, result = pcall(function()
            return CommF_Remote:InvokeServer("BuyBlackLeg")
        end)
        if not success then            
        end
    end
})
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local CommF_Remote = Remotes:WaitForChild("CommF_")
Tabs.Shop:AddButton({
    Title = "Fishman Karate",
    Callback = function()
        local success, result = pcall(function()
            return CommF_Remote:InvokeServer("BuyFishmanKarate")
        end)
        if not success then            
        end
    end
})
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local CommF_Remote = Remotes:WaitForChild("CommF_")
Tabs.Shop:AddButton({
    Title = "Electro",
    Callback = function()
        local success, result = pcall(function()
            return CommF_Remote:InvokeServer("BuyElectro")
        end)
        if not success then            
        end
    end
})
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local CommF_Remote = Remotes:WaitForChild("CommF_")
Tabs.Shop:AddButton({
    Title = "Dragon Breath",
    Callback = function()
        local success1, result1 = pcall(function()
            return CommF_Remote:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        end)
        if not success1 then
            return
        end
        local success2, result2 = pcall(function()
            return CommF_Remote:InvokeServer("BlackbeardReward", "DragonClaw", "2")
        end)
        if not success2 then
            return
        end
    end
})
Tabs.Shop:AddButton({
    Title = "SuperHuman",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage.Remotes.CommF_
        CommF_:InvokeServer("BuySuperhuman")
    end
})
Tabs.Shop:AddButton({
    Title = "Death Step",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage.Remotes.CommF_
        CommF_:InvokeServer("BuyDeathStep")
    end
})
Tabs.Shop:AddButton({
    Title = "Sharkman Karate",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage.Remotes.CommF_
        CommF_:InvokeServer("BuySharkmanKarate", true)
        wait(0.2)
        CommF_:InvokeServer("BuySharkmanKarate")
    end
})
Tabs.Shop:AddButton({
    Title = "Electric Claw",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage.Remotes.CommF_
        CommF_:InvokeServer("BuyElectricClaw")
    end
})
Tabs.Shop:AddButton({
    Title = "Dragon Talon",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage.Remotes.CommF_
        CommF_:InvokeServer("BuyDragonTalon")
    end
})
Tabs.Shop:AddButton({
    Title = "God Human",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage.Remotes.CommF_
        CommF_:InvokeServer("BuyGodhuman")
    end
})
Tabs.Shop:AddButton({
    Title = "Sanguine Art",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local CommF_ = ReplicatedStorage.Remotes.CommF_
        CommF_:InvokeServer("BuySanguineArt", true)
        wait(0.2)
        CommF_:InvokeServer("BuySanguineArt")
    end
})
Tabs.Shop:AddParagraph({
    Title = "Abilities Shop",
    Content = string.rep("-", 21)
})
Tabs.Shop:AddButton({
	Title = "Skyjump [ $10,000 Beli ]",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
	end
})
Tabs.Shop:AddButton({
	Title = "Buso Haki [ $25,000 Beli ]",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
	end
})
Tabs.Shop:AddButton({
	Title = "Observation haki [ $750,000 Beli ]",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
	end
})
Tabs.Shop:AddButton({
	Title = "Soru [ $100,000 Beli ]",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
	end
})
Tabs.Shop:AddParagraph({
    Title = "Misc Shop",
    Content = string.rep("-", 21)
})
Tabs.Shop:AddButton({
     Title = "Buy Refund Stat (2500F)",
     Callback = function()            
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
     end
})
Tabs.Shop:AddButton({
     Title = "Buy Reroll Race (3000F)",
     Callback = function()            
         game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
	     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
     end
})
Tabs.Shop:AddButton({
    Title = "Buy Ghoul Race",
    Callback = function()
        local args1 = {[1] = "Ectoplasm", [2] = "BuyCheck", [3] = 4}
        local args2 = {[1] = "Ectoplasm", [2] = "Change", [3] = 4}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args1))        
        wait(0.5)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args2))
    end
})
Tabs.Shop:AddButton({
    Title = "Buy Cyborg Race (2500F)",
    Callback = function()
        if not isBuying then
            isBuying = true
            local args = {[1] = "CyborgTrainer", [2] = "Buy"}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                        
            wait(0.5)
            isBuying = false
        end
    end
})
--- Status And Server
Time = Tabs.Status:AddParagraph({
    Title = "Time Zone",
    Content = ""
})
function UpdateOS()
    local date = os.date("*t")
    local hour = (date.hour) % 24
    local ampm = hour < 12 and "AM" or "PM"
    local timezone = string.format("%02i:%02i:%02i %s", ((hour - 1) % 12) + 1, date.min, date.sec, ampm)
    local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)    
    local LocalizationService = game:GetService("LocalizationService")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local name = player.Name
    local result, code    
    if not getgenv().countryRegionCode then
        result, code = pcall(function()
            return LocalizationService:GetCountryRegionForPlayerAsync(player)
        end)
        if result then
            getgenv().countryRegionCode = code
        else
            getgenv().countryRegionCode = "Unknown"
        end
    else
        code = getgenv().countryRegionCode
    end
    Time:SetDesc(datetime.." - "..timezone.." [ " .. code .. " ]")
end
spawn(function()
    while true do
        UpdateOS()
        wait(1)
    end
end)
Timmessss = Tabs.Status:AddParagraph({
    Title = "Time",
    Content = ""
})
function UpdateTime()
    local GameTime = math.floor(workspace.DistributedGameTime + 0.5)
    local Hour = math.floor(GameTime / (60^2)) % 24
    local Minute = math.floor(GameTime / (60^1)) % 60
    local Second = math.floor(GameTime / (60^0)) % 60
    Timmessss:SetDesc(Hour.." Hour (h) "..Minute.." Minute (m) "..Second.." Second (s) ")
end
spawn(function()
    while true do
        UpdateTime()
        wait(1)
    end
end)
Miragecheck = Tabs.Status:AddParagraph({
    Title = "Mirage Island",
    Content = "Status: "
})
local previousStatus = ""
spawn(function()
    pcall(function()
        while true do
            wait(1)            
            local mirageIslandExists = game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') ~= nil
            local currentStatus = mirageIslandExists and '✅️' or '❌️'
            if currentStatus ~= previousStatus then
                Miragecheck:SetDesc('Status: ' .. currentStatus)
                previousStatus = currentStatus
            end
        end
    end)
end)
Kitsunecheck = Tabs.Status:AddParagraph({
    Title = "Kitsune Island",
    Content = "Status: "
})
spawn(function()
    local previousStatus = ""
    while task.wait(1) do
        local currentStatus = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") and '✅️' or '❌️'
        if currentStatus ~= previousStatus then
            Kitsunecheck:SetDesc('Status: ' .. currentStatus)
            previousStatus = currentStatus
        end
    end
end)
CPrehistoriccheck = Tabs.Status:AddParagraph({
    Title = "Prehistoric Island",
    Desc = "Status: "
})
task.spawn(function()
    local previousStatus = ""
    while task.wait(1) do
        local currentStatus = game.Workspace._WorldOrigin.Locations:FindFirstChild("Prehistoric Island") and '✅️' or '❌️'
        if currentStatus ~= previousStatus then
            CPrehistoriccheck:SetDesc("Status: " .. currentStatus)
            previousStatus = currentStatus
        end
    end
end)
FrozenIsland = Tabs.Status:AddParagraph({
    Title = "Frozen Dimension",
    Content = "Status: "
})
spawn(function()
    local previousStatus = ""
    while wait(1) do
        local currentStatus = game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') and '✅️' or '❌️'
        if currentStatus ~= previousStatus then
            FrozenIsland:SetDesc('Status: ' .. currentStatus)
            previousStatus = currentStatus
        end
    end
end)
MobCakePrince = Tabs.Status:AddParagraph({
    Title = "Dimension Killed",
    Content = ""
})
spawn(function()
    while wait(1) do
        local cakePrince = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
        local killStatus = "Cake Prince: ✅️"
        if string.len(cakePrince) >= 86 then
            local killCount = string.sub(cakePrince, 39, 41)
            killStatus = "Kill: " .. killCount
        end
        MobCakePrince:SetDesc(killStatus)
    end
end)
CheckRip = Tabs.Status:AddParagraph({
    Title = "Rip_Indra",
    Content = "Status: "
})
spawn(function()
    local previousStatus = ""
    while wait(1) do
        local currentStatus = game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and '✅️' or '❌️'
        if currentStatus ~= previousStatus then
            CheckRip:SetDesc("Status: " .. currentStatus)
            previousStatus = currentStatus
        end
    end
end)
CheckDoughKing = Tabs.Status:AddParagraph({
    Title = "Dough King",
    Content = "Status: "
})
spawn(function()
    local previousStatus = ""
    while wait(1) do
        local currentStatus = game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") and '✅️' or '❌️'
        if currentStatus ~= previousStatus then
            CheckDoughKing:SetDesc("Status: " .. currentStatus)
            previousStatus = currentStatus
        end
    end
end)
EliteHunter = Tabs.Status:AddParagraph({
    Title = "Elite Hunter",
    Content = "Status: "
})
spawn(function()
    local previousStatus = ""
    while wait(1) do
        local currentStatus = (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) and '✅️' or '❌️'
        local progress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress")
        if currentStatus ~= previousStatus then
            EliteHunter:SetDesc("Status: " .. currentStatus .. " | Killed: " .. progress)
            previousStatus = currentStatus
        end
    end
end)
FM = Tabs.Status:AddParagraph({
    Title = "Full Moon",
    Content = ""
})
task.spawn(function()
    while task.wait(1) do
        local moonTextureId = game:GetService("Lighting").Sky.MoonTextureId
        local moonStatus = "Moon: 0/5"
        if moonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
            moonStatus = "Moon: 5/5"
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
            moonStatus = "Moon: 4/5"
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
            moonStatus = "Moon: 3/5"
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
            moonStatus = "Moon: 2/5"
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
            moonStatus = "Moon: 1/5"
        end
        FM:SetDesc(moonStatus)
    end
end)
LegendarySword = Tabs.Status:AddParagraph({
    Title = "Legendary Sword",
    Content = "Status: "
})
spawn(function()
    local previousStatus = ""
    while wait(1) do
        local swordStatus = "Not Found Legend Swords"
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") then
            swordStatus = "Shisui"
        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2") then
            swordStatus = "Wando"
        elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3") then
            swordStatus = "Saddi"
        end
        LegendarySword:SetDesc(swordStatus)
    end
end)
StatusBone = Tabs.Status:AddParagraph({
    Title = "Bone",
    Content = ""
})
spawn(function()
    while wait(1) do
        StatusBone:SetDesc("You Have: " .. tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check")) .. " Bones")
    end
end)	        
Input = Tabs.Status:AddInput("Input", {
     Title = "Input Job Id",
     Default = "",
     Placeholder = "Paste Job Id",
     Numeric = false,
     Finished = false,
     Callback = function(Value)
         getgenv().Job = Value
     end
})    
Toggle = Tabs.Status:AddToggle("SpamJoin", {Title = "Spam Join", Default = false })
Toggle:OnChanged(function(Value)
getgenv().Join = Value
end)
spawn(function()
    local lastTeleportTime = 0
    local teleportCooldown = 1    
    while task.wait() do
        if getgenv().Join and tick() - lastTeleportTime >= teleportCooldown then
            lastTeleportTime = tick()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, getgenv().Job, game.Players.LocalPlayer)
        end
    end
end)
local lastTeleportTime = 0
local teleportCooldown = 5
Tabs.Status:AddButton({
    Title = "Join Server",
    Callback = function()
        if tick() - lastTeleportTime >= teleportCooldown then
            lastTeleportTime = tick()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, getgenv().Job, game.Players.LocalPlayer)        
        end
    end
})
local lastCopyTime = 0
local copyCooldown = 2
Tabs.Status:AddButton({
    Title = "Copy JobId",
    Callback = function()
        if tick() - lastCopyTime >= copyCooldown then
            lastCopyTime = tick()
            setclipboard(tostring(game.JobId))
            print("JobId Copied!")
        else
            print("Please try again in a moment!")
        end
    end
})
local lastTeleportTime = 0
local teleportCooldown = 3
Tabs.Status:AddButton({
    Title = "Rejoin Server",
    Callback = function()
        if tick() - lastTeleportTime >= teleportCooldown then
            lastTeleportTime = tick()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)        
        end
    end
})
Tabs.Status:AddButton({
	  Title = "Hop Server",
	  Callback = function()
          Hop()
      end
})
function Hop()
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
        local num = 0
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
                    wait(0.1)
                    pcall(function()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(1)
                    break
                end
            end
        end
    end
    function Teleport() 
        while true do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
            wait(2)
        end
    end
    Teleport()
end
--- Setting Farm
Dropdown = Tabs.Setting:AddDropdown("DropdownFarm", {
    Title = "Select Weapon",
    Values = {"Melee","Sword","Blox Fruit"},
    Multi = false,
})
Dropdown:SetValue("Melee")
Dropdown:OnChanged(function(value)
    getgenv().SelectWeapon = value
end)
task.spawn(function()
    local lastWeapon = nil
    while task.wait(0.5) do
        pcall(function()
            if getgenv().SelectWeapon == lastWeapon then
                return
            end
            lastWeapon = getgenv().SelectWeapon
            local weaponFound = nil
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v.ToolTip == getgenv().SelectWeapon then
                    weaponFound = v.Name
                    break
                end
            end
            if weaponFound then
                getgenv().SelectWeapon = weaponFound
            end
        end)
    end
end)
Toggle = Tabs.Setting:AddToggle("BusoAuto", {Title = "Auto Turn On Buso", Default = true })
Toggle:OnChanged(function(Value)
    getgenv().AUTOHAKI = Value
end)
spawn(function()
    local canUseHaki = true
    local debounceTime = 2
    while task.wait(0.1) do
        if getgenv().AUTOHAKI then
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") and canUseHaki then
                canUseHaki = false
                local args = {
                    [1] = "Buso"
                }
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end)
                wait(debounceTime)
                canUseHaki = true
            end
        end
    end
end)
Toggle = Tabs.Setting:AddToggle("AutoOnV4", { Title = "Auto Turn On Race V4", Default = false })
Toggle:OnChanged(function(Value)
    getgenv().AutoTurnOnV4 = Value
end)
task.spawn(function()
    local lastCheckTime = 0
    while true do
        task.wait(0.1)
        if getgenv().AutoTurnOnV4 then
            local currentTime = tick()
            if currentTime - lastCheckTime >= 0.5 then
                lastCheckTime = currentTime
                local character = game.Players.LocalPlayer.Character
                if character and character:FindFirstChild("RaceEnergy") and
                   character.RaceEnergy.Value >= 1 and
                   not character.RaceTransformed.Value then
                    local be = game:GetService("VirtualInputManager")
                    be:SendKeyEvent(true, "Y", false, game)
                    task.wait(0.1)
                    be:SendKeyEvent(false, "Y", false, game)
                end
            end
        end
    end
end)
Toggle = Tabs.Setting:AddToggle("V3Auto", {Title = "Auto Turn On Race V3", Default = false })
Toggle:OnChanged(function(Value)
    getgenv().AutoTurnOnV3 = Value
end)
task.spawn(function()
    local prevState = false    
    while true do
        task.wait(0.1)        
        pcall(function()
            if getgenv().AutoTurnOnV3 ~= prevState then
                if getgenv().AutoTurnOnV3 then
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
                end
                prevState = getgenv().AutoTurnOnV3
            end
        end)
    end
end)
local Toggle = Tabs.Setting:AddToggle("AutoSet", {Title = "Auto Set Spawn Point", Default = false })
local lastSetState = false
Toggle:OnChanged(function(Value)
    getgenv().Set = Value
    if Value ~= lastSetState then
        lastSetState = Value
        if Value then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
            end)
        end
    end
end)
Toggle = Tabs.Setting:AddToggle("AntiAfk", {Title = "Anti AFK", Default = true })
Toggle:OnChanged(function(Value)
    getgenv().AntiAFK = Value 
end)
task.spawn(function()
    while true do
        if getgenv().AntiAFK then
            local vu = game:GetService("VirtualUser")
            local player = game:GetService("Players").LocalPlayer
            player.Idled:Connect(function()
                vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            end)
        end
        game:GetService("RunService").Heartbeat:wait()
    end
end)
Toggle = Tabs.Setting:AddToggle("ResetTP", {Title = "Reset Teleport", Default = false })
Toggle:OnChanged(function(Value)
    BypassTP = Value 
end)
Toggle = Tabs.Setting:AddToggle("Bypass TP", { Title = "Stop Reset Teleport When Have Legendary", Default = false })
Toggle:OnChanged(function(Value)
    getgenv().StopTP = Value
end)
spawn(function()
	while task.wait(1) do
		if getgenv().StopTP then
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
				BypassTP = false
			end
		end
	end
end)
getgenv().FastAttack = false
Toggle = Tabs.Setting:AddToggle("FastAttack", {Title = "Fast Attack", Default = true})
local FastAttackTask
local function FastAttackLoop()
    while getgenv().FastAttack do
        if type(AttackNoCoolDown) == "function" then
            AttackNoCoolDown()
        end
        task.wait(0.1)
    end
end
Toggle:OnChanged(function(Value)
    getgenv().FastAttack = Value
    if Value and not FastAttackTask then
        FastAttackTask = task.spawn(FastAttackLoop)
    end
    if not Value and FastAttackTask then
        FastAttackTask = nil
    end
end)
Toggle = Tabs.Setting:AddToggle("BringMob", {Title = "Bring Mob", Default = true})
Toggle:OnChanged(function(Value)
    getgenv().BringMonster = Value
end)
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            CheckQuest()
            local enemies = Workspace.Enemies:GetChildren()
            local MonsterCount = 0
            for _, enemy in ipairs(enemies) do
                if MonsterCount >= 2 then
                    break
                end                
                if getgenv().BringMonster and enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") then
                    local humanoid = enemy:FindFirstChild("Humanoid")
                    local rootPart = enemy:FindFirstChild("HumanoidRootPart")
                    if humanoid and rootPart and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local distance = (rootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if getgenv().StartMagnet and (enemy.Name == MonFarm or enemy.Name == Mon) and humanoid.Health > 0 and distance <= 350 then
                            if enemy.Name == "Factory Staff" and PosMon and (rootPart.Position - PosMon.Position).Magnitude <= 5000 then
                                if rootPart.Parent then
                                    rootPart.CanCollide = false
                                    rootPart.Size = Vector3.new(60, 60, 60)
                                    rootPart.CFrame = PosMon
                                    enemy.Head.CanCollide = false
                                    local animator = humanoid:FindFirstChild("Animator")
                                    if animator then
                                        pcall(function()
                                            animator:Destroy()
                                        end)
                                    end
                                    sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
                                    MonsterCount = MonsterCount + 1
                                end
                            elseif (enemy.Name == MonFarm or enemy.Name == Mon) and PosMon and (rootPart.Position - PosMon.Position).Magnitude <= 4500 then
                                if rootPart.Parent then
                                    rootPart.CanCollide = false
                                    rootPart.Size = Vector3.new(60, 60, 60)
                                    rootPart.CFrame = PosMon
                                    enemy.Head.CanCollide = false
                                    local animator = humanoid:FindFirstChild("Animator")
                                    if animator then
                                        pcall(function()
                                            animator:Destroy()
                                        end)
                                    end
                                    sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
                                    MonsterCount = MonsterCount + 1
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)
Toggle = Tabs.Setting:AddToggle("SpinPos", {Title = "Spin Position", Description = "Spin Position When Farm", Default = true })
Toggle:OnChanged(function(Value)
    getgenv().SpinPos = Value
end)
spawn(function()
    while wait() do
        if getgenv().SpinPos then
            Pos = CFrame.new(0, PosY, -20)
            wait(0.1)
            Pos = CFrame.new(-20, PosY, 0)
            wait(0.1)
            Pos = CFrame.new(0, PosY, 20)
            wait(0.1)
            Pos = CFrame.new(20, PosY, 0)
        else
            Pos = CFrame.new(0, PosY, 0)
        end
    end
end)
Slider = Tabs.Setting:AddSlider("Slider", {
     Title = "Farm Distance",
     Default = 15,
     Min = 0,
     Max = 30,
     Rounding = 5,
     Callback = function(Value)
         PosY = Value
    end
})
Toggle = Tabs.Setting:AddToggle("ReduceLag", {Title = "Auto Reduce Lag Farm Safely", Default = false })
Toggle:OnChanged(function(Value)
    getgenv().ReduceLag = Value
end)
spawn(function()
    while wait(0.1) do
        if getgenv().ReduceLag then
            for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                if v and (v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" or v.Name == "SlashTail" or v.Name == "Sounds") then
                    pcall(function()
                        v:Destroy()
                    end)
                end
            end
        end
    end
end)
Toggle = Tabs.Setting:AddToggle("AntiCheat", {Title = "Anti Cheat Farming", Description = "This feature helps you Farm safely without being detected", Default = true })
Toggle:OnChanged(function(Value)
    getgenv().ResetFlags = Value
end)
spawn(function()
    while task.wait(5) do
        pcall(function()
            if getgenv().ResetFlags then
                local player = game:GetService("Players").LocalPlayer                
                for _, v in pairs(player.Character:GetDescendants()) do
                    if v:IsA("LocalScript") then
                        local scriptsToRemove = {
                            "General", "Shiftlock", "FallDamage", "4444", 
                            "CamBob", "JumpCD", "Looking", "Run"
                        }
                        if table.find(scriptsToRemove, v.Name) then
                            v:Destroy()
                        end
                    end
                end
                for _, v in pairs(player.PlayerScripts:GetDescendants()) do
                    if v:IsA("LocalScript") then
                        local scriptsToRemove = {
                            "RobloxMotor6DBugFix", "Clans", "Codes", "CustomForceField",
                            "MenuBloodSp", "PlayerList"
                        }
                        if table.find(scriptsToRemove, v.Name) then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)
--- Tab Hop
Tabs.Main:AddParagraph({
	Title = "---------- Auto Hop ----------",
    Content = ""
})

Tabs.Main:AddToggle("HopCake", {
    Title = "Auto Hop Cake Prince",
    Description = "I'm Still Fixing..",
    Default = false,
    Callback = function(v)
    end
})

local HopKata2 = Tabs.Main:AddToggle("DKHop", {Title = "Auto Hop Dough King [V2]", Default = false })
HopKata2:OnChanged(function(v)
    _G.HopKata2 = v
end)
spawn(function()
    while task.wait(5) do
        pcall(function()
        if _G.HopKata2 then
         local KataSpawned = game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King")
             if KataSpawned then
       loadstring(game:HttpGet("https://pastefy.app/NHAdVTDi/raw"))()
               end
            end
        end)
    end
end)

        
local HopRip = Tabs.Main:AddToggle("RipHop", {Title = "Auto Hop Rip Indra", Default = false })
HopRip:OnChanged(function(v)
    _G.HopRip = v
end)

spawn(function()
    while task.wait(5) do
        pcall(function()
            if _G.HopRip then
                local RipSpawned = game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra")
                if RipSpawned then
                    loadstring(game:HttpGet("https://pastefy.app/bu21BbPi/raw"))()
                end
            end
        end)
    end
end)

local HopDark = Tabs.Main:AddToggle("HopDark", {Title = "Auto Hop Dark Beard", Default = false })
HopDark:OnChanged(function(v)
    _G.HopDark = v
end)
spawn(function()
    while task.wait(5) do
        pcall(function()
            if _G.HopDark then
                local DarkSpawned = game:GetService("ReplicatedStorage"):FindFirstChild("Darkbeard") or game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard")
                if DarkSpawned then
                    loadstring(game:HttpGet("https://pastefy.app/lHdiS2vw/raw"))()
                end
            end
        end)
    end
end)

local HopSoul = Tabs.Main:AddToggle("HopSoul", {Title = "Auto Hop Soul Reaper", Default = false })
HopSoul:OnChanged(function(v)
    _G.HopSoul = v
end)
spawn(function()
    while task.wait(5) do
        pcall(function()
            if _G.HopSoul then
                local SoulSpawned = game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") or game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper")
                if SoulSpawned then
                    loadstring(game:HttpGet("https://pastefy.app/OHx9UTDp/raw"))()
                end
            end
        end)
    end
end)

local HopCursed = Tabs.Main:AddToggle("HopCursed", {Title = "Auto Hop Cursed Captain", Default = false })
HopCursed:OnChanged(function(v)
    _G.HopCursed = v
end)
spawn(function()
    while task.wait(5) do
        pcall(function()
            if _G.HopCursed then
                if not CheckBossAttack() then
                  return sEX()
                end
            end
        end)
    end
end)

Tabs.Main:AddToggle("HopTyrant", {
    Title = "Auto Hop Tyrant of the Skies",
    Description = "I'm Still Fixing..",
    Default = false,
    Callback = function(v)
    end
})

local HopOroshi = Tabs.Main:AddToggle("HopOroshi", {Title = "Auto Hop Oroshi Sword", Default = false })
HopOroshi:OnChanged(function(v)
    _G.HopOroshi = v
end)
spawn(function()
    while task.wait(5) do
        pcall(function()
            if _G.HopOroshi then
                local OroshiSpawned = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "2") then
                if OroshiSpawned then
                    loadstring(game:HttpGet("https://pastefy.app/b7eFTklO/raw"))()
                end
            end
        end)
    end
end)

local HopShizu = Tabs.Main:AddToggle("HopShizu", {Title = "Auto Hop Shizu Sword", Default = false })
HopShizu:OnChanged(function(v)
    _G.HopShizu = v
end)
spawn(function()
    while task.wait(5) do
        pcall(function()
            if _G.HopShizu then
                local ShizuSpawned = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") then
                if ShizuSpawned then
                    loadstring(game:HttpGet("https://pastefy.app/BBL9UeVi/raw"))()
                end
            end
        end)
    end
end)

local HopSaishi = Tabs.Main:AddToggle("HopSaishi", {Title = "Auto Hop Saishi Sword", Default = false })
HopSaishi:OnChanged(function(v)
    _G.HopSaishi = v
end)
spawn(function()
    while task.wait(5) do
        pcall(function()
            if _G.HopSaishi then
                local SaishiSpawned = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "3") then
                if SaishiSpawned then
                    loadstring(game:HttpGet("https://pastefy.app/In3U9CnW/raw"))()
                end
            end
        end)
    end
end)
Tabs.Main:AddParagraph({
	Title = "---------- Hop Button ----------",
    Content = ""
})
Tabs.Main:AddButton({
    Title = "Hop Dough King V2",
    Description = "wait 5s press 1 time",
    Callback = function()
       wait(5)
        loadstring(game:HttpGet("https://pastefy.app/NHAdVTDi/raw"))()
    end
})

Tabs.Main:AddButton({
    Title = "Hop Rip Indra",
    Description = "wait 5s press 1 time",
    Callback = function()
        wait(5)
        loadstring(game:HttpGet("https://pastefy.app/bu21BbPi/raw"))()
    end
})

Tabs.Main:AddButton({
    Title = "Hop Dark Beard",
    Description = "wait 5s press 1 time",
    Callback = function()
        wait(5)
        loadstring(game:HttpGet("https://pastefy.app/lHdiS2vw/raw"))()
    end
})

getgenv().sEX = function()
    local url = 'https://xeterapi.vercel.app/api/Cursed'
    local chooses
    local foundServers = game:GetService('HttpService'):JSONDecode(game:HttpGet(url))
    for i,v in foundServers do 
        if v.jobId ~= game.JobId then 
            chooses = v
        end
    end
    game:GetService("TeleportService"):TeleportToPlaceInstance(4442272183, chooses.jobId, game.Players.LocalPlayer)
end
function CheckBossAttack()
    for _,Boss in pairs(game.Workspace.Enemies:GetChildren()) do
        if Boss.Name == "Cursed Captain" and DetectingPart(Boss) and Boss.Humanoid.Health > 0 then
            return Boss
        end
    end
    for _,Boss in pairs(game.ReplicatedStorage:GetChildren()) do
        if Boss.Name == "Cursed Captain" then
            return Boss
        end
    end
end
function DetectingPart(v1)
    return v1 and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid")
end
Tabs.Main:AddButton({
    Title = "Hop Cursed Captain",
    Description = "wait 5s press 1 time",
    Callback = function()
        spawn(function()
            while task.wait(3) do
              pcall(function()
                if not CheckBossAttack() then
                  return sEX()
                end
              end)
            end
        end)          
    end
})

Tabs.Main:AddButton({
    Title = "Hop Soul Reaper",
    Description = "wait 5s press 1 time",
    Callback = function()
wait(5)
 loadstring(game:HttpGet("https://pastefy.app/OHx9UTDp/raw"))()
    end
})


Tabs.Main:AddButton({
    Title = "Hop Full Moon",
    Description = "wait 5s press 1 time",
    Callback = function()
        wait(5)
        loadstring(game:HttpGet("https://pastefy.app/fNcv3x43/raw"))()
    end
})

Tabs.Main:AddButton({
    Title = "Hop Mirage island",
    Description = "wait 5s press 1 time",
    Callback = function()
        wait(5)
         loadstring(game:HttpGet("https://pastefy.app/Ds8rU2qS/raw"))()
    end
})

Tabs.Main:AddButton({
    Title = "Hop Oroshi Sword",
    Description = "wait 5s press 1 time",
    Callback = function()
        wait(5)
         loadstring(game:HttpGet("https://pastefy.app/b7eFTklO/raw"))()
    end
})

Tabs.Main:AddButton({
    Title = "Hop Shizu Sword",
    Description = "wait 5s press 1 time",
    Callback = function()
        wait(5)
         loadstring(game:HttpGet("https://pastefy.app/BBL9UeVi/raw"))()
    end
})

Tabs.Main:AddButton({
    Title = "Hop Saishi Sword",
    Description = "wait 5s press 1 time",
    Callback = function()
        wait(5)
         loadstring(game:HttpGet("https://pastefy.app/In3U9CnW/raw"))()
    end
})

--- Tab Attack & Get Items
Dropdown = Tabs.Auto:AddDropdown("SelectFarm", {
    Title = "Select Farm Boss",
    Values = {
        "rip_indra True Form",
        "Cake Prince",
        "Dough King",
        "Darkbeard",
        "Soul Reaper",
        "Cursed Captain"
        "Tyrant of the Skies"
    },
    Multi = false,
    Default = _G.SelectBoss
})
Dropdown:SetValue(false)
Dropdown:OnChanged(function(V)
    _G.SelectBoss = V
end)
Toggle = Tabs.Farm:AddToggle("FarmBoss", { Title = "Auto Farm Boss", Default = _G.FarmBoss })
Toggle:OnChanged(function(V)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
    _G.FarmBoss = V
    StopTween(_G.FarmBoss)
end)

spawn(function()
    while wait() do
        if _G.FarmBoss then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == _G.SelectBoss then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.FarmBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                    end
                end
            end)
        end
    end
end)
Toggle = Tabs.Farm:AddToggle("AutoBuy", { Title = "Auto Buy Legendary Sword", Default = _G.BuyLegendarySword })
Toggle:OnChanged(function(V)
    _G.BuyLegendarySword = V
end)

spawn(function()
    while wait() do
        if _G.BuyLegendarySword then
            pcall(function()
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "1"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "3"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                if _G.BuyLegendarySword_Hop and _G.BuyLegendarySword and World2 then
                    wait(10)
                    Hop()
                end
            end)
        end 
    end
end)

--- Get Race , Up V4
 Tabs.Race:AddParagraph({
	Title = "---------- Get Race ----------",
    Content = ""
})
 Tabs.Race:AddToggle('Auto Get Cyborg + Hop', {
    Title = 'Auto Get Cyborg Race',
    Description = "Requirement: 20k Fragments",
    Default = _G.AutoCyborg,
    Callback = function(v)
        _G.AutoCyborg = v
    end
})
GetChest = function()
    local distance = math.huge
    local a
    for r, v in pairs(workspace.Map:GetDescendants()) do
        if string.find(v.Name:lower(), "chest") then
            if v:FindFirstChild("TouchInterest") then
                if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < distance then
                    distance = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    a = v
                end
            end
        end
    end
    return a
end
function KiemTraQuai(c)
    for r, v in pairs(workspace.Enemies:GetChildren()) do
        if v.Name == c then
            if v:FindFirstChild('Humanoid') and v:FindFirstChild('HumanoidRootPart')
            and v.Humanoid.Health > 0 and v.Parent then
                return v
            end
        end
    end
end

function CheckMicrochip()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Microchip") then
        return true
    end
end
function CheckCoreBrain()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("Core Brain") or game.Players.LocalPlayer.Character:FindFirstChild("Core Brain") then
        return true
    end
end
function BuyChipLaw()
    v354 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2")
    if v354 == 1 then
        return true
    end
    if v354 == 0 then
        return false
    end
    if v354 == 2 then
        return true
    end
end
spawn(function()
    while wait() do
        if _G.AutoCyborg then
            CyborgCheck = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CyborgTrainer", "Check")
                if CyborgCheck == 2 then
                    Fluent:Notify({
                        Title = 'Auto Cyborg',
                        Content = "there is a cyborg race",
                        Duration = 10,
                    })
                    return
                end
                if not CyborgCheck then
                    if not game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.CanCollide then
                        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CyborgTrainer", "Buy")
                    else
                        if CheckCoreBrain() then
                            fireclickdetector(
                                game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector
                            )
                        else
                        if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckBlockPart") then
                            if game.ReplicatedStorage:FindFirstChild('Order') or workspace.Enemies:FindFirstChild('Order') then
                                local v = KiemTraQuai("Order")
                                if v then
                                    repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoCyborg or not v.Parent or v.Humanoid.Health <= 0             
                                else
                                    topos(CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578))
                                end
                            else
                                if not CheckMicrochip() then
                                    if game.Players.LocalPlayer.Data.Fragments.Value >= 1000 then
                                        BuyChipLaw()
                                    else
                                        Fluent:Notify({
                                            Title = 'Auto Cyborg',
                                            Content = "Fragments are out",
                                            Duration = 10,
                                        })
                                        wait(11)
                                    end                
                                elseif CheckMicrochip() then
                                    fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                                end
                            end
                        else
                            if not game.Players.LocalPlayer.Backpack:FindFirstChild('First Of Darkness') then
                                if GetChest() then
                                    local v = GetChest()
                                    repeat wait()
                                        topos(v.CFrame)
                                        if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                            game:service("VirtualInputManager"):SendKeyEvent(true, "Q", false, game)
                                            task.wait()
                                            game:service("VirtualInputManager"):SendKeyEvent(false, "Q", false, game)
                                            wait(.3)
                                        end
                                    until _G.AutoCyborg == false or not v:FindFirstChild('TouchInterest') or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("First Of Darkness")
                                else
                                    Hop()
                                end
                            else
                                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                            end
                        end
                    end
                end
            end
        end 
    end
end)
function GetItemCount(bj)
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v["Name"] == bj then
            return v["Count"]
        end
    end
    return 0
end
Tabs.Race:AddToggle('Auto Ghoul Race', {
    Title = 'Auto Get Ghoul Race + Hop',
    Default = _G.AutoGhoulRace,
    Callback = function(v)
        _G.AutoGhoulRace = v
    end
})
spawn(function()
    while wait() do
        if _G.AutoGhoulRace then
            if not game.Players.LocalPlayer.Backpack:FindFirstChild("Hellfire Torch") 
            and not game.Players.LocalPlayer.Character:FindFirstChild("Hellfire Torch") then
                if game.ReplicatedStorage:FindFirstChild('Cursed Captain') or workspace.Enemies:FindFirstChild('Cursed Captain') then
                    local v = KiemTraQuai('Cursed Captain')
                    if v then
                        repeat wait()
                            AutoHaki()
                            EquipWeapon(_G.SelectWeapon)
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            topos(v.HumanoidRootPart.CFrame * Pos)
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        until not _G.AutoGhoulRace or not v.Parent or v.Humanoid.Health <= 0             
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                    end
                elseif not game.ReplicatedStorage:FindFirstChild('Cursed Captain') and not workspace.Enemies:FindFirstChild('Cursed Captain') then
                    sEX()
                end
            elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Hellfire Torch") 
            or game.Players.LocalPlayer.Character:FindFirstChild("Hellfire Torch") then
                if GetItemCount('Ectoplasm') and GetItemCount('Ectoplasm') >= 100 then
                    local args = {
                        [1] = "Ectoplasm",
                        [2] = "BuyCheck",
                        [3] = 4
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 4)
                else
                    Fluent:Notify({
                        Title = 'Auto Ghoul Race',
                        Content = 'not enough ingredients: '.. 100 - GetItemCount('Ectoplasm') .. "more!",
                        Duration = 10,
                    })
                    wait(11)
                end
            end
        end
    end
end)

Tabs.Race:AddToggle('Auto Draco', {
    Title = 'Auto Get Draco Race', 
     Description = 'Updating More',
    Callback = function(v)
    end
})
Toggle = Tabs.Race:AddToggle("RaceAuto2", {Title = "Auto Upgrade Race V2", Default = false })
Toggle:OnChanged(function(Value)
    getgenv().UpgradeRaceV2 = Value
end)
spawn(function()
    pcall(function()
        while task.wait(0.2) do
            if not getgenv().UpgradeRaceV2 or not World2 then
                continue
            end            
            local player = game:GetService("Players").LocalPlayer
            local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            local backpack = player.Backpack
            local raceData = player.Data.Race            
            if raceData:FindFirstChild("Evolved") then
                continue
            end
            local alchemistStatus = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1")
            if alchemistStatus == 0 then
                local targetPos = CFrame.new(-2779.83521, 72.9661407, -3574.02002)
                if humanoidRootPart and (targetPos.Position - humanoidRootPart.Position).Magnitude > 4 then
                    topos(targetPos)
                else
                    task.wait(1.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
                end
            elseif alchemistStatus == 1 then
                if not (backpack:FindFirstChild("Flower 1") or player.Character:FindFirstChild("Flower 1")) then
                    topos(game:GetService("Workspace").Flower1.CFrame)
                elseif not (backpack:FindFirstChild("Flower 2") or player.Character:FindFirstChild("Flower 2")) then
                    topos(game:GetService("Workspace").Flower2.CFrame)
                elseif not (backpack:FindFirstChild("Flower 3") or player.Character:FindFirstChild("Flower 3")) then
                    local zombie = game:GetService("Workspace").Enemies:FindFirstChild("Zombie")
                    if zombie then
                        for _, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Zombie" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                                repeat
                                    task.wait()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    AutoHaki()
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                until backpack:FindFirstChild("Flower 3") or v.Humanoid.Health <= 0 or not v.Parent or not getgenv().UpgradeRaceV2
                            end
                        end
                    else
                        topos(CFrame.new(-5685.923, 48.48, -853.237))
                    end
                end
            elseif alchemistStatus == 2 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
            end
        end
    end)
end)
Tabs.Race:AddToggle('RaceV3', {
    Title = 'Auto Get Race V3', 
     Description = 'Updating More',
    Callback = function(v)
    end
})
Tabs.Race:AddParagraph({
	Title = "---------- Upgrade V4 ----------",
    Content = ""
})
Toggle = Tabs.Race:AddToggle("NoFrog", {Title = "No Frog", Default = false})
Toggle:OnChanged(function(Value)
    getgenv().NoFrog = Value
end)
spawn(function()
    while true do
        if getgenv().NoFrog then
            pcall(function()
                local lighting = game:GetService("Lighting")
                if lighting:FindFirstChild("LightingLayers") then
                    lighting.LightingLayers:Destroy()
                end
                if lighting:FindFirstChild("Sky") then
                    lighting.Sky:Destroy()
                end
            end)
        end
        wait(1)
        while not getgenv().NoFrog do
            wait(1)
        end
    end
end)
Toggle = Tabs.Race:AddToggle("TeleportAcientClock", {Title = "Teleport Ancient Clock", Default = false })
Toggle:OnChanged(function(Value)
    getgenv().TeleportAcientClock = Value
    StopTween(getgenv().TeleportAcientClock)
end)
spawn(function()
    while true do
        wait(0.5)
        if getgenv().TeleportAcientClock then
            topos(CFrame.new(29549, 15069, -88))
        end
    end
end)
Toggle = Tabs.Race:AddToggle("AutoBuyGear", {Title = "Auto Buy Gear", Default = false})
Toggle:OnChanged(function(Value)
    getgenv().AutoBuyGear = Value    
end)
spawn(function()
    pcall(function()
        while task.wait(0.1) do
            if getgenv().AutoBuyGear and World3 then
                local args = {"UpgradeRace", "Buy"}
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
            else
                repeat task.wait(1) until getgenv().AutoBuyGear
            end
        end
    end)
end)
local Toggle = Tabs.Race:AddToggle("AutoTrain", {Title = "Auto Finish Train Quest", Default = false})
Toggle:OnChanged(function(Value)
    getgenv().Race_1 = Value
    getgenv().QuestTrain_2 = Value
    if not Value then
        StopTween(getgenv().QuestTrain_2)
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if getgenv().Race_1 and game.Players.LocalPlayer.Character then
                local char = game.Players.LocalPlayer.Character
                if char:FindFirstChild("RaceTransformed") and char.RaceTransformed.Value then
                    getgenv().QuestTrain_2 = false
                    topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))
                end
            end
        end)
    end
end)
task.spawn(function()
    while task.wait(0.5) do 
        pcall(function()
            if getgenv().QuestTrain_2 and World3 and game.Players.LocalPlayer.Character then
                local enemies = workspace:FindFirstChild("Enemies")
                if enemies then
                    for _, v in pairs(enemies:GetChildren()) do
                        if v:IsA("Model") and (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat
                                    task.wait(0.1)
                                    AutoHaki()
                                    EquipWeapon(getgenv().SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    getgenv().BonesBring = true
                                until not getgenv().QuestTrain_2 or v.Parent == nil or v.Humanoid.Health <= 0
                            end
                        end
                    end
                end
                if BypassTP then
                    local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    local distance = (playerPos - BonePos.Position).Magnitude
                    if distance > 1500 then
                        BTP(BonePos)
                    else
                        topos(BonePos)
                    end
                else
                    topos(BonePos)
                end
                UnEquipWeapon(getgenv().SelectWeapon)
                getgenv().BonesBring = false
                topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))
                local replicated = game:GetService("ReplicatedStorage")
                for _, v in pairs(replicated:GetChildren()) do 
                    if v:IsA("Model") and (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") then
                        if v:FindFirstChild("HumanoidRootPart") then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end
            end
        end)
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if getgenv().Race_1 and game.Players.LocalPlayer.Character then
                local char = game.Players.LocalPlayer.Character
                if char:FindFirstChild("RaceTransformed") and not char.RaceTransformed.Value then
                    getgenv().QuestTrain_2 = true
                end
            end
        end)
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        pcall(function()
            if getgenv().Race_1 and game.Players.LocalPlayer.Character then
                local char = game.Players.LocalPlayer.Character
                if char:FindFirstChild("RaceEnergy") and char.RaceEnergy.Value >= 1 and not char.RaceTransformed.Value then
                    local be = game:GetService("VirtualInputManager")
                    be:SendKeyEvent(true, "Y", false, game)
                    task.wait(0.1)
                    be:SendKeyEvent(false, "Y", false, game)
                end
            end
        end)
    end
end)
Pullever = Tabs.Race:AddParagraph({
    Title = "Pull Lever Done",
    Content = "Status: "
})
spawn(function()
    local previousStatus = ""
    while task.wait(1) do
        local success, result = pcall(function()
            return game.ReplicatedStorage.Remotes.CommF_:InvokeServer("templedoorcheck")
        end)
        if success then
            local currentStatus = result and "✅" or "❌"
            if currentStatus ~= previousStatus then
                Pullever:SetDesc("Status: " .. currentStatus)
                previousStatus = currentStatus
            end
        end
    end
end)
Toggle = Tabs.Race:AddToggle("TeleportMigare", { Title = "Teleport To Migare Island", Default = false })
Toggle:OnChanged(function(Value)
    getgenv().TeleportMigare = Value
    StopTween(getgenv().TeleportMigare)
end)
spawn(function()
    pcall(function()
        while wait(0.5) do
            if getgenv().TeleportMigare and World3 then
                local island = game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
                if island and island:FindFirstChild("Center") then
                    local targetPos = island.Center.Position
                    local currentPos = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    if currentPos and (Vector3.new(targetPos.X, 500, targetPos.Z) - currentPos).magnitude > 5 then
                        topos(CFrame.new(targetPos.X, 500, targetPos.Z))
                    end
                end
            end
        end
    end)
end)
Toggle = Tabs.Race:AddToggle("Tweentohighestpoint", { Title = "Teleport To Highest Point", Default = false })
Toggle:OnChanged(function(Value)
    getgenv().Tweentohighestpoint = Value
    if not Value then
        return
    end
    spawn(function()
        while getgenv().Tweentohighestpoint do
            local HighestPoint = tweento_highestpoint()
            if HighestPoint and HighestPoint:FindFirstChild("CFrame") then
                local targetPos = HighestPoint.CFrame * CFrame.new(0, 211.88, 0)
                local currentPos = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                if currentPos and (targetPos.Position - currentPos).magnitude > 5 then
                    topos(targetPos)
                end
            end
            wait(0.5)
        end
    end)
end)
Toggle = Tabs.Race:AddToggle("TeleportAdvancedFruitDealer", { Title = "Teleport To Advanced Fruit Dealer", Default = false })
Toggle:OnChanged(function(Value)
    getgenv().TeleportAdvancedFruitDealer = Value
    if not Value then
        return
    end
    spawn(function()
        while getgenv().TeleportAdvancedFruitDealer and wait(0.5) do
            local MysticIsland = game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
            if MysticIsland then
                local AllNPCs = {}
                for _, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                    table.insert(AllNPCs, v)
                end
                for _, v in pairs(AllNPCs) do
                    if v.Name == "Advanced Fruit Dealer" and v:FindFirstChild("HumanoidRootPart") then
                        local targetPos = v.HumanoidRootPart.CFrame
                        local currentPos = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        if currentPos and (targetPos.Position - currentPos).magnitude > 5 then
                            topos(targetPos)
                        end
                        break
                    end
                end
            end
        end
    end)
end)
Toggle = Tabs.Race:AddToggle("LockMoonAndOnRaceV3", { Title = "Lock Moon And On Race V3", Default = false })
Toggle:OnChanged(function(Value)
    getgenv().LockMoonAndOnRaceV3 = Value
    if not Value then
        return
    end
    spawn(function()
        while getgenv().LockMoonAndOnRaceV3 and wait(0.5) do
            pcall(function()
                if World3 then
                    local moonDir = game.Lighting:GetMoonDirection()
                    if moonDir and moonDir.Magnitude > 0 then
                        local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                        game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
                    end
                end
            end)
        end
    end)
    spawn(function()
        while getgenv().LockMoonAndOnRaceV3 and wait(3) do
            pcall(function()
                if World3 then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
                    wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
                end
            end)
        end
    end)
end)
Toggle = Tabs.Race:AddToggle("TeleportToGear", { Title = "Teleport To Blue Gear", Default = false })
Toggle:OnChanged(function(Value)
    getgenv().TeleportToGear = Value
    StopTween(getgenv().TeleportToGear)
end)
spawn(function()
    while task.wait(0.1) do
        if not getgenv().TeleportToGear or not World3 then continue end
        local MysticIsland = game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
        if not MysticIsland then continue end
        for _, v in ipairs(MysticIsland:GetChildren()) do
            if v:IsA("MeshPart") and v.Material == Enum.Material.Neon then
                topos(v.CFrame)
                break
            end
        end
    end
end)
Tabs.Race:AddButton({
    Title = "Teleport To Trial Door",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        if not player or not player:FindFirstChild("Data") or not player.Data:FindFirstChild("Race") then
            return
        end
        local race = player.Data.Race.Value
        local positions = {
            Human  = CFrame.new(29221.822, 14890.975, -205.991),
            Skypiea = CFrame.new(28960.158, 14919.624, 235.039),
            Fishman = CFrame.new(28231.175, 14890.975, -211.641),
            Cyborg  = CFrame.new(28502.681, 14895.975, -423.727),
            Ghoul   = CFrame.new(28674.244, 14890.676, 445.431),
            Mink    = CFrame.new(29012.341, 14890.975, -380.149)
        }
        if positions[race] and typeof(topos) == "function" then
            topos(positions[race])
        end
    end
})
Toggle = Tabs.Race:AddToggle("AutoTrialRace", {Title = "Auto Trial Race", Default = false })
Toggle:OnChanged(function(Value)
    getgenv().AutoTrialRace = Value
    StopTween(getgenv().AutoTrialRace)
end)
spawn(function()
    local player = game:GetService("Players").LocalPlayer
    local race = player.Data.Race
    local virtualInput = game:GetService("VirtualInputManager")
    while getgenv().AutoTrialRace do
        wait(0.5)
        if race.Value == "Human" then
            for _, enemy in pairs(game.Workspace.Enemies:GetChildren()) do
                if enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") and enemy.Humanoid.Health > 0 then
                    pcall(function()
                        repeat
                            wait()
                            enemy.Humanoid.Health = 0
                            enemy.HumanoidRootPart.CanCollide = false
                            sethiddenproperty(player, "SimulationRadius", math.huge)
                        until not getgenv().AutoTrialRace or not enemy.Parent or enemy.Humanoid.Health <= 0
                    end)
                end
            end
        elseif race.Value == "Skypiea" then
            local skyTrial = game:GetService("Workspace").Map.SkyTrial.Model
            if skyTrial then
                for _, obj in pairs(skyTrial:GetDescendants()) do
                    if obj.Name == "snowisland_Cylinder.081" then
                        BTPZ(obj.CFrame)
                        break
                    end
                end
            end
        elseif race.Value == "Fishman" then
            local seaBeast = game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1")
            if seaBeast then
                local root = seaBeast:FindFirstChild("HumanoidRootPart")
                if root then
                    topos(root.CFrame)
                    local backpack = player.Backpack
                    local function equipTool(toolType)
                        for _, tool in pairs(backpack:GetChildren()) do
                            if tool:IsA("Tool") and tool.ToolTip == toolType then
                                player.Character.Humanoid:EquipTool(tool)
                                wait(0.2)
                                virtualInput:SendKeyEvent(true, 122, false, game)
                                virtualInput:SendKeyEvent(false, 122, false, game)
                                wait(0.2)
                                virtualInput:SendKeyEvent(true, 120, false, game)
                                virtualInput:SendKeyEvent(false, 120, false, game)
                                wait(0.2)
                                virtualInput:SendKeyEvent(true, 99, false, game)
                                virtualInput:SendKeyEvent(false, 99, false, game)
                            end
                        end
                    end
                    equipTool("Melee")
                    equipTool("Blox Fruit")
                    equipTool("Sword")
                    equipTool("Gun")
                end
            end
        elseif race.Value == "Cyborg" then
            topos(CFrame.new(28654, 14898.7832, -30))
        elseif race.Value == "Ghoul" then
            for _, enemy in pairs(game.Workspace.Enemies:GetChildren()) do
                if enemy:FindFirstChild("Humanoid") and enemy:FindFirstChild("HumanoidRootPart") and enemy.Humanoid.Health > 0 then
                    pcall(function()
                        repeat
                            wait()
                            enemy.Humanoid.Health = 0
                            enemy.HumanoidRootPart.CanCollide = false
                            sethiddenproperty(player, "SimulationRadius", math.huge)
                        until not getgenv().AutoTrialRace or not enemy.Parent or enemy.Humanoid.Health <= 0
                    end)
                end
            end
        elseif race.Value == "Mink" then
            for _, obj in pairs(game:GetService("Workspace"):GetDescendants()) do
                if obj.Name == "StartPoint" then
                    topos(obj.CFrame * CFrame.new(0, 10, 0))
                    break
                end
            end
        end
    end
end)
Toggle = Tabs.Race:AddToggle("AutoKillPlayerAfterTrial", {Title = "Auto Kill Player After Trial V4", Default = false })
Toggle:OnChanged(function(Value)
    getgenv().AutoKillPlayerAfterTrial = Value
    StopTween(getgenv().AutoKillPlayerAfterTrial)
end)
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoKillPlayerAfterTrial and World3 then
            pcall(function()
                local player = game.Players.LocalPlayer
                local char = player.Character
                if not char or not char:FindFirstChild("HumanoidRootPart") then return end                
                for _, v in ipairs(game.Workspace.Characters:GetChildren()) do
                    if v.Name ~= player.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                        local humanoid = v.Humanoid
                        local rootPart = v.HumanoidRootPart
                        if humanoid.Health > 0 and (char.HumanoidRootPart.Position - rootPart.Position).Magnitude <= 230 then
                            task.spawn(function()
                                AutoHaki()
                                EquipWeapon(getgenv().SelectWeapon)
                                topos(rootPart.CFrame * CFrame.new(1, 1, 2))
                                rootPart.Size = Vector3.new(60, 60, 60)
                                rootPart.CanCollide = false
                                if v:FindFirstChild("Head") then
                                    v.Head.CanCollide = false
                                end
                                humanoid.WalkSpeed = 0
                                sethiddenproperty(player, "SimulationRadius", math.huge)
                                while getgenv().AutoKillPlayerAfterTrial and humanoid.Health > 0 and v.Parent and rootPart and humanoid do
                                    task.wait(0.1)
                                end
                            end)
                        end
                    end
                end
            end)
        end
    end
end)
--- Load Config Ui 
InterfaceManager:SetLibrary(Fluent)
SaveManager:SetLibrary(Fluent)
SaveManager:LoadAutoloadConfig()
--- End ---