local MacLib = loadstring(game:HttpGet("https://github.com/biggaboy212/Maclib/releases/latest/download/maclib.txt"))()
local Window = MacLib:Window({
	Title = "execsense",
	Subtitle = "Steal a Brainrot: Early Beta V1",
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
}
local sections = {
	MainSection1 = tabs.AC:Section({ Side = "Left" }),
	MainSection2 = tabs.Oth:Section({ Side = "Left" }),
}

sections.MainSection1:Header({
	Name = "Main"
})
sections.MainSection1:Button({
	Name = "Teleport Bypass V1 (Reset to turn off)",
	Callback = function()
		local plr = game.Players.LocalPlayer
        local antitp = true
        local prevatp = nil
        local newpos = nil
        atp = true
		plr.Character.PrimaryPart:GetPropertyChangedSignal("Position"):Connect(function()
            atp = false
            print(prevatp)
            print(atp)
            plr.Character.PrimaryPart.CFrame = CFrame.new(prevatp)
            atp = true
            task.wait()
        end)
        
        while atp and task.wait() do
            prevatp = plr.Character.PrimaryPart.Position
        end
	end,
})
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
