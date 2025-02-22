
# return if conditions are not met
execute unless predicate siscu:entities/item_frame/multicheck_items run return run tag @s remove siscu.item_frame_check_again

# else
tag @s[tag=!siscu.item_frame_check_again] add siscu.item_frame_check_again

# Bee Counter #
execute if items entity @s contents raw_copper[minecraft:item_model="siscu_se:bee_counter"] at @s if block ^ ^ ^-1 #minecraft:beehives if entity @e[type=player,distance=..10] run return run function siscu:entities/item_frame/bee_counter/bee_counter

# Shutters #
function siscu:entities/item_frame/shutters/main

# Light Sensor #
execute if predicate siscu:entities/item_frame/light_sensor at @s run function siscu:entities/item_frame/light_sensor