local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TITLE", "DarkTheme")
local Tab = Window:NewTab("Ragebot")
local Section = Tab:NewSection("Ragebot V1")
Section:NewToggle("Auto Fire", "Through walls - Always On", function(state)
    _G.afire = state
    while getgenv().afire and task.wait() do
        for _, i in pairs(game.Players:GetPlayers()) do  
            if i.Character and i.Name ~= game.Players.LocalPlayer.Name then
                if i.Character and i.Character:FindFirstChild("Head") then
                    local args = {
                    	{
                    		muzzle_position = i.Character.Head.Position + Vector3.new(0.0001, 0.00001, 0.00001),
                    		keep_ammo = false,
                    		is_stitched = false,
                    		weapon_name = game.Players.LocalPlayer.secondary.Value,
                    		cframe = game.Players.LocalPlayer.Character.LowerTorso.CFrame,
                    		actions = {
                    			crouching = false,
                    			aimming = false,
                    			shifting = false,
                    			strength = streng,
                    			falling = false,
                    			running = false,
                    			jumping = false,
                    			flashed = false,
                    			god_mode = false
                    		},
                    		spread_cframe = CFrame.new(0, 0, 0, 0, -0, 0, 0, 0, -0, -0, 0, 0)
                    	},
                    	game.Players.LocalPlayer.secondary.Value,
                    	{
                    		Normal = Vector3.xAxis,
                    		Instance = i.Character.Head,
                    		Position = i.Character.Head.Position
                    	}
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("remote"):WaitForChild("firing"):WaitForChild("fire"):FireServer(unpack(args))
                    task.wait(0.1)
                end
            end
        end
    end
end)
