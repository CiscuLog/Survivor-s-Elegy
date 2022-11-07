item modify entity @s armor.legs siscu:oxidation/oxidise_weathered_copper_leggings
item modify entity @s armor.legs siscu:oxidation/oxidise_exposed_copper_leggings
item modify entity @s armor.legs siscu:oxidation/oxidise_copper_leggings

execute if predicate siscu:items/unnamed_leggings if predicate siscu:items/weathered_copper_leggings run item modify entity @s armor.legs siscu:oxidation/set_name_exposed_copper_leggings
execute if predicate siscu:items/unnamed_leggings if predicate siscu:items/exposed_copper_leggings run item modify entity @s armor.legs siscu:oxidation/set_name_weathered_copper_leggings
execute if predicate siscu:items/unnamed_leggings if predicate siscu:items/oxidised_copper_leggings run item modify entity @s armor.legs siscu:oxidation/set_name_oxidised_copper_leggings
