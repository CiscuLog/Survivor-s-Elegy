# Run the randomiser

loot replace entity @s weapon loot siscu:groups/piglin_weapons
loot replace entity @s weapon.offhand loot siscu:groups/piglin_shields
loot replace entity @s armor.head loot siscu:groups/piglin_helmets
loot replace entity @s armor.chest loot siscu:groups/piglin_chestplates
loot replace entity @s armor.legs loot siscu:groups/piglin_leggings
loot replace entity @s armor.feet loot siscu:groups/piglin_boots

execute if predicate siscu:entities/is_riding_strider run item replace entity @s weapon with minecraft:warped_fungus_on_a_stick