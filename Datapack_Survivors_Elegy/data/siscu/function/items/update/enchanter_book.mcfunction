advancement revoke @s only siscu:items/update/enchanter_book
loot replace entity @s weapon.mainhand loot siscu:items/tools/enchanter_book
item modify entity @s weapon.mainhand {function:"set_custom_data",tag:{SE_data:{UpdateVersion:"v1.0.0"}}}