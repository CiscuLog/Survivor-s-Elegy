
#get item data

execute store result score siscu.previous_damage siscu.volatile run data get entity @s Inventory[{Slot:102b}].tag.SE_data.PreviousDamage
execute store result score siscu.damage_amount siscu.volatile run data get entity @s Inventory[{Slot:102b}].tag.Damage

execute store result score siscu.real_damage siscu.volatile run data get entity @s Inventory[{Slot:102b}].tag.SE_data.RealDurability
execute store result score siscu.damage siscu.volatile run data get entity @s Inventory[{Slot:102b}].tag.SE_data.Damage
execute store result score siscu.durability siscu.volatile run data get entity @s Inventory[{Slot:102b}].tag.SE_data.Durability

# calculate new durability
function siscu:items/use/custom_item_durability

# store data to storage

execute store result storage siscu:damages Damage int 1 run scoreboard players get siscu.damage siscu.volatile
execute store result storage siscu:damages RealDamage int 1 run scoreboard players get siscu.real_damage siscu.volatile

# set item data

execute unless score siscu.damage siscu.volatile > siscu.durability siscu.volatile run item modify entity @s armor.chest siscu:durability/rewrite_data

execute if score siscu.damage siscu.volatile > siscu.durability siscu.volatile if predicate siscu:entities/is_wearing_chestplate run damage @s 0.1 siscu:confusion

advancement revoke @a only siscu:items/use/custom_armor_chestplate