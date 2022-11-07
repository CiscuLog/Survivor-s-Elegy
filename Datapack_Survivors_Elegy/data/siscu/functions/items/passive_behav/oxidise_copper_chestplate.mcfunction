item modify entity @s armor.chest siscu:oxidation/oxidise_weathered_copper_chestplate
item modify entity @s armor.chest siscu:oxidation/oxidise_exposed_copper_chestplate
item modify entity @s armor.chest siscu:oxidation/oxidise_copper_chestplate

execute if predicate siscu:items/unnamed_chestplate if predicate siscu:items/weathered_copper_chestplate run item modify entity @s armor.chest siscu:oxidation/set_name_exposed_copper_chestplate
execute if predicate siscu:items/unnamed_chestplate if predicate siscu:items/exposed_copper_chestplate run item modify entity @s armor.chest siscu:oxidation/set_name_weathered_copper_chestplate
execute if predicate siscu:items/unnamed_chestplate if predicate siscu:items/oxidised_copper_chestplate run item modify entity @s armor.chest siscu:oxidation/set_name_oxidised_copper_chestplate
