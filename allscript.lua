loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()



       local Window = MakeWindow({

         Hub = {

         Title = "H-Belz Hub",

         Animation = "Script Tong Hop"

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

       Image = "rbxassetid://106674226087364",

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

     Name = "Turbo Lite Hub",

    Callback = function()

	  loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/refs/heads/main/Main.lua"))()

  end

  }) 

     AddButton(Tab1o, {

     Name = "Redz Hub",

    Callback = function()

	  loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()

  end

  })   
AddButton(Tab1o, {

     Name = "Quantum Onyx",

    Callback = function()

	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Trustmenotcondom/QTONYX/refs/heads/main/QuantumOnyx.lua"))()
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

     Name = "Angry Hub",

    Callback = function()

	  loadstring(game:HttpGet("https://gist.githubusercontent.com/angry5/ec20347a74aa4e46c71b15b6093eeaf5/raw/Angery.lua"))()
  end

  })   

     AddButton(Tab1o, {

     Name = "Speed Hub",

    Callback = function()

	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()

  end
  })
  
  AddButton(Tab1o, {

     Name = "Min Gaming Hub",

    Callback = function()


	loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinBV"))() 
  end

  })

     AddButton(Tab1o, {

     Name = "Xero Hub",

    Callback = function()

	  getgenv().Team = "Marines"

getgenv().Hide_Menu = false

getgenv().Auto_Execute = false

loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()

  end

  })

  AddButton(Tab1o, {

     Name = "Astrol Hub",

    Callback = function()

	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()

  end

  })
  AddButton(Tab1o, {

     Name = "Teddy Hub",

    Callback = function()

	 loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/TeddyHubv2"))()

  end

  })
