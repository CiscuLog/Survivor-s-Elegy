
scoreboard players set random_min siscu.volatile 1
scoreboard players set random_max siscu.volatile 4
execute store result score volatile siscu.volatile run loot spawn ~ ~ ~ loot siscu:gameplay/generic_randomiser

execute if score volatile siscu.volatile matches 1 run data merge entity @s {Item:{tag:{CustomModelData:540020}}}
execute if score volatile siscu.volatile matches 2 run data merge entity @s {Item:{tag:{CustomModelData:540021}}}
execute if score volatile siscu.volatile matches 3 run data merge entity @s {Item:{tag:{CustomModelData:540022}}}
execute if score volatile siscu.volatile matches 4 run data merge entity @s {Item:{tag:{CustomModelData:540023}}}

tag @s remove siscu.piglin_painting