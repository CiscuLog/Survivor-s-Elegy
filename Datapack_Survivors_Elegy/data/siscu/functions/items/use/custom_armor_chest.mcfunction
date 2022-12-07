
#get item data

execute store result score volatile.previous_damage siscu.volatile run data get entity @s Inventory[{Slot:102b}].tag.SE_data.PreviousDamage
execute store result score volatile.damage_amount siscu.volatile run data get entity @s Inventory[{Slot:102b}].tag.Damage

execute store result score volatile.real_damage siscu.volatile run data get entity @s Inventory[{Slot:102b}].tag.SE_data.RealDurability
execute store result score volatile.damage siscu.volatile run data get entity @s Inventory[{Slot:102b}].tag.SE_data.Damage
execute store result score volatile.durability siscu.volatile run data get entity @s Inventory[{Slot:102b}].tag.SE_data.Durability

# calculate new durability

scoreboard players operation volatile.damage_amount siscu.volatile -= volatile.previous_damage siscu.volatile
execute if score volatile.damage_amount siscu.volatile matches ..-1 run scoreboard players operation volatile.damage siscu.volatile += volatile.damage_amount siscu.volatile
execute if score volatile.damage siscu.volatile matches ..-1 run scoreboard players set volatile.damage siscu.volatile 0

scoreboard players add volatile.damage siscu.volatile 1
scoreboard players operation volatile.real_damage siscu.volatile *= volatile.damage siscu.volatile
scoreboard players operation volatile.real_damage siscu.volatile /= volatile.durability siscu.volatile

# store data to storage

execute store result storage volatile:damages Damage int 1 run scoreboard players get volatile.damage siscu.volatile
execute store result storage volatile:damages RealDamage int 1 run scoreboard players get volatile.real_damage siscu.volatile

# set item data

execute unless score volatile.damage siscu.volatile > volatile.durability siscu.volatile run item modify entity @s armor.chest volatile:durability/rewrite_data

advancement revoke @s only volatile:items/use/custom_armor_chestplate
