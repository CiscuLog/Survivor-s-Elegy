
scoreboard players set random_min siscu.volatile 0
scoreboard players set random_max siscu.volatile 3
execute store result score volatile siscu.volatile run loot spawn ~ ~ ~ loot siscu:gameplay/generic_randomiser

# Server Mode
execute if score server_status siscu.integer matches 0 run function siscu:technical/server_mode_alternate_randomiser
execute if score server_status siscu.integer matches 0 run scoreboard players operation volatile siscu.volatile = server_randN siscu.volatile

scoreboard players add volatile siscu.volatile 540020

execute store result storage siscu:volatile Randomiser int 1 run scoreboard players get volatile siscu.volatile

data modify entity @s Item.tag.CustomModelData set from storage siscu:volatile Randomiser

tag @s remove siscu.piglin_painting