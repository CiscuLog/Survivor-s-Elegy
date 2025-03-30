
# return if it's protected
execute at @s if predicate siscu:locations/is_on_honeycomb_block run return run function siscu:entities/rotting_mobs/protected_particles

# else, rot
execute at @s run function siscu:entities/rotting_mobs/small_particles

scoreboard players add @s siscu.rotting_mob 1

execute if entity @s[type=zombie_villager] if predicate siscu:entities/check_curing run return run scoreboard players add @s siscu.rotting_mob 1
execute if entity @s[type=zombie_horse] run return run scoreboard players add @s siscu.rotting_mob 1
execute if entity @s[type=zoglin] run return run scoreboard players add @s siscu.rotting_mob 1
