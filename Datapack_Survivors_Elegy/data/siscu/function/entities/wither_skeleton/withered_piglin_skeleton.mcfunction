
loot replace entity @s weapon loot siscu:entities/wither_skeleton/wither_skeleton_piglin_weapons
loot replace entity @s weapon.offhand loot siscu:entities/wither_skeleton/wither_skeleton_piglin_shields

loot replace entity @s armor.head loot siscu:entities/wither_skeleton/wither_skeleton_piglin_skulls
loot replace entity @s armor.chest loot siscu:entities/wither_skeleton/wither_skeleton_chestplates
loot replace entity @s armor.legs loot siscu:entities/wither_skeleton/wither_skeleton_leggings
loot replace entity @s armor.feet loot siscu:entities/wither_skeleton/wither_skeleton_boots

execute if predicate siscu:entities/skeleton_bow run data merge entity @s {drop_chances:{mainhand:0.0,offhand:0.0}}
data merge entity @s {drop_chances:{head:0.0}}