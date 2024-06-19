# Tag the entity as special

## caves ##
### lush ###
execute if predicate siscu:locations/check_lush_caves if predicate siscu:utils/50_percent run tag @s add lush_zombie
execute if predicate siscu:locations/check_underground if predicate siscu:utils/1_percent run tag @s add lush_zombie
execute as @s[tag=lush_zombie] run return run tag @s add unequipped
### dripstone ###
execute if predicate siscu:locations/check_dripstone_caves if predicate siscu:utils/50_percent run tag @s add dripstone_zombie
execute if predicate siscu:locations/check_underground if predicate siscu:utils/1_percent run tag @s add dripstone_zombie
execute as @s[tag=dripstone_zombie] run return run tag @s add unequipped
### amethyst ###
execute if predicate siscu:locations/check_underground if predicate siscu:utils/1_percent run tag @s add amethyst_zombie
execute if predicate siscu:locations/is_on_amethyst run tag @s add amethyst_zombie
execute as @s[tag=amethyst_zombie] run return run tag @s add unequipped

##surface##
### citizen ###
#execute if predicate siscu:locations/check_infected_city if predicate siscu:utils/25_percent run tag @s add citizen_zombie
execute if predicate siscu:locations/check_surface if predicate siscu:utils/1_percent run tag @s add citizen_zombie
execute as @s[tag=citizen_zombie] run return run tag @s add unequipped
### infected ###
execute if predicate siscu:locations/check_surface if predicate siscu:utils/1_percent if score phage_enabled siscu.integer matches 1 run tag @s add infected_zombie
#execute if predicate siscu:locations/check_infected_city if predicate siscu:utils/20_percent run tag @s add infected_zombie
execute as @s[tag=infected_zombie] run return run tag @s add unequipped
### stray ###
execute if predicate siscu:locations/check_stray_biomes if predicate siscu:locations/check_surface if predicate siscu:utils/80_percent if score phage_enabled siscu.integer matches 1 run tag @s add stray_zombie
execute as @s[tag=stray_zombie] run return run tag @s add unequipped
### bogged ###
execute if biome ~ ~ ~ #siscu:is_swamp if predicate siscu:locations/check_surface if predicate siscu:utils/40_percent run tag @s add bogged_zombie
execute as @s[tag=bogged_zombie] run return run tag @s add unequipped


#tag @s[tag=special] add unequipped
#execute at @s[tag=special] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.3 30