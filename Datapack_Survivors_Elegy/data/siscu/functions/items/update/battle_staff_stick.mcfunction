data modify storage siscu:volatile ItemData set from entity @s SelectedItem.tag
execute if data storage siscu:volatile {ItemData:{CustomModelData:548101}} run loot replace entity @s weapon loot siscu:items/weapons/battle_staff
execute if data storage siscu:volatile {ItemData:{CustomModelData:548102}} run loot replace entity @s weapon loot siscu:items/weapons/battle_staff_bamboo
item modify entity @s weapon.mainhand siscu:update_battle_staff_stick
advancement revoke @s only siscu:items/update/battle_staff_stick