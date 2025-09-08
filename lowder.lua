local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local currentkey = "EXC-ORD-98S-YIR-37B-9GG-83S-9BS"
local Window = Library.CreateLib("Execsense Loader", "DarkTheme")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Key System")
Section:NewTextBox("Key", "Enter the key", function(txt)
	getgenv().invitecode = txt
end)

local status = Section:NewLabel("Waiting...")
Section:NewButton("Load", "Activate", function()
    if getgenv().invitecode == "useexecfree" then
        status:UpdateLabel("Loading...")
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
            game.Players.LocalPlayer:Kick("Invalid Game.")
        end
    elseif getgenv().invitecode == currentkey then
        status:UpdateLabel("Loading...")
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
        end
         
    else
        status:UpdateLabel("Invalid!")
    end
end)
local freekey = Section:NewLabel("You can get a free key in our Discord")
local freekey1 = Section:NewLabel("discord.gg/XAqn48p6Jm")
