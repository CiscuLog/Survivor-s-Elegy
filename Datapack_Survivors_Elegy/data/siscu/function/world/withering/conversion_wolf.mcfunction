
tag @s add wolf_checked
tag @s add siscu.zombifying_invulnerable
tag @s add withering_invulnerable
tag @s remove siscu.rot_checked
scoreboard players reset @s siscu.rotting_mob
scoreboard players reset @s siscu.withering

# Clear database
data modify storage siscu:volatile UUID set from entity @s UUID
function siscu:entities/wolf/macro/remove_from_list with storage siscu:volatile

# Set entity data
data merge entity @s {variant:"siscu:withered_skeleton"}
data merge entity @s {DeathLootTable:"siscu:entities/special_wolf"}
execute if predicate siscu:utils/is_baby run function siscu:entities/generic/stall_baby_growth
execute unless predicate siscu:utils/is_baby run data merge entity @s {Age:24000}

# Effects
playsound entity.wither_skeleton.ambient neutral @a ~ ~ ~
playsound minecraft:entity.skeleton.converted_to_stray neutral @a ~ ~ ~ 1 0.8
particle large_smoke ~ ~0.3 ~ 0.3 0.1 0.3 0 10
effect give @s fire_resistance infinite 1 true

attribute @s attack_damage base set 7.0
attribute @s scale base set 1.15
attribute @s max_health base set 60
attribute @s burning_time base set 0.1
