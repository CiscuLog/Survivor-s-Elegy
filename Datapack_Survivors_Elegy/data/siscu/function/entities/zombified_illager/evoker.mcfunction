tag @s add siscu.zombified_evoker

loot replace entity @s armor.chest loot siscu:items/combat/evoker_chestplate
loot replace entity @s armor.legs loot siscu:items/combat/evoker_leggings
loot replace entity @s[tag=!siscu.zombified] weapon.mainhand loot siscu:entities/zombified_illager/evoker_weapon

# drops
data merge entity @s {drop_chances:{chest:0.0,legs:0.0}}

#say evoker