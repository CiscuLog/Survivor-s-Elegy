tag @s add siscu.zombified_illusioner

loot replace entity @s armor.head loot siscu:items/combat/illusioner_hat
loot replace entity @s armor.chest loot siscu:items/combat/illusioner_chestplate
loot replace entity @s armor.legs loot siscu:items/combat/illusioner_leggings
loot replace entity @s[tag=!siscu.zombified] weapon.mainhand loot siscu:entities/zombified_illager/illusioner_weapon

# helmet
data modify entity @s ArmorDropChances[3] set value 0.0f
# chestplate
data modify entity @s ArmorDropChances[2] set value 0.0f
# leggings
data modify entity @s ArmorDropChances[1] set value 0.0f

#say illusioner