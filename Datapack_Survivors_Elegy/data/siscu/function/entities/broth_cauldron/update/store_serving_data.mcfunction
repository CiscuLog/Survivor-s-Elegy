
tag @s add siscu.unset_broth
$execute if score x siscu.broth_data matches 1 run return run data merge entity @s {Item:{components:{"minecraft:custom_model_data":540011,"minecraft:food":{"nutrition":$(broth_food),"saturation":$(broth_saturation),"using_converts_to":{"id":"minecraft:bowl"}}}}}
$execute if score x siscu.broth_data matches 2 run return run data merge entity @s {Item:{components:{"minecraft:custom_model_data":540012,"minecraft:item_name": "{\"translate\":\"item.siscu.broth_bucket\"}","minecraft:food":{"nutrition":$(broth_food),"saturation":$(broth_saturation),"using_converts_to":{"id":"minecraft:bucket"},"eat_seconds":8.0f}}}}
$execute if score x siscu.broth_data matches 3 run return run data merge entity @s {Item:{components:{"minecraft:custom_model_data":540013,"minecraft:item_name": "{\"translate\":\"item.siscu.broth_bottle\"}","minecraft:food":{"nutrition":$(broth_food),"saturation":$(broth_saturation),"using_converts_to":{"id":"minecraft:glass_bottle"}}}}}
