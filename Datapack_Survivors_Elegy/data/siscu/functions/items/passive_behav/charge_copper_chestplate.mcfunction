execute store result score charge siscu.volatile run data get entity @s Inventory[{Slot: 102b}].tag.SE_data.Charge
scoreboard players add charge siscu.volatile 3
execute store result storage siscu:volatile Charge int 1 run scoreboard players get charge siscu.volatile
item modify entity @s armor.chest siscu:charge/copper_armor_charge
item modify entity @s armor.chest siscu:charge/copper_armor_charge_lore