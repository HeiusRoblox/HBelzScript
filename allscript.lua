local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/Library-ui/refs/heads/main/Redzhubui"))()
local Window = redzlib:MakeWindow({
    Title = "Heius Roblox-All Script",
    SubTitle = "by HieuYeager",
    SaveFolder = "hbelzall"
})
Window:AddMinimizeButton({
    Button = {
        Image = "rbxassetid://106674226087364",
        BackgroundTransparency = 0
    },
    Corner = {
        CornerRadius = UDim.new(0, 5)
    }
})
local Info = Window:MakeTab({"Infomantion", "info"})
local Set = Window:MakeTab({"Main", "home"})
local Tool = Window:MakeTab({"Tool", "users"})
local BF = Window:MakeTab({"Blox Fruits", "cherry"})
local Gag = Window:MakeTab({"Grow A Garden", "moon"})
local Dr = Window:MakeTab({"Dead Rails", "swords"})
local BL = Window:MakeTab({"Blue Lock: Rivals", "egg"})
--- Info
Info:AddParagraph({"I'm Heius Dzz", "Top 1 Skid Vn"})
Set:AddDropdown({
    Name = "Kích Thước Ui",
    Description = "Điều chỉnh kích thước giao diện",
    Options = {"Small", "Medium", "Large", "Bigger"},
    Default = "Large",
    Flag = "UISize",
    Callback = function(size)
        print("Kích thước giao diện: " .. size)
    end
})
--- Main
Set:AddDropdown({
    Name = "Ai Là Người Đúng?",
    Description = "Hãy Chọn Người Mà Bạn Nghi Ngờ",
    Options = {"Jack-J97", "Thiên An"},
    Default = nil,
    Flag = "Domdom",
})
Set:AddDropdown({
    Name = "Tao Có Đzai Không?",
    Description = "Không Là Cắt Cu",
    Options = {"Yes", "Có"},
    Default = "Large",
    Flag = "UISize",
    Callback = function()
        print("Không Cần Nói Tao Cx Bt Tao Đz")
    end
})
Set:AddDropdown({
    Name = "Mày Là Đom Đóm Hay Sky",
    Description = "Tao Là Đóm Con Meow Meow",
    Options = {"Đóm Con", "Sky"},
    Default = "Large",
    Flag = "UISize",
})
--- Tool
Tool:AddButton({"Fix Lag Turbo Lite", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
end
})
Tool:AddButton({"Fly Gui V3", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end
})
--- Blox Fruit
BF:AddSection({"Script Farm [ Free ]"})
BF:AddButton({"Redz Hub", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/newredz/BloxFruits/refs/heads/main/Source.luau"))(Settings)
end
})
BF:AddButton({"HBelz Hub", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/HeiusRoblox/HBelzScript/refs/heads/main/HBelzFree.lua"))()
end
})
BF:AddButton({"HBelz Hub V2", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/HeiusRoblox/HBelzScript/refs/heads/main/HBelzFreeV2.lua"))()
end
})
BF:AddButton({"W-Azure Hub", function()
  loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
end
})
BF:AddButton({"Rubu V3 Eng", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/RubuRoblox/refs/heads/main/RubuRz"))()
end
})
BF:AddButton({"Rubu V3 VN", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/RubuRoblox/refs/heads/main/RubuRzVn"))()
end
})
BF:AddButton({"Xeter Hub V1", function()
  getgenv().Version = "V1"
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Loader/main/Xeter.lua"))()
end
})
BF:AddButton({"Xeter Hub V2", function()
  getgenv().Version = "V2"
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Loader/main/Xeter.lua"))()
end
})
BF:AddButton({"Teddy Auto Hop", function()
repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
end
})
BF:AddButton({"Teddy Auto Pull Lever", function()
repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-AUTOPULLLever"))()
end
})
BF:AddButton({"Astral Hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
end
})
BF:AddButton({"Tsuo Hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/Tsuoscripts"))()
end
})
BF:AddButton({"Xero Hub", function()
getgenv().Team = "Marines"
getgenv().Hide_Menu = false
getgenv().Auto_Execute = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
end
})
BF:AddButton({"Volcano Hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wpisstestfprg/Volcano/refs/heads/main/VolcanoNewUpdated.luau"))()
end
})
BF:AddButton({"Lion Hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NHMdz/BloxFruit/refs/heads/main/Lion%20Hub.lua"))()
end
})
BL:AddButton({"Blue X Hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
end
})
BF:AddSection({"Script Premium [ Fake ]"})
BF:AddButton({"Maru Hub [ by KimP ]", function()
	  getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/KimP/refs/heads/main/MaruHub"))()
end
})
BF:AddButton({"Banana Hub [ by Kimp ]", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/kimprobloxdz/Banana-Free/refs/heads/main/Protected_5609200582002947.lua.txt"))()
end
})
BF:AddButton({"Banana Hub [ by HeiusRoblox-HieuYeager ]", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/HeiusRoblox/HBelzScript/refs/heads/main/HBelzV4Banana.lua"))()
end
})
--- Grow A Garden
Gag:AddButton({"NO-Lag Hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/NoLag-id/No-Lag-HUB/refs/heads/main/Garden/Garden-V1.lua"))()
end
})
Gag:AddButton({"Dinga Hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dingarik/Dingarik/refs/heads/main/GrowAGarden"))()
end
})
Gag:AddButton({"Speed Hub X", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
end
})
Gag:AddButton({"Vxeze Hub [ Kaitun Grow A Garden ]", function()
getgenv().VxezeHubConfig = {
    ["Auto Collect Plants"] = true,
    ["Auto Collect Moonlit Fruit"] = false,
    ["Auto Collect Blood Fruit"] = false,
    ["Loop Auto Sell"] = true,

    ["Auto Buy M+ Seeds"] = false,
    ["Auto Buy Selected Seeds"] = true,
    ["Select All Seeds"] = true,
    ["SelectedSeedsToBuy"] = {
        ["Apple"] = false, ["Bamboo"] = false, ["Beanstalk"] = false, ["Blueberry"] = false,
        ["Cacao"] = false, ["Cactus"] = false, ["Carrot"] = false, ["Coconut"] = false,
        ["Corn"] = false, ["Daffodil"] = false, ["Dragon Fruit"] = false, ["Grape"] = false,
        ["Mango"] = false, ["Mushroom"] = false, ["Orange"] = false, ["Pepper"] = false,
        ["Pumpkin"] = false, ["Strawberry"] = false, ["Tomato"] = false, ["Watermelon"] = false
    },

    ["Auto Buy Blood"] = false,
    ["Select All Blood Items"] = true,
    ["SelectedBloodItemsToBuy"] = {
        ["Blood Banana"] = false, ["Blood Hedgehog"] = false, ["Blood Kiwi"] = false, ["Blood Owl"] = false,
        ["Moon Melon"] = false, ["Mysterious Crate"] = false, ["Night Egg"] = false,
        ["Night Seed Pack"] = false, ["Star Caller"] = false
    },

    ["Auto Buy Eggs"] = false,
    ["Eggs"] = {
        ["Common"] = true, ["Uncommon"] = true, ["Rare"] = true,
        ["Legendary"] = true, ["Mythical"] = true, ["Bug"] = true,
    },
    ["Auto Plant All Seeds"] = true,
    ["Select All Plantable Seeds"] = true,
    ["SelectedSeedsToPlant"] = {
        ["Apple"] = false, ["Bamboo"] = false, ["Beanstalk"] = false, ["Blueberry"] = false,
        ["Cacao"] = false, ["Cactus"] = false, ["Carrot"] = false, ["Coconut"] = false,
        ["Corn"] = false, ["Daffodil"] = false, ["Dragon Fruit"] = false, ["Grape"] = false,
        ["Mango"] = false, ["Mushroom"] = false, ["Orange"] = false, ["Pepper"] = false,
        ["Pumpkin"] = false, ["Strawberry"] = false, ["Tomato"] = false, ["Watermelon"] = false
    },

    ["Auto Submit Moonlit"] = false,
    ["Anti-AFK"] = true,
    ["Player NoClip"] = true,
    ["Camera NoClip"] = true,
    ["Continuous E Hold"] = true,
    ["Auto Max Zoom"] = true,
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/VxezeHubGrowAGardenKaitun.lua"))()
end
})
Gag:AddButton({"Doggo Hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/doggoman230/growagarden/refs/heads/main/script"))()
end
})
--- Dead Rails
Dr:AddButton({"Neox Hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/NEOXHUBMAIN/refs/heads/main/loader", true))()
end
})
Dr:AddButton({"Speed Hub X", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
end
})
Dr:AddButton({"Alchemy Hub", function()
loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
end
})
Dr:AddButton({"Skull Hub", function()
loadstring(game:HttpGet('https://skullhub.xyz/loader.lua'))()
end
})
Dr:AddButton({"Pink Hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptBeLike/Tera-DeadRails/refs/heads/main/Meteor%20V1"))()
end
})
Dr:AddButton({"Lunor Hub", function()
loadstring(game:HttpGet('https://lunor.dev/loader'))()
end
})
Dr:AddButton({"Tora Hub",  function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/DeadRails"))()
end
})
--- Blue Lock
BL:AddButton({"Alchemy Hub", function()
loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
end
})
BL:AddButton({"Nicuse Hub", function()
loadstring(game:HttpGet("https://nicuse.xyz/MainHub.lua"))()
end
})
BL:AddButton({"NS Hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/fo/refs/heads/main/ot"))()
end
})
BL:AddButton({"Zee Hub", function()
loadstring(game:HttpGet("https://zuwz.xyz/ZEEHubVNBlueLock.lua"))()
end
})
BL:AddButton({"OMG Hub", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
end
})
BL:AddButton({"Sterling Hub", function()
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local player = Players.LocalPlayer
local function onerrorMessageChanged(errorMessage)
    if errorMessage and errorMessage ~= "" then
        print("Error detected: " .. errorMessage)
        if player then
            wait()
            TeleportService:Teleport(game.PlaceId, player)
        end
    end
end
GuiService.ErrorMessageChanged:Connect(onerrorMessageChanged)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Zayn31214/name/refs/heads/main/SterlingNew"))()
end
})
