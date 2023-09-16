
tag @s add trader_checked

execute if predicate siscu:utils/100_percent run function siscu:entities/wandering_trader/trades/enchanter_book

# Detach 1 llama
execute unless data entity @s {DespawnDelay:0} as @e[type=trader_llama,distance=..10,limit=1,sort=nearest] run function siscu:entities/trader_llama/new_llama

# Companions
execute if score server_status siscu.integer matches 1 if predicate siscu:utils/20_percent unless data entity @s {DespawnDelay:0} run function siscu:entities/wandering_trader/companions/add_companion

execute at @s run playsound minecraft:item.goat_horn.sound.0 neutral @a ~ ~ ~ 8 1