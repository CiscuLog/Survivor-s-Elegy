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