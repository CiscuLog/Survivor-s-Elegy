
execute as @e[type=interaction,tag=siscu.broth_cauldron] at @s run function siscu:blocks/broth_cauldron/temperature/check
schedule function siscu:blocks/broth_cauldron/temperature/check_schedule 1s
