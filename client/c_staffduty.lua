--[[

    Author: AussieDropBear#1347
    Description: Staff Utilites
    Insperation: I got bored one day and decided to make my own utilites

]]
local AdminMode = false
-- Making sure the command is only made if the system has been enabled in config.lua

RegisterNetEvent('StaffSystemEnabled', function(data)

    -- Command
    RegisterCommand('AdminEnable', function(source, args, RawCommand)
        TriggeredAdmin = not TriggeredAdmin

        if TriggeredAdmin then 
            AdminMode = true
            TriggerEvent('chatMessage', "^1 ADMIN MODE ENABLED")
        else
            AdminMode = false
            TriggerEvent('chatMessage', "^2 ADMIN MODE DISABLED")
        end

    end)
    -- end of command

end)








 






-- Functions

Citizen.CreateThread(function()
	while true do
		Wait(0);
		local Ped = GetPlayerPed(-1);
		if AdminMode1() then
			Draw2DText(0.090, 0.672, "~g~Admin Mode: ~r~ENABLED", 0.5, 1);
        end
    end
end)

function AdminMode1()
    if AdminMode then
    return true
    else
    return false
    end
end

local function RGBRainbow( frequency )
	local result = {}
	local curtime = GetGameTimer() / 1000

	result.r = math.floor( math.sin( curtime * frequency + 0 ) * 127 + 128 )
	result.g = math.floor( math.sin( curtime * frequency + 2 ) * 127 + 128 )
	result.b = math.floor( math.sin( curtime * frequency + 4 ) * 127 + 128 )

	return result
end

function Draw2DText(x, y, text, scale)
    -- Draws the text on screen and does fancy stuff
    SetTextFont(4)
    SetTextProportional(7)
    SetTextScale(scale, scale)
    local rainbow = RGBRainbow( 1 )
		SetTextColour( rainbow.r, rainbow.g, rainbow.b, 255 )
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextDropShadow()
    SetTextEdge(4, 0, 0, 0, 255)
    SetTextOutline()
    SetTextJustification(0)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end