scoreboard players remove ray siscu.volatile 1
execute unless score ray siscu.volatile matches 0..50 run return 0

execute unless block ~ ~ ~ #siscu:warped_gall_sources positioned ^ ^ ^0.1 run return run function siscu:items/use/axe_on_log/raycast_strip_warped_stem

# when hitting a stem, summon gall
execute positioned ^ ^ ^-0.3 align xyz run loot spawn ~0.5 ~0 ~0.5 loot siscu:items/food/warped_gall
execute positioned ~ ~ ~ align xyz run particle block{block_state:"warped_stem"} ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 0.3 20
