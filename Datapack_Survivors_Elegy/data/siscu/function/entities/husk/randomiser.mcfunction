# Tag the entity as checked

tag @s add husk_checked

# Set weapons

execute unless predicate siscu:utils/is_baby if predicate siscu:utils/10_percent run loot replace entity @s[tag=!special] weapon loot siscu:entities/husk/husk_weapons
execute if predicate siscu:utils/10_percent unless predicate siscu:utils/is_baby run loot replace entity @s[tag=!special] weapon.offhand loot siscu:entities/husk/husk_shields

# Set nbt

execute if predicate siscu:entities/is_holding_axe run data merge entity @s[tag=!special] {CanBreakDoors: 1b}