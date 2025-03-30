tag @s add siscu.zombified_pillager

loot replace entity @s armor.chest loot siscu:items/combat/pillager_chestplate
loot replace entity @s armor.legs loot siscu:items/combat/pillager_leggings
loot replace entity @s[tag=!siscu.zombified] weapon.mainhand loot siscu:entities/zombified_illager/pillager_weapon

# drops
data merge entity @s {drop_chances:{chest:0.0,legs:0.0}}

#say pillager