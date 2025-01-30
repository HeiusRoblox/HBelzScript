loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "H-Belz Hub",
         Animation = "Script Tổng Hợp"
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"1234"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Script Farm"})
    
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "Fix Lag Turbo Lite",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
  end
  })
     AddButton(Tab1o, {
     Name = "Redz Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
  end
  })   
     AddButton(Tab1o, {
     Name = "AnDepZai Hub",
    Callback = function()
	  repeat wait() until game:IsLoaded() and game.Players.LocalPlayer 
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/AnDepZaiHubNewUpdated.lua"))()
  end
  })   
     AddButton(Tab1o, {
     Name = "W-azure",
    Callback = function()
	  getgenv().Team = "Pirates"
     getgenv().FixCrash = false
     getgenv().FixCrash2 = false
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
  end
  })  
     AddButton(Tab1o, {
     Name = "Bap Red Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/BapRed/main/BapRedHub"))()
  end
  })   
     AddButton(Tab1o, {
     Name = "Speed Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
  end
  })
