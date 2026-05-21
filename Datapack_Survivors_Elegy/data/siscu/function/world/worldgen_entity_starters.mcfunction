
## loot table insertion markers
execute if entity @s[tag=siscu.loot_table_insertion] at @s run function siscu:blocks/loot_blocks/technical/schedule2 with entity @s data

# dev grounds
execute at @s if entity @e[type=marker,tag=siscu.building_grounds,distance=..1000] run return 0

## identifiers
execute if entity @s[tag=siscu.painting] run return run function siscu:world/paintings/summon
execute if entity @s[tag=siscu.broth_cauldron] run return run function siscu:world/infected_city/broth_cauldron
execute if entity @s[tag=siscu.mayor_lectern] at @s positioned ~ ~-1 ~ run return run function siscu:world/infected_city/mayor_lectern
# museum
execute if entity @s[tag=siscu.museum_shield] at @s positioned ^1 ^-1 ^ run return run function siscu:world/infected_city/museum_items/museum_shield
execute if entity @s[tag=siscu.museum_tablet] at @s positioned ^1 ^-1 ^ run return run function siscu:world/infected_city/museum_items/museum_tablet
execute if entity @s[tag=siscu.museum_pearl] at @s positioned ^1 ^-1 ^ run return run function siscu:world/infected_city/museum_items/museum_pearl
# crevice
execute if entity @s[tag=siscu.crevice_food] at @s positioned ^1 ^-1 ^ run return run function siscu:world/piglin/food_frame
execute if entity @s[tag=siscu.piglin_painting] at @s run function siscu:world/piglin/painting
execute if entity @s[tag=siscu.piglin_banner] at @s run function siscu:world/piglin/banner
# corpses
execute if entity @s[tag=siscu.player_corpse] at @s align xyz positioned ~0.5 ~0 ~0.5 run function siscu:entities/player_corpse/summon/main
