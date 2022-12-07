
#get item data

execute store result score siscu.previous_damage siscu.volatile run data get entity @s Inventory[{Slot:103b}].tag.SE_data.PreviousDamage
execute store result score siscu.damage_amount siscu.volatile run data get entity @s Inventory[{Slot:103b}].tag.Damage

execute store result score siscu.real_damage siscu.volatile run data get entity @s Inventory[{Slot:103b}].tag.SE_data.RealDurability
execute store result score siscu.damage siscu.volatile run data get entity @s Inventory[{Slot:103b}].tag.SE_data.Damage
execute store result score siscu.durability siscu.volatile run data get entity @s Inventory[{Slot:103b}].tag.SE_data.Durability

# calculate new durability

scoreboard players operation siscu.damage_amount siscu.volatile -= siscu.previous_damage siscu.volatile
execute if score siscu.damage_amount siscu.volatile matches ..-1 run scoreboard players operation siscu.damage siscu.volatile += siscu.damage_amount siscu.volatile
execute if score siscu.damage siscu.volatile matches ..-1 run scoreboard players set siscu.damage siscu.volatile 0

scoreboard players add siscu.damage siscu.volatile 1
scoreboard players operation siscu.real_damage siscu.volatile *= siscu.damage siscu.volatile
scoreboard players operation siscu.real_damage siscu.volatile /= siscu.durability siscu.volatile

# store data to storage

execute store result storage siscu:damages Damage int 1 run scoreboard players get siscu.damage siscu.volatile
execute store result storage siscu:damages RealDamage int 1 run scoreboard players get siscu.real_damage siscu.volatile

# set item data

execute unless score siscu.damage siscu.volatile > siscu.durability siscu.volatile run item modify entity @s armor.head siscu:durability/rewrite_data

advancement revoke @s only siscu:items/use/custom_armor_helmet
