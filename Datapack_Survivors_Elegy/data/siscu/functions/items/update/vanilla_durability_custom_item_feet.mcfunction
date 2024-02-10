
# Dgc = Dg * Db / RD
execute store result score siscu.damage siscu.volatile run data get entity @s Inventory[{Slot:100b}].tag.Damage
execute store result storage siscu:damages RealDamage int 1 run scoreboard players get siscu.damage siscu.volatile

execute store result score siscu.durability siscu.volatile run data get entity @s Inventory[{Slot:100b}].tag.SE_data.Durability
scoreboard players operation siscu.damage siscu.volatile *= siscu.durability siscu.volatile
execute store result score siscu.durability siscu.volatile run data get entity @s Inventory[{Slot:100b}].tag.SE_data.RealDurability
scoreboard players operation siscu.damage siscu.volatile /= siscu.durability siscu.volatile
execute store result storage siscu:damages Damage int 1 run scoreboard players get siscu.damage siscu.volatile

# set item data
item modify entity @s armor.feet siscu:durability/set_vanilla_to_custom_damages
item modify entity @s armor.feet siscu:durability/set_vanilla_to_custom

advancement revoke @a only siscu:items/update/custom_item_feet