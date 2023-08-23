--[[

    Author: AussieDropBear#1347
    Description: Staff Utilites
    Insperation: I got bored one day and decided to make my own utilites

]]

local isAdminModeEnabled = false

-- Event to enable admin mode on the client
RegisterNetEvent("enableAdminMode")
AddEventHandler("enableAdminMode", function()
    isAdminModeEnabled = true
end)

-- Event to disable admin mode on the client
RegisterNetEvent("disableAdminMode")
AddEventHandler("disableAdminMode", function()
    isAdminModeEnabled = false
end)

-- Event to update admin mode status on the client
RegisterNetEvent("updateAdminModeStatus")
AddEventHandler("updateAdminModeStatus", function(status)
    isAdminModeEnabled = status
end)

-- Main loop to display text above player's head
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if isAdminModeEnabled then
            local playerPed = PlayerPedId()
            local playerCoords = GetEntityCoords(playerPed)
            DrawText3D(playerCoords.x, playerCoords.y, playerCoords.z + 1.0, "~o~I HAVE ADMINISTRATION MODE ACTIVE")
        end
    end
end)

-- Give Admin Shit

RegisterNetEvent('GiveAdminStuff')
AddEventHandler('GiveAdminStuff', function()

if isAdminModeEnabled then
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
    end -- admin mode check end
end

end)
-- Function to draw 3D text
function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 370
    DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 41, 11, 41, 90)
end

-- Functions for display text on the screen

function adminEnabled()

    if isAdminModeEnabled then 
        return true 
    else 
        return false
    end
end

Citizen.CreateThread(function()
	while true do
		Wait(0);
		local Ped = GetPlayerPed(-1);
		if adminEnabled() then
			Draw2DText(0.090, 0.672, "~g~Admin Mode: ~r~ENABLED", 0.5, 1);
        end
    end
end)

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
