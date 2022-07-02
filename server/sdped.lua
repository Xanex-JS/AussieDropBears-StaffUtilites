roleList = {
    "ARP │ Staff Team", -- Ped Default Bypass DiscordRole
}
-- Permission Checking....
RegisterServerEvent("AussieDropBears-StaffUtilites.getIsAllowed")
AddEventHandler("AussieDropBears-StaffUtilites.getIsAllowed", function()
    local src = source
    for k, v in ipairs(GetPlayerIdentifiers(src)) do
        if string.sub(v, 1, string.len("discord:")) == "discord:" then
            identifierDiscord = v
        end
    end
    if identifierDiscord then
		local roleIDs = exports.Badger_Discord_API:GetDiscordRoles(src)
		if not (roleIDs == false) then
			for i = 1, #roleIDs do
				for j = 1, #roleList do
					if exports.Badger_Discord_API:CheckEqual(roleList[j], roleIDs[i]) then
              TriggerClientEvent("AussieDropBears-StaffUtilites.returnIsAllowed", src, true)
					end
				end
			end
		else
			--
            TriggerClientEvent("AussieDropBears-StaffUtilites.returnIsAllowed", src, false)
		end
    elseif identifierDiscord == nil then
		print("identifierDiscord == nil")
    end
	-- Add a event if no discord Identifier is found if you really want...
    -- Such as kicking the user IDK why you would do that though...
end)
