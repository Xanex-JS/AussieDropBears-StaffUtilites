RegisterCommand('chatclear', function(source, args)
	if IsPlayerAceAllowed(source, "chatclear") then
		TriggerClientEvent('chat:clear', -1)
    	TriggerClientEvent("chatMessage", -1, "^1".. GetPlayerName(source) .. " Has Cleared Chat")
	else
		TriggerClientEvent('chatMessage', source, '^1ERROR: You don\'t have the required permissions!')
	end
end, false)