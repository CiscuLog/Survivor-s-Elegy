# Tag the entity as special

## caves ##
### lush ###
execute if biome ~ ~ ~ lush_caves if predicate siscu:utils/50_percent run tag @s add siscu.lush_zombie
execute if predicate siscu:locations/check_underground if predicate siscu:utils/1_percent run tag @s add siscu.lush_zombie
execute as @s[tag=siscu.lush_zombie] run return run tag @s add siscu.unequipped
### dripstone ###
execute if biome ~ ~ ~ dripstone_caves if predicate siscu:utils/50_percent run tag @s add siscu.dripstone_zombie
execute if predicate siscu:locations/check_underground if predicate siscu:utils/1_percent run tag @s add siscu.dripstone_zombie
execute as @s[tag=siscu.dripstone_zombie] run return run tag @s add siscu.unequipped
### amethyst ###
execute if predicate siscu:locations/check_underground if predicate siscu:utils/1_percent run tag @s add siscu.amethyst_zombie
execute if block ~ ~-1 ~ #siscu:amethyst_blocks run tag @s add siscu.amethyst_zombie
execute as @s[tag=siscu.amethyst_zombie] run return run tag @s add siscu.unequipped

##surface##
### citizen ###
execute if predicate siscu:locations/check_infected_city if predicate siscu:random/elegant_zombie_chance run tag @s add siscu.citizen_zombie
execute if predicate siscu:locations/check_surface if predicate siscu:utils/1_percent run tag @s add siscu.citizen_zombie
# Don't return, we might want to infect it too!
### infected ###
execute if predicate siscu:locations/check_surface if predicate siscu:utils/1_percent if score phage_enabled siscu.integer matches 1 run tag @s add siscu.infected_zombie
execute if predicate siscu:locations/check_infected_city if predicate siscu:utils/20_percent run tag @s add siscu.infected_zombie
execute as @s[tag=siscu.infected_zombie] run return run tag @s add siscu.unequipped
execute as @s[tag=siscu.citizen_zombie] run return run tag @s add siscu.unequipped
### stray ###
execute if biome ~ ~ ~ #siscu:stray_biomes if predicate siscu:locations/check_surface if predicate siscu:utils/80_percent unless predicate siscu:locations/check_infected_city run tag @s add siscu.stray_zombie
execute as @s[tag=siscu.stray_zombie] run return run tag @s add siscu.unequipped
### bogged ###
execute if biome ~ ~ ~ #siscu:is_swamp if predicate siscu:locations/check_surface if predicate siscu:utils/40_percent run tag @s add siscu.bogged_zombie
execute as @s[tag=siscu.bogged_zombie] run return run tag @s add siscu.unequipped


#tag @s[tag=special] add siscu.unequipped
#execute at @s[tag=special] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.3 30