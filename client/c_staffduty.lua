--[[

    Author: AussieDropBear#1347
    Description: Staff Utilites
    Insperation: I got bored one day and decided to make my own utilites

]]
local AdminMode = false
local isAllowedBypass = false
-- Making sure the command is only made if the system has been enabled in config.lua

RegisterNetEvent('StaffSystemEnabled', function(data)
    local CommandList = Config.StaffDuty["Command"]

    -- Command
    RegisterCommand(CommandList, function(source, args, RawCommand)
        TriggeredAdmin = not TriggeredAdmin

        if isAllowedBypass then 
        if TriggeredAdmin then 
            AdminMode = true
            AdminModeTurnedOn(source)
            TriggerEvent('chatMessage', "^1 ADMIN MODE ENABLED")
        else
            AdminMode = false
            AdminModeTurnedOn(source)
            TriggerEvent('chatMessage', "^2 ADMIN MODE DISABLED")
        end
    else
            TriggerEvent('chatMessage', "[ADMINISTRATION]^1 you're not staff")
    end -- staff authority end
    end)
    -- end of command

end)

-- Main function for the script, enabling all the automatic features for staff.

function AdminModeTurnedOn(source)
    AlreadyToggled = not AlreadyToggled
	local playerPed = GetPlayerPed(-1)

    if AlreadyToggled then
        SetEntityInvincible(GetPlayerPed(-1), true)
        SetPlayerInvincible(PlayerId(), true)
        SetPedCanRagdoll(GetPlayerPed(-1), false)
        ClearPedBloodDamage(GetPlayerPed(-1))
        ResetPedVisibleDamage(GetPlayerPed(-1))
        ClearPedLastWeaponDamage(GetPlayerPed(-1))
        SetEntityProofs(GetPlayerPed(-1), true, true, true, true, true, true, true, true)
        SetEntityOnlyDamagedByPlayer(GetPlayerPed(-1), false)
        SetEntityCanBeDamaged(GetPlayerPed(-1), false)



        print("Added On duty Benefits")
    else
        SetEntityInvincible(GetPlayerPed(-1), false)
        SetPlayerInvincible(PlayerId(), false)
        SetPedCanRagdoll(GetPlayerPed(-1), false)
        ClearPedBloodDamage(GetPlayerPed(-1))
        ResetPedVisibleDamage(GetPlayerPed(-1))
        ClearPedLastWeaponDamage(GetPlayerPed(-1))
        SetEntityProofs(GetPlayerPed(-1), false, false, false, false, false, false, false, false)
        SetEntityOnlyDamagedByPlayer(GetPlayerPed(-1), false)
        SetEntityCanBeDamaged(GetPlayerPed(-1), false)



        print('Removed Duty Benefits')
    end -- admin mode check end

end -- function end

-- Functions for display text on the screen

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
