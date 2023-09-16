execute at @s summon trader_llama at @s run data modify entity @s DespawnDelay set from entity @e[type=wandering_trader,limit=1,sort=nearest] DespawnDelay
tp @s ~ -100 ~
kill @s