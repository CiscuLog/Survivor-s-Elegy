
## Set Rotting Stage ##
execute as @s if predicate siscu:utils/75_percent run return 1

## Entity Behav ##
execute if score @s siscu.rotting_mob matches 1000..1999 run damage @s 50 siscu:rotting
execute if score @s siscu.rotting_mob matches 2000.. run return run kill @s

execute if score @s[type=#siscu:rotting_mobs,tag=!siscu.stray_zombie,tag=!siscu.bogged_zombie] siscu.rotting_mob >= rotting_timer_limit siscu.integer at @s run return run function siscu:entities/rotting_mobs/rot/skeleton with entity @s
execute if score @s[tag=siscu.stray_zombie] siscu.rotting_mob >= rotting_timer_limit siscu.integer at @s run return run function siscu:entities/rotting_mobs/rot/stray with entity @s
execute if score @s[type=husk] siscu.rotting_mob >= rotting_timer_limit siscu.integer at @s run return run function siscu:entities/rotting_mobs/rot/parched with entity @s
execute if score @s[tag=siscu.bogged_zombie] siscu.rotting_mob >= rotting_timer_limit siscu.integer at @s run return run function siscu:entities/rotting_mobs/rot/bogged with entity @s
execute if score @s[type=zoglin] siscu.rotting_mob >= rotting_timer_limit siscu.integer at @s run damage @s 2 siscu:rotting
execute if score @s[type=zombie_villager] siscu.rotting_mob >= rotting_timer_limit siscu.integer at @s run return run function siscu:entities/rotting_mobs/rot/skeleton with entity @s
execute if score @s[type=zombie_horse] siscu.rotting_mob >= rotting_timer_limit siscu.integer at @s run return run function siscu:entities/rotting_mobs/rot/skeleton_horse with entity @s
execute if score @s[type=wolf] siscu.rotting_mob >= rotting_timer_limit siscu.integer at @s run return run function siscu:entities/rotting_mobs/rot/wolf
execute if score @s[type=#siscu:rotting_mobs_any] siscu.rotting_mob >= rotting_timer_limit siscu.integer at @s run return run function siscu:entities/rotting_mobs/rot/generic_passive_mob

