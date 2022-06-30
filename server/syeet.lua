RegisterCommand('yeetscene', function(source, args)
	if IsPlayerAceAllowed(source, "Yeet.Player") then 
		if #args < 1 then 
			TriggerClientEvent('chatMessage', source, "^1ERROR: Invalid usage. ^2Usage: /yeet <id>");
			return;
		end
		if GetPlayerIdentifiers(args[1])[1] ~= nil then 
					TriggerClientEvent('YeetThatLittleRat', tonumber(args[1]), coords);
					TriggerClientEvent('chatMessage', source, GetPlayerName(args[1]) .. "^1 HAS BEEN YEETED LIKE A RAT");
				end
		else 
			TriggerClientEvent('chatMessage', source, "^1ERROR: Invalid player supplied...");
        end
end)