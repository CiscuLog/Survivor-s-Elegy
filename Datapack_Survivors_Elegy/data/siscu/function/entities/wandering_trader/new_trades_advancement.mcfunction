advancement revoke @s only siscu:entities/wandering_trader_basic

execute as @n[type=wandering_trader,tag=!smithed.entity,tag=!siscu.trader_basic] at @s run function siscu:entities/wandering_trader/new_trades

# stupid thing that makes the player exit the trader's GUI
tag @s add siscu.wandering_trader_tp
execute at @s run tp @s ~ ~320.1 ~
schedule function siscu:entities/wandering_trader/new_trades_advancement_tp 2t