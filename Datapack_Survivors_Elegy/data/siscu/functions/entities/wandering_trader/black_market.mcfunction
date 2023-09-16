execute at @s run tag @e[type=wandering_trader,distance=..5] add siscu.black_market

execute as @e[tag=siscu.black_market,tag=!siscu.black_trades_added] at @s run function siscu:entities/wandering_trader/black_market_trades

advancement revoke @s only siscu:entities/wandering_trader_black_market