
function siscu:blocks/broth_cauldron/update/check
# effects
execute if entity @s[tag=siscu.broth_potion,tag=!siscu.broth_invisibility] run function siscu:blocks/broth_cauldron/effects/potion_particles
execute if score @s siscu.broth_temperature matches 1..99 run function siscu:blocks/broth_cauldron/effects/broth_heating
execute if score @s siscu.broth_temperature matches 100.. run function siscu:blocks/broth_cauldron/effects/broth_ready_particles
execute if score @s siscu.broth_temperature matches 100.. run function siscu:blocks/broth_cauldron/effects/broth_ready_ambient

execute if score @s siscu.broth_temperature matches 100.. if entity @s[tag=!siscu.broth_ready] run function siscu:blocks/broth_cauldron/effects/broth_ready
execute unless score @s siscu.broth_temperature matches 100.. run tag @s remove siscu.broth_ready

# set temp to 0 if it's an empty cauldron
execute if block ~ ~ ~ cauldron run return run function siscu:blocks/broth_cauldron/temperature/empty_cauldron
# set powder snow to water if the cauldron is hot
execute if block ~ ~ ~ powder_snow_cauldron if score @s siscu.broth_temperature matches 50.. run setblock ~ ~ ~ water_cauldron[level=1]

# steady temperature decline when the pot is not heated
execute unless predicate siscu:locations/broth_conditions/valid if score @s siscu.broth_temperature matches 1.. run return run scoreboard players remove @s siscu.broth_temperature 1

# clamp lower temp to 0
execute if score @s siscu.broth_temperature matches ..0 run scoreboard players set @s siscu.broth_temperature 0
# return 0 if max temp reached
execute if score @s siscu.broth_temperature matches 150.. run return 1

# cauldron heating
## hot sources: soul fire, lava, lava cauldron, soul campfire, lit blast furnace
execute if predicate siscu:locations/broth_conditions/hot_source if score @s siscu.broth_temperature matches ..149 run scoreboard players add @s siscu.broth_temperature 4
## warm sources: magma blocks, fire, campfire, soul torch, lit furnace & smoker
execute if predicate siscu:locations/broth_conditions/warm_source if score @s siscu.broth_temperature matches ..119 run scoreboard players add @s siscu.broth_temperature 2
## dim sources: normal torch, candles, desert or nether weather
execute if predicate siscu:locations/broth_conditions/dim_source if score @s siscu.broth_temperature matches ..99 run scoreboard players add @s siscu.broth_temperature 1
## dumb sources: redstone torches
execute if predicate siscu:locations/broth_conditions/dumb_source if score @s siscu.broth_temperature matches ..50 run scoreboard players add @s siscu.broth_temperature 1

# clamp max temp to 150
execute if score @s siscu.broth_temperature matches 151.. run scoreboard players set @s siscu.broth_temperature 150