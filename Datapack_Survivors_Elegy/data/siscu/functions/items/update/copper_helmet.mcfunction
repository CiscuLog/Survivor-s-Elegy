advancement revoke @s only siscu:items/update/copper_helmet
execute unless data entity @s Inventory[{Slot:103b}].tag.SE_data.Charge run item modify entity @s armor.head siscu:update_copper_charge
item modify entity @s armor.head siscu:update_copper_helmet