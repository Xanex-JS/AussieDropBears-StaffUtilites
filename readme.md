# AussieDropBear's Staff Utilites

Drag and Drop ``AussieDropBears-StaffUtilites`` to your resources folder

Add ``ensure AussieDropBears-StaffUtilites`` to your server.cfg or resources.cfg

# CHANGING THE NAME WILL CAUSE SOME ISSUES WITH PERMISSION CHECKING, FEEL FREE TO FIX THIS IF YOU KNOW HOW TO, I'M TOO LAZY TO MAKE IT CHECK THE FOLDER NAME AUTOMATICLY.

# Permissions

Make sure to add these permissions to your server.cfg or permissions.cfg.

add_ace group.staff Yeet.Player allow -- Allows Staff to use the /yeetscene commands

add_ace group.staff chatclear allow -- Allows staff to use the /chatclear command

<!-- Change AI Density -->

Default Command: `controldens`, can be changed in config.lua
Default density is 0.5 can be changed in config

add_ace group.staff density allow -- Allows staff to use the /controldens command

<!-- Staff Duty -->

Change the command in config.lua
Default command is /adminonduty to turn it on.
Enables god mode alot of other things
display text above head and on screen alerting this is enabled. 

add_ace group.staff staffduty allow -- Allows staff to use the /adminonduty command

<!-- Server Lockdown Join Restriction -->

This is a lockdown feature available to staff to prevent joining I.E mass Minges joining, script kiddies etc.
Default command is /restrictjoin 
add_ace group.staff lockdowncom allow -- Allows staff to use the /restrictjoin command

<!-- Default Ped Restrciton  -->

For your staff and or anyone else to have the default ped bypass restricition change the Discord role name in Config.lua named roleList to discord roles you want to have the bypass.

If you don't have a ``group.staff`` ace permission simply change it to the ace permission your staff are inheriting from.

<!-- Peacetime Detection Bypass -->

This detects if anyone is bypassing peacetime :3

<!-- Chat Filtering Permissions -->

If you want people to bypass the ChatFilter (idk why you would do this) add this permission to their ace group for an example

add_ace group.staff ChatFilterBypass allow

Config.lua also has a feature to enable/disable kicks

# Dependencies

Requires Badger_Discord_API see his documentation on setting that up

Kinda Requires DiscordAcePerms (if you wish to have automatic ace group setup) see his documentation

# Important 

The AntiVDM is un-tested, please let me know if it doesnt work.