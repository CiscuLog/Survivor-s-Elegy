execute as @e[type=marker,tag=siscu.broth_cauldron] at @s run function siscu:blocks/broth_cauldron/temperature/regulate

execute if entity @e[type=marker,tag=siscu.broth_cauldron] run schedule function siscu:blocks/broth_cauldron/temperature/check 1s
