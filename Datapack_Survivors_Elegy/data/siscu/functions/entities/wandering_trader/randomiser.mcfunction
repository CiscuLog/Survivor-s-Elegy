
tag @s add trader_checked

execute if predicate siscu:utils/100_percent run function siscu:entities/wandering_trader/add_enchanter_book

execute at @s run playsound minecraft:item.goat_horn.sound.0 neutral @a ~ ~ ~ 8 1