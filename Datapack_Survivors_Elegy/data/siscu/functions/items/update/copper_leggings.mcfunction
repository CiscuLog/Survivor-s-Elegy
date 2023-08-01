advancement revoke @s only siscu:items/update/copper_leggings
execute unless data entity @s Inventory[{Slot:101b}].tag.SE_data.Charge run item modify entity @s armor.legs siscu:update_copper_charge
item modify entity @s armor.legs siscu:update_copper_leggings