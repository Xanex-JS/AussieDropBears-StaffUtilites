--[[

    Author: AussieDropBear#1347
    Description: Staff Utilites
    Insperation: I got bored one day and decided to make my own utilites

]]

local StaffDutyCheck = true

RegisterCommand(Config.StaffDuty["Command"], function(source, args, rawCommand)
    adminModeEnabled = not adminModeEnabled
    if IsPlayerAceAllowed(source, "staffduty") then
    if adminModeEnabled then
        TriggerClientEvent("enableAdminMode", -1)  -- Broadcast to all players
        TriggerClientEvent('GiveAdminStuff', source)
    else
        TriggerClientEvent('GiveAdminStuff', source)
        TriggerClientEvent("disableAdminMode", -1)
    end
else
    TriggerEvent('chatMessage', "fuck off")
end
end, false)


-- Making sure the command is only made if the system has been enabled in config.lua

if Config.StaffDuty["EnableSystem"] then 
    print("^2 ADMIN SYSTEM ON")
    else
    print('^1 ADMIN DUTY SYSTEM IS TURNED OFF')
end