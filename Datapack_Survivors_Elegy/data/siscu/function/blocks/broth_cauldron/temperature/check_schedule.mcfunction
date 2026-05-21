
execute as @e[type=interaction,tag=siscu.broth_cauldron] at @s if function siscu:blocks/broth_cauldron/temperature/check run schedule function siscu:blocks/broth_cauldron/temperature/check_schedule 1s
