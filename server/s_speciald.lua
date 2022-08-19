local forbiddenNames = { -- forbidden words or chars (lowercase letters)
	"%^1",
	"%^2",
	"%^3",
	"%^4",
	"%^5",
	"%^6",
	"%^7",
	"%^8",
	"%^9",
	"%^%*",
	"%^_",
	"%^=",
	"%^%~",
    "owner",
	"admin"
}

AddEventHandler("playerConnecting", function(playerName, setKickReason)
	for name in pairs(forbiddenNames) do
		if(string.gsub(string.gsub(string.gsub(string.gsub(playerName:lower(), "-", ""), ",", ""), "%.", ""), " ", ""):find(forbiddenNames[name])) then
			print(playerName .. " has been kicked!")
			setKickReason("Your name is not allowed!")
			CancelEvent()
			break
		end
	end
end)