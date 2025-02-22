# Tag the entity as checked

tag @s add siscu.drowned_checked

# Run the randomiser

loot replace entity @s weapon loot siscu:entities/drowned/drowned_weapons
execute if predicate siscu:utils/10_percent run loot replace entity @s armor.head loot siscu:entities/drowned/drowned_helmets
execute if predicate siscu:utils/10_percent run loot replace entity @s armor.chest loot siscu:entities/drowned/drowned_chestplates
execute if predicate siscu:utils/20_percent if predicate siscu:entities/is_wearing_copper_chestplate run loot replace entity @s armor.legs loot siscu:entities/drowned/drowned_leggings
execute if predicate siscu:utils/10_percent run loot replace entity @s armor.feet loot siscu:entities/drowned/drowned_boots

execute if predicate siscu:entities/is_holding_trident if predicate siscu:utils/is_baby run data merge entity @s {HandDropChances:[0.0f,0.0f]}

execute if predicate siscu:entities/is_wearing_copper_armor if predicate siscu:utils/50_percent run function siscu:items/passive_behav/charge/copper_armor