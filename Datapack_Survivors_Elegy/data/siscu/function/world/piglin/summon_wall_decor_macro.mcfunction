$loot replace entity @s contents loot $(String)
$item modify entity @s contents [{function:"set_custom_model_data","floats":{mode:"replace_all",values:[$(CMD)]}}]