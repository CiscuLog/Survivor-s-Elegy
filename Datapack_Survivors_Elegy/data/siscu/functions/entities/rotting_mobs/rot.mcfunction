execute if predicate siscu:utils/50_percent unless predicate siscu:utils/is_baby run scoreboard players add @s[type=#rotting_mobs] siscu.rotting_mob 1
execute if predicate siscu:utils/50_percent unless predicate siscu:utils/is_baby if predicate siscu:entities/check_curing run scoreboard players add @s[type=zombie_villager] siscu.rotting_mob 1
execute if predicate siscu:utils/50_percent run scoreboard players add @s[type=zombie_horse] siscu.rotting_mob 1
execute if predicate siscu:utils/50_percent run scoreboard players add @s[type=zoglin] siscu.rotting_mob 1

execute at @s if predicate siscu:utils/50_percent run function siscu:entities/rotting_mobs/small_particle
