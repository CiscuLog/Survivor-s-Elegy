tag @s add siscu.zombified_vindicator

loot replace entity @s armor.chest loot siscu:items/combat/vindicator_chestplate
loot replace entity @s armor.legs loot siscu:items/combat/vindicator_leggings
loot replace entity @s[tag=!siscu.zombified] weapon.mainhand loot siscu:entities/zombified_illager/vindicator_weapon

# chestplate
data modify entity @s ArmorDropChances[2] set value 0.0f
# leggings
data modify entity @s ArmorDropChances[1] set value 0.0f

#say vindicator