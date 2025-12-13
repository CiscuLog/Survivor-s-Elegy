tag @s add siscu.zombifying_invulnerable
tag @s remove siscu.rot_checked
scoreboard players reset @s siscu.rotting_mob
scoreboard players reset @s siscu.withering

data merge entity @s {variant:"siscu:skeleton"}
execute if predicate siscu:utils/is_baby run function siscu:entities/generic/stall_baby_growth
execute unless predicate siscu:utils/is_baby run data merge entity @s {Age:24000}

playsound minecraft:entity.skeleton.converted_to_stray neutral @a ~ ~ ~ 1 0.8
function siscu:entities/rotting_mobs/big_particles
effect give @s slowness 3 2 true