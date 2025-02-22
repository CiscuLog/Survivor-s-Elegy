tag @s add siscu.zombified_wandering_trader

loot replace entity @s armor.head loot siscu:items/combat/wandering_trader_hat
loot replace entity @s armor.chest loot siscu:items/combat/wandering_trader_chestplate
loot replace entity @s armor.legs loot siscu:items/combat/wandering_trader_leggings
loot replace entity @s[tag=!siscu.zombified] weapon.mainhand loot siscu:entities/zombified_illager/wandering_trader_weapon

# chestplate
data modify entity @s ArmorDropChances[2] set value 0.0f
# leggings
data modify entity @s ArmorDropChances[1] set value 0.0f

#say wandering_trader