
execute unless data entity @s Offers run return fail
tag @s add siscu.trader_basic
# Trades
data get entity @s Offers
execute if predicate siscu:utils/100_percent run function siscu:entities/wandering_trader/trades/enchanter_book
execute if predicate siscu:utils/100_percent run function siscu:entities/wandering_trader/trades/pamphlet
