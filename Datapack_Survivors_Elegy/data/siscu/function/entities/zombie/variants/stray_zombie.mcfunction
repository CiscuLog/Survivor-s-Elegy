
loot replace entity @s armor.head loot siscu:items/combat/stray_helmet
loot replace entity @s armor.chest loot siscu:items/combat/stray_chestplate
loot replace entity @s armor.legs loot siscu:items/combat/stray_leggings

loot replace entity @s[predicate=!siscu:utils/is_baby] weapon.mainhand loot siscu:entities/zombie/zombie_weapons

data merge entity @s {drop_chances:{head:0.0,legs:0.0},DeathLootTable:"siscu:entities/special_zombie_loot"}

tag @s remove siscu.unequipped