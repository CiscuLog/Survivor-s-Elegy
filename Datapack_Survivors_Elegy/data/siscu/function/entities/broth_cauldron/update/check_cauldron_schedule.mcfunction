
execute as @e[type=marker,tag=siscu.broth_cauldron] at @s run function siscu:entities/broth_cauldron/update/check_cauldron_status
execute if entity @e[type=marker,tag=siscu.broth_cauldron] run schedule function siscu:entities/broth_cauldron/update/check_cauldron_schedule 4t
