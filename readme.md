# AussieDropBear's Staff Utilites

Drag and Drop ``AussieDropBears-StaffUtil`` to your resources folder

Add ``ensure AussieDropBears-StaffUtil`` to your server.cfg or resources.cfg

# Permissions

Make sure to add these permissions to your server.cfg or permissions.cfg.

add_ace group.staff Yeet.Player allow -- Allows Staff to use the /yeetscene commands

add_ace group.staff chatclear allow -- Allows staff to use the /chatclear command

<!-- Default Ped Restrciton  -->

For your staff and or anyone else to have the default ped bypass restricition change the Discord role name in Config.lua named roleList to discord roles you want to have the bypass.

If you don't have a ``group.staff`` ace permission simply change it to the ace permission your staff are inheriting from.

<!-- Chat Filtering Permissions -->

If you want people to bypass the ChatFilter (idk why you would do this) add this permission to their ace group for an example

add_ace group.staff ChatFilterBypass allow

Config.lua also has a feature to enable/disable kicks

# Dependencies

Requires Badger_Discord_API see his documentation on setting that up

Kinda Requires DiscordAcePerms (if you wish to have automatic ace group setup) see his documentation
