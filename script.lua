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

        OtherSection:NewButton("my_simple_aimbot", "best_aresneal hack ever", function()
	local localPlayer = game:GetService("Players").LocalPlayer

local function player()
    local target = nil
    local dist = math.huge
    
    for i, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Name ~= localPlayer.Name then
            if v.Character and v.Character:FindFirstChild("Head") and v.Character.Humanoid.Health > 0 and v.Character:FindFirstChild("Head") and v.TeamColor ~= localPlayer.TeamColor then
                local magnitude = (v.Character.HumanoidRootPart.Position - localPlayer.Character.HumanoidRootPart.Position).magnitude

                if magnitude < dist then
                    target = v
                    dist = magnitude
                end
        end
    end
    
    return target
end


local camera = game.Workspace.CurrentCamera
local UIS = game:GetService("UserInputService")
local aim = false

game:GetService("RunService").RenderStepped:Connect(function()
    if aim then
        camera.CFrame = CFrame.new(camera.CFrame.Position,player().Character.Head.Position)
    end
end)

UIS.InputBegan:Connect(function(inp)
    if inp.UserInputType == Enum.UserInputType.MouseButton2 then
        aim = true
    end
end)

UIS.InputEnded:Connect(function(inp)
    if inp.UserInputType == Enum.UserInputType.MouseButton2 then
        aim = false
    end
end)
	end)
