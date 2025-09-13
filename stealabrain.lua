local MacLib = loadstring(game:HttpGet("https://github.com/biggaboy212/Maclib/releases/latest/download/maclib.txt"))()
local Window = MacLib:Window({
	Title = "execsense",
	Subtitle = "Steal a Brainrot: Early Beta V1.1",
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
	AC = tabGroups.TabGroup1:Tab({ Name = "Anti-Cheat Bypass"}),
	Oth = tabGroups.TabGroup1:Tab({ Name = "Other"}),
	bas = tabGroups.TabGroup1:Tab({ Name = "Base"}),
}
local sections = {
	MainSection1 = tabs.AC:Section({ Side = "Left" }),
	MainSection2 = tabs.Oth:Section({ Side = "Left" }),
	MainSection3 = tabs.bas:Section({ Side = "Left" }),
}

sections.MainSection1:Header({
	Name = "Main"
})
sections.MainSection3:Header({
	Name = "Money"
})
local plr = game.Players.LocalPlayer
local antitp = true
local prevatp = nil
local newpos = nil
sections.MainSection1:Toggle({
	Name = "Teleport Bypass V1 [DETECTED]",
	Default = false,
	Callback = function(value)
        getgenv().bypas = value
        atp = true
        if getgenv().bypas then
    		plr.Character.PrimaryPart:GetPropertyChangedSignal("Position"):Connect(function()
                atp = false
                print(prevatp)
                print(atp)
                plr.Character.PrimaryPart.CFrame = CFrame.new(prevatp)
                atp = true
                task.wait()
    		end)
        end
        
        while atp and task.wait() and getgenv().bypas do
            prevatp = plr.Character.PrimaryPart.Position
        end
	end,
}, "Toggle")
sections.MainSection2:Button({
	Name = "Remove Laser Collision",
	Callback = function()
		for _, i in pairs(workspace:GetDescendants()) do
            if i.Name == "DeliveryHitbox" then
                i.CanCollide = false
            elseif i.Name == "LaserHitbox" then
                i:Destroy()
            end
        end
	end,
})
sections.MainSection1:Toggle({
	Name = "Magic Body [UNDETECTED]",
	Default = false,
	Callback = function(value)
	    getgenv().magic = value
        if getgenv().magic then    
            MagicPrev = plr.Character.PrimaryPart.CFrame
			plr.Character.PrimaryPart.CFrame = CFrame.new(0, 1000, 0)
            task.wait()
            plr.Character.PrimaryPart.Anchored = true
            task.wait()
            plr.Character.PrimaryPart.CFrame = MagicPrev
            local mouse = game.Players.LocalPlayer:GetMouse()
            local input = game:GetService("UserInputService")
            mouse.Button1Down:Connect(function()
                if getgenv().magic then    
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.Position)
                    plr.Character.PrimaryPart.Anchored = true
                end
            end)
            input.InputBegan:Connect(function(key)
                if key.KeyCode == Enum.KeyCode.E and getgenv().magic then
                    plr.Character.PrimaryPart.Anchored = false
                end
            end)
        else
            plr.Character.PrimaryPart.Anchored = false
        end
	end,
}, "Toggle")
sections.MainSection3:Button({
	Name = "Instant Collect $ (requires to be close to Brainrot)",
	Callback = function()
		for i = 1, 50 do
            task.wait(0.15)
            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Net"):WaitForChild("RE/PlotService/ClaimCoins"):FireServer(i)
        end
	end,
})
