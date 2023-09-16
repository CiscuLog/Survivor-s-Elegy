execute if score @s siscu.trader_timer matches 3 store result score @s siscu.trader_timer on leasher run data get entity @s DespawnDelay
scoreboard players remove @s siscu.trader_timer 1
execute if score @s siscu.trader_timer matches ..2 run function siscu:entities/wandering_trader/companions/despawn