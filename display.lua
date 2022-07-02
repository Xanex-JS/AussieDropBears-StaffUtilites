Citizen.CreateThread(function()
  if (GetCurrentResourceName() ~= "AussieDropBears-StaffUtilites") then
		StopResource(GetCurrentResourceName());
		print("[" .. GetCurrentResourceName() .. "] " .. "IMPORTANT: This resource must be named AussieDropBears-StaffUtilites for it to work properly with other scripts...");
    StopResource(GetCurrentResourceName());
	end
	print("[AussieDropBears-StaffUtilites] For support, make sure to join Aspire's official Discord server: discord.gg/RRPEHr3Z2q");
    if GetCurrentResourceName() == 'AussieDropBears-StaffUtilites' then
        print("    xx  xx       ")
        print("      xx         |                                   Thanks for using my Staff Utilitys                                   ")
        print("      xx         |-------------------------------------------------------------------------------------------------")
        print("    xx  xx       |                      Please support my other work on Github :D Created by Xanex                           ")
    end
end)
