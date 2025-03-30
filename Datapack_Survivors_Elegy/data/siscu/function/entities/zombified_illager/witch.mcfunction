tag @s add siscu.zombified_witch

loot replace entity @s armor.head loot siscu:items/combat/witch_hat
loot replace entity @s armor.chest loot siscu:items/combat/witch_chestplate
loot replace entity @s armor.legs loot siscu:items/combat/witch_leggings
loot replace entity @s[tag=!siscu.zombified] weapon.mainhand loot siscu:entities/zombified_illager/witch_weapon

#execute at @s positioned ~ ~2 ~ run function siscu:entities/zombified_illager/witch_potion
#ride @n[tag=siscu.witch_potion] mount @s
#tag @n[tag=siscu.witch_potion] remove siscu.witch_potion

# drops
data merge entity @s {drop_chances:{head:0.0,chest:0.0,legs:0.0}}

#say witch