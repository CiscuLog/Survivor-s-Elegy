
tag @s add siscu.trader_checked

# Trades
execute if predicate siscu:utils/100_percent run function siscu:entities/wandering_trader/trades/enchanter_book
execute if predicate siscu:utils/100_percent run function siscu:entities/wandering_trader/trades/pamphlet

# Detach 1 llama
execute unless data entity @s {DespawnDelay:0} as @n[type=trader_llama,distance=..10] run function siscu:entities/trader_llama/new_llama with entity @s

# Companions
execute if predicate siscu:utils/40_percent unless data entity @s {DespawnDelay:0} run function siscu:entities/wandering_trader/companions/add_companion
