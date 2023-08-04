
loot replace entity @s armor.head loot siscu:items/weapons/stray_helmet
loot replace entity @s armor.chest loot siscu:items/weapons/stray_chestplate
loot replace entity @s armor.legs loot siscu:items/weapons/stray_leggings

loot replace entity @s[predicate=!siscu:utils/is_baby] weapon.mainhand loot siscu:groups/zombie_weapons

data merge entity @s {ArmorDropChances:[1.0f,0.0f,0.0f,0.0f],DeathLootTable:"siscu:entities/special_zombie_loot"}

tag @s remove unequipped