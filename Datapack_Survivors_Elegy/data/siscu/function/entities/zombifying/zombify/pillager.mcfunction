# set zombified pillager data
$function siscu:entities/zombified_illager/$(Entity)


function siscu:entities/zombifying/zombify/pillager_2 with entity @s

playsound siscu_se:entity.pillager.converted_to_zombified hostile @a ~ ~ ~
function siscu:entities/rotting_mobs/big_particles
effect give @n[type=zombie_villager,tag=siscu.zombified] slowness 3 2 true

execute on passengers run ride @s dismount
ride @s dismount
tag @e[type=zombie_villager,tag=siscu.zombified] remove siscu.zombified
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead