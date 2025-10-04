# Tag the entity as checked

tag @s add siscu.blaze_checked

# Run the randomiser
execute if biome ~ ~ ~ siscu:metamorphic_caves run attribute @s minecraft:follow_range base set 20

execute if predicate siscu:utils/10_percent if biome ~ ~ ~ siscu:metamorphic_caves if block ~ ~-1 ~ #siscu:fire_spring_blocks unless entity @e[tag=fire_spring,distance=..16] if score fire_springs_enabled siscu.integer matches 1 run tag @s add fire_spring

execute unless entity @s[tag=fire_spring] run return 0

execute if block ~ ~-1 ~ #siscu:fire_spring_blocks run return run function siscu:blocks/fire_spring/summon_fire_spring
execute positioned ~ ~ ~ run particle angry_villager
tp @s ~ -64 ~
kill @s