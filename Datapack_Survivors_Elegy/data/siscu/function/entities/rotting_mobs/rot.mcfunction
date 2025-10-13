
# return if it shouldn't rot
execute if entity @s[type=#siscu:rotting_mobs_any,type=!#siscu:rotting_mobs_all] unless predicate siscu:entities/is_zombie_variant run return fail

# return if it's protected
execute at @s if predicate siscu:locations/is_on_honeycomb_block run return run function siscu:entities/rotting_mobs/protected_particles

# else, rot
execute at @s run function siscu:entities/rotting_mobs/small_particles

execute if entity @s[type=zombie_villager] if predicate siscu:entities/check_curing run return run scoreboard players add @s siscu.rotting_mob 1
scoreboard players add @s siscu.rotting_mob 1
