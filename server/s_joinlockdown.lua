local restrictJoin = false

function IsAdmin(source)
    local src = source

    if IsPlayerAceAllowed(src, "lockdowncom") then 
        return true 
    else
        return false
    end
end

RegisterCommand("restrictjoin", function(source, args, rawCommand)
    if IsAdmin(source) then
        restrictJoin = not restrictJoin
        local message = restrictJoin and "Join restriction is now ENABLED." or "Join restriction is now DISABLED."
        TriggerClientEvent("chatMessage", -1, "[Server]", {255, 0, 0}, message)
    else
        TriggerClientEvent("chatMessage", source, "[Server]", {255, 0, 0}, "You don't have permission to use this command.")
    end
end, false)

AddEventHandler("playerConnecting", function(name, setKickReason, deferrals)
    local source = source
    if restrictJoin then
        if not IsAdmin(source) then
            deferrals.done("Joining the server is currently restricted.")
        else
            deferrals.done()
        end
    else
        deferrals.done()
    end
end)
