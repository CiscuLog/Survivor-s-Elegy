$loot replace entity @s contents loot $(String)
$item modify entity @s contents [{type:"set_custom_model_data","floats":{mode:"replace_all",values:[$(CMD)]}}]