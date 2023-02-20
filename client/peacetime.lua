-- this file detecs if people are shooting during PT Active

Citizen.CreateThread(function()
    while true do
        Wait(0)

        local playerPed = GetPlayerPed(-1)
        local isShooting = IsPedShooting(playerPed)

        local PTActive = exports.fax_aop:GetPT()

        if isShooting and PTActive then 

            TriggerServerEvent('KicksUserShootingDuringPT')

        end

    end
end)
