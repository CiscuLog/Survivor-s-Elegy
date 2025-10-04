tag @s add wolf_checked
tag @s add siscu.zombifying_invulnerable
tag @s remove siscu.zombifying
scoreboard players reset @s siscu.zombifying

function siscu:entities/wolf/save_variant with entity @s

data merge entity @s {variant:"siscu:zombified"}
data merge entity @s {DeathLootTable:"siscu:entities/special_wolf"}
function siscu:entities/rotting_mobs/assign_initial_rot
execute if predicate siscu:utils/is_baby run function siscu:entities/generic/stall_baby_growth
execute unless predicate siscu:utils/is_baby run data merge entity @s {Age:24000}

effect clear @s unluck
effect give @s slowness 3 2 true

execute if predicate siscu:entities/wax_armor at @s run function siscu:entities/wolf/wax_armor

function siscu:entities/rotting_mobs/big_particles
playsound minecraft:entity.wolf.death neutral @a ~ ~ ~
