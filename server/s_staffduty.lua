--[[

    Author: AussieDropBear#1347
    Description: Staff Utilites
    Insperation: I got bored one day and decided to make my own utilites

]]

local StaffDutyCheck = true

Citizen.Wait(2000)

-- Making sure the command is only made if the system has been enabled in config.lua

if Config.StaffDuty["EnableSystem"] then 
    print("^2 ADMIN SYSTEM ON")

    

    TriggerClientEvent('StaffSystemEnabled', -1) -- Lets create the command if the system is enabled
    else
    print('^1 ADMIN DUTY SYSTEM IS TURNED OFF')



end
