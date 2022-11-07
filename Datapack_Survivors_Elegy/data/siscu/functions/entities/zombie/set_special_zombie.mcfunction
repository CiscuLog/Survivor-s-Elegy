# Tag the entity as special

## caves ##
### lush ###
execute if predicate siscu:locations/check_lush_caves if predicate siscu:utils/50_percent run tag @s[tag=!special] add lush_zombie
tag @s[tag=lush_zombie] add special
### dripstone ###
execute if predicate siscu:locations/check_dripstone_caves if predicate siscu:utils/10_percent run tag @s[tag=!special] add dripstone_zombie
execute if predicate siscu:locations/check_underground if predicate siscu:utils/1_percent run tag @s[tag=!special] add dripstone_zombie
tag @s[tag=dripstone_zombie] add special
### amethyst ###
execute if predicate siscu:locations/check_underground if predicate siscu:utils/1_percent run tag @s[tag=!special] add amethyst_zombie
execute if predicate siscu:locations/is_on_amethyst run tag @s[tag=!special] add amethyst_zombie
tag @s[tag=amethyst_zombie] add special

##surface##
### infected ###
execute if predicate siscu:locations/check_surface if predicate siscu:utils/1_percent run tag @s[tag=!special] add infected_zombie
tag @s[tag=infected_zombie] add special
#execute if predicate siscu:locations/check_sunflower_plains if predicate siscu:locations/check_surface if predicate siscu:utils/25_percent run tag @s[tag=!special] add sunflower_zombie
tag @s[tag=sunflower_zombie] add special

tag @s[tag=special] add unequipped
#execute at @s[tag=special] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.3 30