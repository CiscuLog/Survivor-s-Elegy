# Tag the entity as checked

tag @s add blaze_checked

# Run the randomiser
execute if predicate siscu:locations/check_metamorphic_caves run attribute @s minecraft:generic.follow_range base set 20

execute if predicate siscu:utils/10_percent if predicate siscu:locations/check_metamorphic_caves if block ~ ~-1 ~ #siscu:fire_spring_blocks unless entity @e[tag=fire_spring,distance=..16] run tag @s add fire_spring

execute if entity @s[tag=fire_spring] run function siscu:entities/blaze/fire_spring/summon_fire_spring