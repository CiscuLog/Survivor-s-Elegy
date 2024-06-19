# Tag the entity as checked

tag @s add bogged_checked

# Run the randomiser
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

execute unless predicate siscu:entities/skeleton_is_riding run loot replace entity @s weapon loot siscu:entities/skeleton/skeleton_weapons
execute if predicate siscu:utils/10_percent run loot replace entity @s weapon.offhand loot siscu:entities/skeleton/skeleton_shields

## Baby Skeletons
execute if predicate siscu:utils/5_percent run tag @s add baby
execute if entity @s[tag=baby] run function siscu:entities/bogged/baby_bogged