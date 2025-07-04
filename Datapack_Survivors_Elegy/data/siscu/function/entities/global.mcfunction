# This function is always called from the entitie's location. Execute at @s is not required

execute if entity @s[tag=entity_checked] run return run tag @s add siscu.entity_checked
tag @s add siscu.entity_checked

# Incredible smithed compatibility feature
execute if entity @s[tag=smithed.entity] run return 0

#Differentiate
execute as @s[type=blaze,tag=!siscu.blaze_checked] run return run function siscu:entities/blaze/randomiser
execute as @s[type=bogged,tag=!siscu.bogged_checked] run return run function siscu:entities/bogged/randomiser
execute as @s[type=creeper,tag=!siscu.creeper_checked] run return run function siscu:entities/creeper/randomiser
execute as @s[type=drowned,tag=!siscu.drowned_checked] run return run function siscu:entities/drowned/randomiser
execute as @s[type=enderman,tag=!siscu.enderman_checked] run return run function siscu:entities/enderman/randomiser
execute as @s[type=evoker,tag=!siscu.evoker_checked] run return run function siscu:entities/evoker/randomiser
execute as @s[type=hoglin,tag=!siscu.hoglin_checked] run return run function siscu:entities/hoglin/randomiser
execute as @s[type=husk,tag=!siscu.husk_checked] run return run function siscu:entities/husk/randomiser
execute as @s[type=iron_golem,tag=!siscu.golem_checked] run return run function siscu:entities/iron_golem/randomiser
execute as @s[type=piglin,tag=!siscu.piglin_checked] run return run function siscu:entities/piglin/randomiser
execute as @s[type=phantom,tag=!siscu.phantom_checked] run return run function siscu:entities/phantom/main
execute as @s[type=piglin_brute,tag=!siscu.piglin_checked] run return run function siscu:entities/piglin/brute/randomiser
execute as @s[type=pillager,tag=!siscu.pillager_checked] run return run function siscu:entities/pillager/randomiser
execute as @s[type=skeleton,tag=!siscu.skeleton_checked] run return run function siscu:entities/skeleton/randomiser
execute as @s[type=wandering_trader,tag=!siscu.trader_checked] run return run function siscu:entities/wandering_trader/randomiser
execute as @s[type=trader_llama,tag=!siscu.llama_checked] run return run function siscu:entities/trader_llama/randomiser
execute as @s[type=villager,tag=!siscu.villager_checked] run return run function siscu:entities/villager/main
execute as @s[type=witch,tag=!siscu.witch_checked] run return run function siscu:entities/witch/randomiser
execute as @s[type=wither_skeleton,tag=!siscu.skeleton_checked] run return run function siscu:entities/wither_skeleton/randomiser
execute as @s[type=vex,tag=!siscu.vex_checked] run return run function siscu:entities/vex/randomiser
execute as @s[type=zombie,tag=!siscu.zombie_checked] run return run function siscu:entities/zombie/main
execute as @s[type=zombie_villager,tag=!siscu.zombie_checked] run return run function siscu:entities/zombified_illager/main
