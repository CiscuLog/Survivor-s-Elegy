
execute as @e[type=interaction,tag=siscu.broth_cauldron] at @s if function siscu:blocks/broth_cauldron/update/check_cauldron_status run schedule function siscu:blocks/broth_cauldron/update/check_cauldron_schedule 4t
