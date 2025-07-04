#tag @s add siscu.pig_checked
tag @s add siscu.zombifying_invulnerable
tag @s remove siscu.zombifying
scoreboard players reset @s siscu.zombifying

data merge entity @s {variant:"siscu:zombified"}
data merge entity @s {DeathLootTable:"siscu:entities/special_pig"}
function siscu:entities/rotting_mobs/assign_initial_rot
execute if predicate siscu:utils/is_baby run function siscu:entities/wolf/stall_baby_growth

effect clear @s unluck
effect give @s slowness 3 2 true

function siscu:entities/rotting_mobs/big_particles
playsound minecraft:entity.wolf.death neutral @a ~ ~ ~
