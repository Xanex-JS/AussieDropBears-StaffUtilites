RegisterNetEvent('YeetThatLittleRat')
AddEventHandler('YeetThatLittleRat', function()
	local ped = GetPlayerPed(-1);
    SetEntityCoords(ped, 24.21, 7644.87, 18.99, 1, 0, 0, 1)
    TriggerEvent('chatMessage', "^1STAFF HAS YEETED YOU LMAO");
end)

function Draw2DText(x, y, text, scale, center)
    SetTextFont(4)
    SetTextProportional(7)
    SetTextScale(scale, scale)
    SetTextColour(255, 255, 255, 255)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextDropShadow()
    SetTextEdge(4, 0, 0, 0, 255)
    SetTextOutline()
    if center then 
    	SetTextJustification(0)
    end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end