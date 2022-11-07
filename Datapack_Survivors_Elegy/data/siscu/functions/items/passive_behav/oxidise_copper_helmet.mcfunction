item modify entity @s armor.head siscu:oxidation/oxidise_weathered_copper_helmet
item modify entity @s armor.head siscu:oxidation/oxidise_exposed_copper_helmet
item modify entity @s armor.head siscu:oxidation/oxidise_copper_helmet

execute if predicate siscu:items/unnamed_helmet if predicate siscu:items/weathered_copper_helmet run item modify entity @s armor.head siscu:oxidation/set_name_exposed_copper_helmet
execute if predicate siscu:items/unnamed_helmet if predicate siscu:items/exposed_copper_helmet run item modify entity @s armor.head siscu:oxidation/set_name_weathered_copper_helmet
execute if predicate siscu:items/unnamed_helmet if predicate siscu:items/oxidised_copper_helmet run item modify entity @s armor.head siscu:oxidation/set_name_oxidised_copper_helmet
