
# Netherite Horse Armor
execute if items entity @s weapon.mainhand *[custom_data~{SE_data:{id:"siscu:netherite_horse_armor"}}] run return run item replace entity @s weapon.mainhand with netherite_horse_armor

# Jigsaw
execute if items entity @s weapon.mainhand jigsaw run return run function siscu:items/update/trigger_loot_table_macro {"loot_table":"siscu:items/ingredients/enchanter_book"}
# Leather Armor pieces
execute if items entity @s weapon.mainhand leather_boots[custom_data~{SE_data:{IsCopper:1}}] run return run function siscu:items/update/trigger_loot_table_macro {"loot_table":"siscu:items/combat/copper_boots"}
execute if items entity @s weapon.mainhand leather_leggings[custom_data~{SE_data:{IsCopper:1}}] run return run function siscu:items/update/trigger_loot_table_macro {"loot_table":"siscu:items/combat/copper_leggings"}
execute if items entity @s weapon.mainhand leather_chestplate[custom_data~{SE_data:{IsCopper:1}}] run return run function siscu:items/update/trigger_loot_table_macro {"loot_table":"siscu:items/combat/copper_chestplate"}
execute if items entity @s weapon.mainhand leather_helmet[custom_data~{SE_data:{IsCopper:1}}] run return run function siscu:items/update/trigger_loot_table_macro {"loot_table":"siscu:items/combat/copper_helmet"}

execute if items entity @s weapon.mainhand leather_chestplate[custom_data~{SE_data:{IsStray:1}}] run return run function siscu:items/update/trigger_loot_table_macro {"loot_table":"siscu:items/combat/stray_chestplate"}
# Raw Copper
execute if items entity @s weapon.mainhand raw_copper[custom_data~{SE_data:{LightSensor:1}}] run return run function siscu:items/update/trigger_loot_table_macro {"loot_table":"siscu:items/tools/light_sensor"}
