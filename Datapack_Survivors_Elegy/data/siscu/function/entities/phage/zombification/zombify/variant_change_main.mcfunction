tag @s add siscu.zombifying_invulnerable
tag @s remove siscu.zombifying
scoreboard players reset @s siscu.zombifying

data merge entity @s {data:{variant:""}}
data modify entity @s data.variant set from entity @s variant
data merge entity @s {variant:"siscu:zombified"}
data merge entity @s {DeathLootTable:"siscu:entities/phage_passive_mob"}
function siscu:entities/rotting_mobs/assign_initial_rot
function siscu:entities/generic/stall_growth

$$(extra)

execute if predicate siscu:entities/has_wax_armor run function siscu:entities/phage/zombification/zombify/wax_armor

effect clear @s unluck
effect give @s slowness 3 2 true

function siscu:entities/rotting_mobs/big_particles
playsound entity.zombie.infect neutral @a ~ ~ ~

function siscu:entities/generic/switch_vehicle
