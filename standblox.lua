local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Standblox Remade", "DarkTheme")
local Tab = Window:NewTab("Ragebot")
local Section = Tab:NewSection("Ragebot V2")
local Section2 = Tab:NewSection("Local Player")
local infinite = false
local god = false
local ns = false
local spr = nil
local rapid = false
Section:NewToggle("Rapid Fire", "working with Auto Fire only", function(state)
    rapid = state
end)
Section:NewToggle("Endless Ammo", "working with Auto Fire only", function(state)
    infinite = state
end)
Section2:NewToggle("God Mode", "working with Auto Fire only", function(state)
    god = true
end)
local needed = nil
local cd = false
Section:NewToggle("Auto Fire", "Through walls - Always On", function(state)
    getgenv().afire = state
    
    if getgenv().afire then
        needed = game.Players.LocalPlayer.team.Value  
        
        if rapid then
            cd = 0.0001
        else
            cd = 0.25
        end
    end
    
    while getgenv().afire and task.wait() do
        for _, i in pairs(game.Players:GetPlayers()) do  
            if i.Character and i.Name ~= game.Players.LocalPlayer.Name then
                if i.Character and i.Character:FindFirstChild("Head") and i.team.Value ~= needed then
                    local args = {
                    	{
                    		muzzle_position = i.Character.Head.Position + Vector3.new(0.0001, 0.00001, 0.00001),
                    		keep_ammo = infinite,
                    		is_stitched = false,
                    		weapon_name = game.Players.LocalPlayer.secondary.Value,
                    		cframe = game.Players.LocalPlayer.Character.LowerTorso.CFrame,
                    		actions = {
                    			crouching = false,
                    			aimming = false,
                    			shifting = false,
                    			strength = 10,
                    			falling = false,
                    			running = false,
                    			jumping = false,
                    			flashed = false,
                    			god_mode = god
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
                    task.wait(cd)
                end
            end
        end
    end
end)
