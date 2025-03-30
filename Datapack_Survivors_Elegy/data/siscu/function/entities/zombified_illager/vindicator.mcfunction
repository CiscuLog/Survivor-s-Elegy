tag @s add siscu.zombified_vindicator

loot replace entity @s armor.chest loot siscu:items/combat/vindicator_chestplate
loot replace entity @s armor.legs loot siscu:items/combat/vindicator_leggings
loot replace entity @s[tag=!siscu.zombified] weapon.mainhand loot siscu:entities/zombified_illager/vindicator_weapon

# drops
data merge entity @s {drop_chances:{chest:0.0,legs:0.0}}

#say vindicator