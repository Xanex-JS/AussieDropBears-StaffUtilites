--[[

    Author: AussieDropBear#1347
    Description: Staff Utilites
    Insperation: I got bored one day and decided to make my own utilites

]]
local DefaultDesnity = true
local CustomDensity = false
-- i am the same no matter what

Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
    local playerPed = GetPlayerPed(-1)
    local playerLocalisation = GetEntityCoords(playerPed)
    ClearAreaOfCops(playerLocalisation.x, playerLocalisation.y, playerLocalisation.z, 400.0)
    end
    end)

---


local DefaultDesnity = false
local CustomDensity = false

RegisterNetEvent('ChangeDensity')
AddEventHandler('ChangeDensity', function(NewInput)
    local Default = Config.ControlDensity["DefaultDensityNumber"]

    if NewInput == Default then 
        DefaultDesnity = true
        CustomDensity = false
    elseif NewInput ~= Default then 
        CustomDensity = true
        DefaultDesnity = false
    end

    Wait(0) --  Give other tasks an opportunity to execute before continuing the script.

    if DefaultDesnity then 

        Citizen.CreateThread(function()
            while DefaultDesnity do --- Other task. Ensures that the loop only runs while the DefaultDesnity variable is true.
                SetVehicleDensityMultiplierThisFrame(Default)
                SetPedDensityMultiplierThisFrame(1.0)
                SetRandomVehicleDensityMultiplierThisFrame(Default)
                SetParkedVehicleDensityMultiplierThisFrame(Default)
                SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
                print("Default Dens", Default)
                Citizen.Wait(0)
            end
        end)

        TriggerEvent('chatMessage', "^1[Administration] ^2Staff has changed AI Density, to default: " .. Default, -1)

    elseif CustomDensity then 

        Citizen.CreateThread(function()
            while CustomDensity do --- Other task. Ensures that the loop only runs while the CustomDensity variable is true.
                SetVehicleDensityMultiplierThisFrame(NewInput)
                SetPedDensityMultiplierThisFrame(1.0)
                SetRandomVehicleDensityMultiplierThisFrame(NewInput)
                SetParkedVehicleDensityMultiplierThisFrame(NewInput)
                SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
                print("Custom Density", NewInput)     -- IMPLEMENT SO IF THE DESNITY CHANGES MULTIPLE TIMES BEFORE A RESTART IT REMOVES THE OLD DESN AND DOESNT MASS CREATE THREADS
                Citizen.Wait(0)
            end
        end)

        TriggerEvent('chatMessage', "^1[Administration] ^2Staff has changed AI Density, New Value is: " .. NewInput, -1)

    end
    

end) -- close client event```


RegisterNetEvent('AccessDenied')
AddEventHandler('AccessDenied', function()

    TriggerEvent('chat:addMessage', {
        color = { 255, 0, 0},
        multiline = true,
        args = {"ADMINISTRATION", "A Custom Density has already been enabled, please wait till server restart or contact senior leadership"}
      })
      

end)

RegisterNetEvent('SendMessage')
AddEventHandler('SendMessage', function()

    TriggerEvent('chat:addMessage', {
        color = { 255, 0, 0},
        multiline = true,
        args = {"ADMINISTRATION", "You need to enter a number below 3.0"}
      })
      

end)

RegisterNetEvent('NumbersOnly')
AddEventHandler('NumbersOnly', function()

    TriggerEvent('chat:addMessage', {
        color = { 255, 0, 0},
        multiline = true,
        args = {"ADMINISTRATION", "You can only enter numbers not words."}
      })

end)