--- Script Này Được Hoàn Thành Trong Gần 1 Tuần
--- Nếu Ai Mà Decode Mã Hóa Script Này Được Thì Mong Bạn Đừng Share Cho Ai Nhé
--- Nếu Được Thì Mình Xin Chân Thành Cảm Ơn!
local function HBelz()
function topos(Pos) -- Tween
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
    tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/350, Enum.EasingStyle.Linear),{CFrame = Pos})
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

PosY = 25

Type = 1
spawn(function()
    while wait() do
		if Type == 1 then
			Pos = CFrame.new(0,PosY,-19)
		elseif Type == 2 then
			Pos = CFrame.new(19,PosY,0)
		elseif Type == 3 then
			Pos = CFrame.new(0,PosY,19)	
		elseif Type == 4 then
			Pos = CFrame.new(-19,PosY,0)
        end
    end
end)

spawn(function()
    while wait(.1) do
        Type = 1
        wait(0.2)
        Type = 2
        wait(0.2)
        Type = 3
        wait(0.2)
        Type = 4
        wait(0.2)
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.MysticIsland or _G.SelectBoss or _G.QuestRace or _G.TweenMGear or _G.AutoCyborg then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            end
        end
    end)
end)
    
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.MysticIsland or _G.SelectBoss or _G.QuestRace or _G.TweenMGear or _G.AutoCyborg then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)

function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
    if game.Players.LocalPlayer.Character:FindFirstChild('Highlight') then
        game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
    end
end

function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function EquipWeapon(ToolSe)
    if true then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

_G.SelectWeapon = "Melee"

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
			elseif _G.SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Gun" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Gun" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			end
		end)
	end
end)

local player = game.Players.LocalPlayer
function AttackNoCoolDown()
    local character = player.Character
    if not character then return end
    local equippedWeapon = nil
    for _, item in ipairs(character:GetChildren()) do
        if item:IsA("Tool") then
            equippedWeapon = item
            break
        end
    end
    if not equippedWeapon then return end
    local function IsEntityAlive(entity)
        return entity and entity:FindFirstChild("Humanoid") and entity.Humanoid.Health > 0
    end
    local function GetEnemiesInRange(range)
        local enemies = game:GetService("Workspace").Enemies:GetChildren()
        local targets = {}
        local playerPos = character:GetPivot().Position
        for _, enemy in ipairs(enemies) do
            local primaryPart = enemy:FindFirstChild("HumanoidRootPart")
            if primaryPart and IsEntityAlive(enemy) and (primaryPart.Position - playerPos).Magnitude <= range then
                table.insert(targets, enemy)
            end
        end
        return targets
    end
    if equippedWeapon:FindFirstChild("LeftClickRemote") then
        local attackCount = 1  
        local enemiesInRange = GetEnemiesInRange(60)
        for _, enemy in ipairs(enemiesInRange) do
            local direction = (enemy.HumanoidRootPart.Position - character:GetPivot().Position).Unit
            pcall(function()
                equippedWeapon.LeftClickRemote:FireServer(direction, attackCount)
            end)
            attackCount = attackCount + 1
            if attackCount > 1000000000 then attackCount = 1 end
        end
    else
        local targets = {}
        local enemies = game:GetService("Workspace").Enemies:GetChildren()
        local playerPos = character:GetPivot().Position
        local mainTarget = nil
        for _, enemy in ipairs(enemies) do
            if not enemy:GetAttribute("IsBoat") and IsEntityAlive(enemy) then
                local head = enemy:FindFirstChild("Head")
                if head and (playerPos - head.Position).Magnitude <= 60 then
                    table.insert(targets, { enemy, head })
                    mainTarget = head
                end
            end
        end
        if not mainTarget then return end
        pcall(function()
            local storage = game:GetService("ReplicatedStorage")
            local attackEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack")
            local hitEvent = storage:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit")
            if #targets > 0 then
                attackEvent:FireServer(0.000000001)
                hitEvent:FireServer(mainTarget, targets)
            else
                task.wait(0.000000001)
            end
        end)
    end
end

_G.FastAttack = true

spawn(function()
    while wait(.1) do
        if _G.FastAttack then
            pcall(function()
                repeat task.wait(000.1)
                    AttackNoCoolDown()
                until not _G.FastAttack
            end)
        end
    end
end)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "HBelz Hub [ Premium ] | Pull Lever            by Heius Roblox", HidePremium = false, SaveConfig = true, ConfigFolder = "HBelzPullLever"})
local Tab = Window:MakeTab({
	Name = "Thông Tin",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Tab1 = Window:MakeTab({
	Name = "Trạng Thái",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
}
--- Thông Báo Hub
OrionLib:MakeNotification({
	Name = "Welcome!",
	Content = "Welcome To My Script!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
--- ImageButton
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DraggableImageButtonGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = game:GetService("CoreGui")
local dragFrame = Instance.new("Frame")
dragFrame.Name = "DragFrame"
dragFrame.Size = UDim2.new(0, 50, 0, 50)
dragFrame.Position = UDim2.new(0, 300, 0, 200)
dragFrame.BackgroundTransparency = 1
dragFrame.Active = true
dragFrame.Draggable = true
dragFrame.Parent = screenGui
local imageButton = Instance.new("ImageButton")
imageButton.Name = "RoundedImageButton"
imageButton.Size = UDim2.new(1, 0, 1, 0)
imageButton.Position = UDim2.new(0, 0, 0, 0)
imageButton.Image = "rbxassetid://134823597822060"
imageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
imageButton.Parent = dragFrame
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 18)
corner.Parent = imageButton
local uiVisible = true
imageButton.MouseButton1Click:Connect(function()
    local orionUI = game:GetService("CoreGui"):FindFirstChild("Orion")
    if orionUI then
        uiVisible = not uiVisible
        orionUI.Enabled = uiVisible
    end
end)
--- Infor Hub
Tab:AddLabel("I'm Heius Dzz")
Tab:AddLabel("Facebook: Hoang Hieu ( HieuYeager )")
Tab:AddLabel("Script by HieuYeager ( HeiusDzzz )")
Tab:AddLabel("Hỡi Các Thần Dân Của Ymir, Tên Ta Là HieuYeager!")
Tab:AddLabel("Tại Sao Phải Làm Vua, Khi Ta Có Thể Làm Thần?")
Tab:AddLabel("Chỉ Ta Mới Có Thể Ngồi Vào Ngai Vàng Của Đấng Chí Tôn!")
Tab:AddLabel("Client Support [ Mobile ]: All Cilent")
Tab:AddLabel("Client Support [ PC ]: All Cilent")
--- Status
local RipHatLabel = Tab1:AddLabel("Valkyrie Helm ( Mũ Rip Indra ):")
local function HasValkyrieHelm()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local backpack = player.Backpack
    for _, item in ipairs(character:GetChildren()) do
        if item:IsA("Accessory") and item.Name:lower() == "Valkyrie Helm" then
            return true
        end
    end
    for _, item in ipairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name:lower() == "Valkyrie Helm" then
            return true
        end
    end

    return false
end

local function UpdateRipHatStatus()
    if HasValkyrieHelm() then
        RipHatLabel:Set("Valkyrie Helm ( Mũ Rip Indra ): ✅")
    else
        RipHatLabel:Set("Valkyrie Helm ( Mũ Rip Indra ): ❌")
    end
end
UpdateRipHatStatus()
while true do
    task.wait(1)
    UpdateRipHatStatus()
end


local DKStatus = Tab1:AddLabel("Mirror Fractal ( Mảnh Gương ): ")
local function checkMirrorFractal()
    local hasFractal = false
    for _, item in pairs(player.Backpack:GetChildren()) do
        if item.Name == "Mirror Fractal" then
            hasFractal = true
            break
        end
    end
    if not hasFractal then
        for _, item in pairs(player.Character:GetChildren()) do
            if item.Name == "Mirror Fractal" then
                hasFractal = true
                break
            end
        end
    end
    if hasFractal then
        DKStatus:Set("Mirror Fractal ( Mảnh Gương ): ✅")
    else
        DKStatus:Set("Mirror Fractal ( Mảnh Gương ): ❌")
    end
end
checkMirrorFractal()
while true do
    checkMirrorFractal()
    wait(1)
end


local MirageS = Tab1:AddLabel("Mirage Island ( Status ): ")
local previousStatus1 = ""
spawn(function()
    pcall(function()
        while true do
            wait(1)            
            local mirageIslandExists = game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') ~= nil
            local statusMI = mirageIslandExists and '✅️' or '❌️'
            if statusMI ~= previousStatus then
                MirageS:Set('Mirage Island ( Status ): ' .. statusMI)
                previousStatus1 = statusMI
            end
        end
    end)
end)


local PLS = Tab1:AddLabel("Pull Lever ( Status ): ")
spawn(function()
    local previousStatus2 = ""
    while task.wait(1) do
        local success, result = pcall(function()
            return game.ReplicatedStorage.Remotes.CommF_:InvokeServer("templedoorcheck")
        end)
        if success then
            local statusPL = result and "✅" or "❌"
            if statusPL ~= previousStatus then
                PLS:Set("Pull Lever ( Status ): " .. statusPL)
                previousStatus2 = statusPL
            end
        end
    end
end)
--- Auto Pull Lever [ Premium ]
     --- Dough King Function
local checkDK = game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King")
local function AutoFindDK()
OrionLib:MakeNotification({
	Name = "Hop Server Dough King",
	Content = "Đang Chuyển Server Có Dough King",
	Image = "rbxassetid://4483345998",
	Time = 10
})
 wait(2)
        loadstring(game:HttpGet("https://pastefy.app/NHAdVTDi/raw"))()
    end
local function AutoAttackDK()
OrionLib:MakeNotification({
	Name = "Auto Attack Dough King",
	Content = "Đang Đi Đánh Dough King",
	Image = "rbxassetid://4483345998",
	Time = 10
})
    spawn(function()
        while wait() do
            pcall(function()
                local bossName = "Dough King"
                if game:GetService("Workspace").Enemies:FindFirstChild(bossName) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == bossName then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                until not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild(bossName) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(bossName).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                    end
                end
            end)
        end
    end)
end

local function AutoFullDoughKing()
   if checkDK == nil then
     AutoFindDK()
  else 
    AutoAttackDK()
 end
end


      --- Rip Indra Function
local function AutoFindRipIndra()
OrionLib:MakeNotification({
	Name = "Hop Server Rip Indra",
	Content = "Đang Chuyển Server Có Rip Indra",
	Image = "rbxassetid://4483345998",
	Time = 10
})
wait(2)
        loadstring(game:HttpGet("https://pastefy.app/bu21BbPi/raw"))()
    end
local function AutoAttackRipIndra()
OrionLib:MakeNotification({
	Name = "Auto Attack Rip Indra",
	Content = "Đang Đi Đánh Rip Indra",
	Image = "rbxassetid://4483345998",
	Time = 10
})
    spawn(function()
        while wait() do
            pcall(function()
                local bossName = "rip_indra True Form"
                if game:GetService("Workspace").Enemies:FindFirstChild(bossName) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == bossName then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                until not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild(bossName) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(bossName).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                    end
                end
            end)
        end
    end)
end

local checkRip = game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra")


   --- Pull Lever Function
   local function IsAtMirageTop()
    local HighestPoint = tweento_highestpoint()
    local char = game.Players.LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    
    if HighestPoint and hrp then
        local targetPos = HighestPoint.Position + Vector3.new(0, 211.88, 0)
        local currentPos = hrp.Position
        return (targetPos - currentPos).Magnitude < 5
    end
    
    return false
end

local function FindMirage()
OrionLib:MakeNotification({
	Name = "Hop Server Mirage Island",
	Content = "Đang Chuyển Server Có Đảo Bí Ẩn",
	Image = "rbxassetid://4483345998",
	Time = 10
})
wait(2)
         loadstring(game:HttpGet("https://pastefy.app/Ds8rU2qS/raw"))()
    end
local function TPDinhMirage()
 spawn(function()
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
local function LockMoonVaBatToc()
spawn(function()
        while wait(0.5) do
            pcall(function()
                if game.PlaceId == 7449423635 then
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
        while wait(3) do
            pcall(function()
                if game.PlaceId == 7449423635 then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, "T", false, game)
                    wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, "T", false, game)
                end
            end)
        end
    end)
end)
local function TPGear()
spawn(function()
    while task.wait(0.1) do
        if not game.PlaceId ~= 7449423635 then continue end
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
local function hasGear()
    for _, part in ipairs(workspace:GetChildren()) do
        if part:IsA("MeshPart") and part.Material == Enum.Material.Neon then
            return true
        end
    end
    return false
end
local function AutoPullLever()
OrionLib:MakeNotification({
	Name = "Auto Pull Lever",
	Content = "Đang Đi Làm Nhiệm Vun Gạt Cần",
	Image = "rbxassetid://4483345998",
	Time = 10
})
    if statusPL == "❌" then
        spawn(function()
            pcall(function()
                if statusMI == '❌' then
                    HopMirage()
                else
            if not IsAtMirageTop() then
                  TPDinhMirage()
            else
              spawn(function()
                pcall(function()
              LockMoonVaBatToc()
             wait(5)
            if hasGear then
             TPGear()
                end
            end)
        end)
    end
end
 

   --- Full Function
spawn(function()
   pcall(function()
    if RipHatLabel == "Valkyrie Helm ( Mũ Rip Indra ): ❌" then
        spawn(function()
            pcall(function()
                if checkRip == nil then
                    AutoFindRipIndra()
                else
                    AutoAttackRipIndra()
                end
            end)
        end)
    else
        spawn(function()
            pcall(function()
              if DKStatus == "Mirror Fractal ( Mảnh Gương ): ❌" then
               AutoFullDoughKing()
             else
               AutoPullLever()
            end)
        end)
    end
end
--- Thank You 
Tab1:AddLabel("English: Thank you for purchasing the script premium key ;-;")
Tab1:AddLabel("Vietnamese: Cảm ơn bạn vì đã mua key script premium ;-;")
Tab1:AddLabel("------------End Script-----------")
--- Chạy Ui ( OrionLib )
OrionLib:Init()
--- K trong bf = kick
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local CommF_ = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_")
local BF = {
    [2753915549] = true,
    [4442272183] = true,
    [7449423635] = true
}

local function hasRaceV3()
    local result = CommF_:InvokeServer("Wenlocktoad", "1")
    local transformed = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("RaceTransformed")
    return result == -2 and not transformed
end
repeat wait() until LocalPlayer and LocalPlayer.Character and LocalPlayer:FindFirstChild("Data") and LocalPlayer.Data:FindFirstChild("Race")

if BF[game.PlaceId] then
    if not hasRaceV3() then
        game.Players.LocalPlayer:Kick("Kick by HeiusDzzzzz\nVietnamese: Bạn Chưa Có Tộc V3!\nEnglish: You Don't Have Race V3!")
    else
        HBelz()
    end
elseif game.PlaceId == 2753915549 or game.PlaceId == 4442272183 then
    spawn(function()
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end)
    end)
else
    game.Players.LocalPlayer:Kick("Kick by HeiusDzzzzz\nVietnamese: Vui Lòng Khởi Chạy Script Trong Blox Fruits\nEnglish: Please Run Script In Blox Fruits")
end
--- Hết