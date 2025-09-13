local MacLib = loadstring(game:HttpGet("https://github.com/biggaboy212/Maclib/releases/latest/download/maclib.txt"))()
local Window = MacLib:Window({
	Title = "execsense loader",
	Subtitle = "The Newest Loader",
	Size = UDim2.fromOffset(650, 520),
	DragStyle = 1,
	DisabledWindowControls = {},
	ShowUserInfo = true,
	Keybind = Enum.KeyCode.RightControl,
	AcrylicBlur = true,
})
local currentkey = "Abcdjfhhkghdskfkfkdkfkdfkghfhghfhhghhhfhhfhs"
local invitecode = nil
local tabGroups = {
	TabGroup1 = Window:TabGroup()
}
local tabs = {
	Key = tabGroups.TabGroup1:Tab({ Name = "Key System"}),
}
local sections = {
	MainSection1 = tabs.Key:Section({ Side = "Left" }),
}
sections.MainSection1:Input({
	Name = "Input the Key",
	Placeholder = "New Key",
	AcceptedCharacters = "All",
	Callback = function(input)
		invitecode = input
	end,
}, "Input")
sections.MainSection1:Button({
	Name = "Load",
	Callback = function()
    	if invitecode == "useexecfree" then
            if game.placeId == 4924922222 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xxxrrxsds-art/losehubs/refs/heads/main/brbrhaven.lua"))()
            elseif game.placeId == 1537690962 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xxxrrxsds-art/losehubs/refs/heads/main/bssfree.lua"))()
    		elseif game.placeId == 6403373529 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xxxrrxsds-art/losehubs/refs/heads/main/slapfree.lua"))()
            elseif game.placeId == 11520107397 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xxxrrxsds-art/losehubs/refs/heads/main/ksfree.lua"))()
            elseif game.placeId == 124596094333302 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xxxrrxsds-art/losehubs/refs/heads/main/slapfree.lua"))()
            else
                game.Players.LocalPlayer:Kick("Not Supported Game.")
            end
        elseif invitecode == currentkey then
            if game.placeId == 4924922222 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xxxrrxsds-art/losehubs/refs/heads/main/brbrhaven.lua"))()
            elseif game.placeId == 1537690962 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xxxrrxsds-art/losehubs/refs/heads/main/BSSBeta.lua"))()
            elseif game.placeId == 6403373529 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xxxrrxsds-art/losehubs/refs/heads/main/slapea.lua"))()
            elseif game.placeId == 11520107397 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xxxrrxsds-art/losehubs/refs/heads/main/ksonly.lua"))()
            elseif game.placeId == 124596094333302 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xxxrrxsds-art/losehubs/refs/heads/main/slapea.lua"))()
    		elseif game.placeId == 96342491571673 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xxxrrxsds-art/losehubs/refs/heads/main/stealabrain.lua"))()
    		elseif game.placeId == 109983668079237 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xxxrrxsds-art/losehubs/refs/heads/main/stealabrain.lua"))()
            else
                game.Players.LocalPlayer:Kick("Not Supported Game.")    
            end
        end
	end,
})
sections.MainSection1:Label({
	Text = "You can get free key in our Discord - discord.gg/XAqn48p6Jm"
})
