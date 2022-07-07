--[[

    Author: AussieDropBear#1347
    Description: Staff Utilites
    Insperation: I got bored one day and decided to make my own utilites

]]

AddEventHandler('chatMessage', function(source, name, message)
    CancelEvent()
    local src = source
    local function_check, msg = chatblacklist(message)
    
    if function_check and not IsPlayerAceAllowed(src, 'ChatFilterBypass') then
      TriggerClientEvent('chat:clear', -1)
      sendtodiscord(src, msg)
      Citizen.Wait(2000)
      TriggerClientEvent('chat:addMessage', -1, string.format(Config.retrun_message, msg))
      TriggerClientEvent('chat:addMessage', -1, '[AussieDropBear StaffUtilites] ' .. GetPlayerName(src) .. '~r~ Tried to say a blacklisted word')
      if Config.KickPlayer then 
        DropPlayer(src, '[AussieDropBear_StaffUtilites] You have been kicked for using a blacklisted word')
      end

    end
end)


function chatblacklist(str)
    local blacklist = false;
    local word = nil
    for badword in ipairs(Config.blacklistedwords) do
        if string.match(string.lower(str), Config.blacklistedwords[badword]) then
          blacklist = true
          word = Config.blacklistedwords[badword]
        else 
            if(blacklist == true) then
              blacklist = true
            else 
              blakclist = false;
            end
        end
    end
    return blacklist, word
end

function sendtodiscord(user, message)
  local embed = {
    {
      ["color"] = Config.color,
      ["title"] = "**[#".. user .. "] " .. GetPlayerName(user) .."**",
      ["description"] ='Blacklisted Word: ' .. message,
      ["footer"] = {
        ["text"] = "Made With Love by AussieDropBear#1347",
      },
    }
  }

  PerformHttpRequest(Config.webhook, function(err, text, headers) end, 'POST', json.encode({username = GetPlayerName(user), embeds = embed, avatar_url = Config.avatar_url}), { ['Content-Type'] = 'application/json' })
end