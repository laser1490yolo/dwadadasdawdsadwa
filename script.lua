local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Antware_hub", "DarkTheme")
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")


    MainSection:NewButton("Back/Front Flip", "Makes you do gymnastics", function()
        loadstring(game:HttpGet('https://pastebin.com/raw/7wDcPtLk'))()
    end)

    MainSection:NewToggle("Super-Human", "go fast and jump high", function(state)
        if state then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 120
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        end
    end)

    MainSection:NewButton("Infinite Yield", "FE Admin Commands", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end)

	--aresenal aimbot
	local Other = Window:NewTab("Aresenal Aimbot")
    local OtherSection = Other:NewSection("Aimbot")
	
	OtherSection:NewButton("bols_hub", "best_aresneal hack ever", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fusiongreg/BoltsHubV5/main/Arsenal2"))()
    end)
	
	OtherSection:NewButton("owl_hub", "best_aresneal hack ever", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
    end)
