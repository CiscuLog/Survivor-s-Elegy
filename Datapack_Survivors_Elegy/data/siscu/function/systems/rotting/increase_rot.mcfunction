
execute if entity @s[tag=smithed.entity] run return fail
execute if entity @s[tag=!siscu.rot_checked] run return run function siscu:systems/rotting/assign_initial_rot

# return if it shouldn't rot
execute if entity @s[type=#siscu:rotting_mobs_any,type=!#siscu:rotting_mobs_all] unless predicate siscu:entities/is_zombie_variant run return fail

# return if it's protected
execute at @s if predicate siscu:locations/is_on_honeycomb_block run return run function siscu:systems/rotting/protected_particles
# return if it's being cured
execute if entity @s[type=zombie_villager] unless predicate siscu:entities/check_curing run return 0

# else, rot
execute at @s run function siscu:systems/rotting/small_particles
scoreboard players add @s siscu.rotting_mob 1
