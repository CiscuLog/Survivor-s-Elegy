tag @s add siscu.zombified_illusioner

loot replace entity @s armor.head loot siscu:items/combat/illusioner_hat
loot replace entity @s armor.chest loot siscu:items/combat/illusioner_chestplate
loot replace entity @s armor.legs loot siscu:items/combat/illusioner_leggings
loot replace entity @s[tag=!siscu.zombified] weapon.mainhand loot siscu:entities/zombified_illager/illusioner_weapon

# drops
data merge entity @s {drop_chances:{head:0.0,chest:0.0,legs:0.0}}

#say illusioner