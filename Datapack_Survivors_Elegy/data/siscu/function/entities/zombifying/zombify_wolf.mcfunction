tag @s add wolf_checked
tag @s add zombifying_invulnerable
tag @s remove zombifying
tag @s remove zombifying_strong
scoreboard players reset @s siscu.zombifying

data merge entity @s {variant:"siscu:zombified"}
function siscu:entities/rotting_mobs/assign_initial_rot
execute if predicate siscu:utils/is_baby run function siscu:entities/wolf/stall_baby_growth

effect clear @s unluck
effect give @s slowness 3 2 true

function siscu:entities/rotting_mobs/big_particles
playsound minecraft:entity.wolf.death neutral @a ~ ~ ~