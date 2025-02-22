
# Tag the entity as checked
tag @s add siscu.zombie_checked
execute as @s[tag=!siscu.special] run function siscu:entities/zombie/set_special_zombie

## Set weapons
# hand items clear code
execute unless predicate siscu:entities/is_dressed run loot replace entity @s[tag=!siscu.special] armor.chest loot siscu:entities/zombie/zombie_chestplates
execute if predicate siscu:utils/50_percent unless predicate siscu:utils/is_baby run loot replace entity @s[tag=!siscu.special] weapon loot siscu:entities/zombie/zombie_weapons
execute if predicate siscu:utils/10_percent unless predicate siscu:utils/is_baby run loot replace entity @s[tag=!siscu.special] weapon.offhand loot siscu:entities/zombie/zombie_shields

execute as @s[predicate=siscu:utils/is_baby] run function siscu:entities/zombie/baby_zombie

execute as @s[tag=siscu.unequipped] run function siscu:entities/zombie/equip_special_zombie

## Others
# Charge copper armors (50%)
execute if predicate siscu:entities/is_wearing_copper_armor if predicate siscu:utils/50_percent run function siscu:items/passive_behav/charge/copper_armor
# Zombies with axes can always break doors
execute if predicate siscu:entities/is_holding_axe run data merge entity @s[tag=!siscu.special] {CanBreakDoors: 1b}
# Infested Sewer Zombies (20%) Infested I, 04:00
execute if predicate siscu:locations/citadel_sewers if predicate siscu:utils/20_percent run effect give @s infested 240 0
# Stronghold Sewer Zombies (5%) Infested I, 04:00
execute if predicate siscu:locations/check_stronghold if predicate siscu:utils/5_percent run effect give @s infested 240 0