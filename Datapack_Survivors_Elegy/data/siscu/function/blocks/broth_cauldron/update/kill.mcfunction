
# summon ladle item
execute as @p if entity @s[gamemode=!creative] run loot spawn ~ ~ ~ loot siscu:items/tools/ladle

# splash?
execute store result score broth_level siscu.broth_data run data get entity @s data.broth_level
execute if score broth_level siscu.broth_data matches 1.. run particle splash ~ ~ ~ 0.3 0.2 0.3 0.1 20
execute if score broth_level siscu.broth_data matches 1.. run playsound entity.generic.splash block @a ~ ~ ~
execute if score broth_level siscu.broth_data matches 1.. positioned ~ ~-1 ~ if function siscu:blocks/broth_cauldron/update/extinguish_fire run particle large_smoke ~ ~ ~ 0.2 0.2 0.2 0 5

# playsound?
scoreboard players reset @s siscu.broth_temperature
kill @e[tag=siscu.broth_cauldron,distance=..0.2]
