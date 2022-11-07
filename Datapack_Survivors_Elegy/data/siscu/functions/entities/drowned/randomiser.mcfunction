# Tag the entity as checked

tag @s add drowned_checked

# Run the randomiser

loot replace entity @s weapon loot siscu:entities/drowned/drowned_weapons
execute if predicate siscu:utils/10_percent run loot replace entity @s armor.head loot siscu:groups/tools/copper_helmets
execute if predicate siscu:utils/10_percent run loot replace entity @s armor.chest loot siscu:groups/tools/copper_chestplates

execute if predicate siscu:entities/is_holding_trident if predicate siscu:utils/is_baby run data merge entity @s {HandDropChances:[0.0f,0.0f]}