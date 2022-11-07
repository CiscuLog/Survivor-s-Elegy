
#get item data

execute store result score siscu.previous_damage siscu.test run data get entity @s Inventory[{Slot:102b}].tag.SE_data.PreviousDamage
execute store result score siscu.damage_amount siscu.test run data get entity @s Inventory[{Slot:102b}].tag.Damage

execute store result score siscu.real_damage siscu.test run data get entity @s Inventory[{Slot:102b}].tag.SE_data.RealDurability
execute store result score siscu.damage siscu.test run data get entity @s Inventory[{Slot:102b}].tag.SE_data.Damage
execute store result score siscu.durability siscu.test run data get entity @s Inventory[{Slot:102b}].tag.SE_data.Durability

# calculate new durability

scoreboard players operation siscu.damage_amount siscu.test -= siscu.previous_damage siscu.test
execute if score siscu.damage_amount siscu.test matches ..-1 run scoreboard players operation siscu.damage siscu.test += siscu.damage_amount siscu.test
execute if score siscu.damage siscu.test matches ..-1 run scoreboard players set siscu.damage siscu.test 0

scoreboard players add siscu.damage siscu.test 1
scoreboard players operation siscu.real_damage siscu.test *= siscu.damage siscu.test
scoreboard players operation siscu.real_damage siscu.test /= siscu.durability siscu.test

# store data to storage

execute store result storage siscu:damages Damage int 1 run scoreboard players get siscu.damage siscu.test
execute store result storage siscu:damages RealDamage int 1 run scoreboard players get siscu.real_damage siscu.test

# set item data

execute unless score siscu.damage siscu.test > siscu.durability siscu.test run item modify entity @s armor.chest siscu:durability/rewrite_data

advancement revoke @s only siscu:items/use/custom_armor_chestplate
