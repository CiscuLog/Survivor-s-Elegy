advancement revoke @s only siscu:items/update/copper_boots
execute unless data entity @s Inventory[{Slot:100b}].tag.SE_data.Charge run item modify entity @s armor.feet siscu:update_copper_charge
item modify entity @s armor.feet siscu:update_copper_boots