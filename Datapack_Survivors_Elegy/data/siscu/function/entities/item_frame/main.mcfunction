
execute if entity @s[tag=smithed.entity,tag=!siscu.item_frame_claimed] run return fail

execute if predicate siscu:entities/item_frame/multicheck_items run tag @s add siscu.item_frame_check_again
execute unless predicate siscu:entities/item_frame/multicheck_items run tag @s remove siscu.item_frame_check_again
function siscu:entities/item_frame/visibility/main
execute if predicate siscu:entities/item_frame/fixed_items if predicate siscu:entities/item_frame/is_rotated run function siscu:entities/item_frame/fix_rotation

# Bee Counter #
execute if items entity @s contents *[minecraft:item_model="siscu_se:bee_counter"] at @s if block ^ ^ ^-1 #minecraft:beehives if entity @e[type=player,distance=..10] run return run function siscu:entities/item_frame/bee_counter/bee_counter

# Shutters #
execute if items entity @s contents *[minecraft:custom_data~{SE_data:{id:"siscu:shutters"}}] run return run function siscu:entities/item_frame/shutters/main

# Light Sensor #
execute if items entity @s contents *[minecraft:custom_data={"SE_data":{"id": "siscu:light_sensor"}}] at @s run function siscu:entities/item_frame/light_sensor