scoreboard players set @s siscu.item_frame_inv 0

execute if predicate siscu:entities/item_frame/multicheck_items run tag @s add check_again
execute unless predicate siscu:entities/item_frame/multicheck_items run tag @s remove check_again
execute if predicate siscu:entities/item_frame/invisible_items run scoreboard players set @s siscu.item_frame_inv 1
execute if predicate siscu:entities/item_frame/fixed_items if predicate siscu:entities/item_frame/is_rotated run function siscu:entities/item_frame/fix_rotation

execute as @s if score @s[tag=!invisible] siscu.item_frame_inv matches 1 run function siscu:entities/item_frame/invisible_item_frame
execute as @s if score @s[tag=invisible] siscu.item_frame_inv matches 0 run function siscu:entities/item_frame/visible_item_frame

# Bee Counter #
execute if entity @s[nbt={Item:{id: "minecraft:raw_copper",components:{"minecraft:custom_model_data":540000}}}] if entity @e[type=player,distance=..10] run execute at @s[type=#siscu:item_frames] run return run function siscu:entities/item_frame/bee_counter/bee_counter

# Shutters #
## unrolled
execute if entity @s[nbt={Item:{id: "minecraft:stick",components:{"minecraft:custom_model_data":548103}}}] if predicate siscu:entities/item_frame/is_not_unrolled run function siscu:entities/item_frame/shutters/roll_shutters
## rolled
execute if entity @s[nbt={Item:{id: "minecraft:stick",components:{"minecraft:custom_model_data":548104}}}] if predicate siscu:entities/item_frame/is_not_rolled run function siscu:entities/item_frame/shutters/unroll_shutters

# Light Sensor #
execute if predicate siscu:entities/item_frame/light_sensor at @s run function siscu:entities/item_frame/light_sensor