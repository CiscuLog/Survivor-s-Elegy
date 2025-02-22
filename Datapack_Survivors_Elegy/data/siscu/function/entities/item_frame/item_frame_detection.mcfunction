scoreboard players set @s siscu.item_frame_inv 0

execute if predicate siscu:entities/item_frame/multicheck_items run tag @s add siscu.item_frame_check_again
execute unless predicate siscu:entities/item_frame/multicheck_items run tag @s remove siscu.item_frame_check_again
execute if predicate siscu:entities/item_frame/invisible_items run scoreboard players set @s siscu.item_frame_inv 1
execute if predicate siscu:entities/item_frame/fixed_items if predicate siscu:entities/item_frame/is_rotated run function siscu:entities/item_frame/fix_rotation

execute as @s if score @s[tag=!siscu.item_frame_invisible] siscu.item_frame_inv matches 1 run function siscu:entities/item_frame/invisible_item_frame
execute as @s if score @s[tag=siscu.item_frame_invisible] siscu.item_frame_inv matches 0 run function siscu:entities/item_frame/visible_item_frame

# Bee Counter #
execute if items entity @s contents raw_copper[minecraft:item_model="siscu_se:bee_counter"] at @s if block ^ ^ ^-1 #minecraft:beehives if entity @e[type=player,distance=..10] run return run function siscu:entities/item_frame/bee_counter/bee_counter

# Shutters #
function siscu:entities/item_frame/shutters/main

# Light Sensor #
execute if predicate siscu:entities/item_frame/light_sensor at @s run function siscu:entities/item_frame/light_sensor