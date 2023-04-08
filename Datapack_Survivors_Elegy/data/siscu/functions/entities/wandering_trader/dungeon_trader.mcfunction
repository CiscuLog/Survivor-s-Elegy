
loot replace entity @s armor.head loot siscu:items/misc/dungeon_trader_banner
data merge entity @s {CustomName:'{"translate":"entity.siscu.dungeon_trader"}'}

data modify entity @s Offers.Recipes set value []

execute as @s run function siscu:entities/wandering_trader/dungeon_trader_unique
execute as @s run function siscu:entities/wandering_trader/dungeon_trader_gilded
execute as @s run function siscu:entities/wandering_trader/dungeon_trader_rare
execute as @s run function siscu:entities/wandering_trader/dungeon_trader_common