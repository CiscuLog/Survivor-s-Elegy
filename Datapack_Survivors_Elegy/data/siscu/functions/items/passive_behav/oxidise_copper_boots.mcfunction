item modify entity @s armor.feet siscu:oxidation/oxidise_weathered_copper_boots
item modify entity @s armor.feet siscu:oxidation/oxidise_exposed_copper_boots
item modify entity @s armor.feet siscu:oxidation/oxidise_copper_boots

execute if predicate siscu:items/unnamed_boots if predicate siscu:items/weathered_copper_boots run item modify entity @s armor.feet siscu:oxidation/set_name_exposed_copper_boots
execute if predicate siscu:items/unnamed_boots if predicate siscu:items/exposed_copper_boots run item modify entity @s armor.feet siscu:oxidation/set_name_weathered_copper_boots
execute if predicate siscu:items/unnamed_boots if predicate siscu:items/oxidised_copper_boots run item modify entity @s armor.feet siscu:oxidation/set_name_oxidised_copper_boots
