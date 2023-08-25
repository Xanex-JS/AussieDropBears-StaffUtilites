--[[

    Author: AussieDropBear#1347
    Description: Staff Utilites
    Insperation: I got bored one day and decided to make my own utilites

]]

local ControlCommand = Config.ControlDensity["CCommand"] -- get the command from the config.lua file
local MaxInput = 3 
local AlreadyCustomDensity = false


if Config.ControlDensity["EnableControl"] then 



RegisterCommand(ControlCommand, function(source, args, RawCommand)
        local Newinput = tonumber(args[1])

        if Newinput == nil then 
            TriggerClientEvent('NumbersOnly', source)

        else
            
        if Newinput <= MaxInput then 

            if AlreadyCustomDensity then 
                TriggerClientEvent('AccessDenied', source)
            else
                AlreadyCustomDensity = true
                TriggerClientEvent('ChangeDensity', -1, Newinput)
            end

        elseif Newinput > MaxInput then
            TriggerClientEvent('SendMessage', source)    
        end
        end
            --TriggerClientEvent('ChangeDensity', NewInput)
end)



end -- Close out the if system enabled check