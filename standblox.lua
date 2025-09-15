local MacLib = loadstring(game:HttpGet("https://github.com/biggaboy212/Maclib/releases/latest/download/maclib.txt"))()
local Window = MacLib:Window({
	Title = "Bloxsense",
	Subtitle = "by isoform32",
	Size = UDim2.fromOffset(868, 650),
	DragStyle = 1,
	DisabledWindowControls = {},
	ShowUserInfo = true,
	Keybind = Enum.KeyCode.RightControl,
	AcrylicBlur = true,
})
local tabGroups = {
	TabGroup1 = Window:TabGroup()
}
local tabs = {
	Main = tabGroups.TabGroup1:Tab({ Name = "Ragebot"}),
	Movement = tabGroups.TabGroup1:Tab({ Name = "Movement"}),
}
local sections = {
	MainSection1 = tabs.Main:Section({ Side = "Left" }),
	MainSection2 = tabs.Movement:Section({ Side = "Left" }),
}
local god = false
sections.MainSection1:Toggle({
	Name = "In God Mode",
	Default = false,
	Callback = function(value)
	    god = true
	end,
}, "Toggle")
local plr = game.Players.LocalPlayer
local input = game:GetService("UserInputService")
sections.MainSection2:Toggle({
	Name = "Auto Bunny Hop [SOON]",
	Default = false,
	Callback = function(value)
	    print("Soon")
	end,
}, "Toggle")
local streng = 1
sections.MainSection1:Slider({
	Name = "Bullet Strength",
	Default = 1,
	Minimum = 1,
	Maximum = 100,
	DisplayMethod = "strength",
	Precision = 0,
	Callback = function(Value)
		streng = Value
	end
}, "Slider")
sections.MainSection1:Toggle({
	Name = "Auto Fire",
	Default = false,
	Callback = function(value)
		getgenv().afire = value
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
	end,
}, "Toggle")
