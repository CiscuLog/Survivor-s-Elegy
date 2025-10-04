tag @s add siscu.zombifying_invulnerable
tag @s remove siscu.zombifying
scoreboard players reset @s siscu.zombifying

data merge entity @s {variant:"siscu:zombified"}
data merge entity @s {DeathLootTable:"siscu:entities/phage_passive_mob"}
function siscu:entities/rotting_mobs/assign_initial_rot
execute if predicate siscu:utils/is_baby run function siscu:entities/generic/stall_baby_growth
execute unless predicate siscu:utils/is_baby run data merge entity @s {Age:24000}

effect clear @s unluck
effect give @s slowness 3 2 true

function siscu:entities/rotting_mobs/big_particles
playsound entity.zombie.infect neutral @a ~ ~ ~
