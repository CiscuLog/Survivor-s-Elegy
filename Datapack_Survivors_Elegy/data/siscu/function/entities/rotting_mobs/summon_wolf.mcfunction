tag @s add wolf_checked
tag @s add siscu.zombifying_invulnerable
tag @s remove siscu.rot_checked
scoreboard players reset @s siscu.rotting_mob
scoreboard players reset @s siscu.withering

data merge entity @s {variant:"siscu:skeleton"}
data merge entity @s {DeathLootTable:"siscu:entities/special_wolf"}
execute if predicate siscu:utils/is_baby run function siscu:entities/wolf/stall_baby_growth

playsound minecraft:entity.wolf.death neutral @a ~ ~ ~
playsound minecraft:entity.skeleton.converted_to_stray neutral @a ~ ~ ~ 1 0.8
function siscu:entities/rotting_mobs/big_particles
effect give @s slowness 3 2 true