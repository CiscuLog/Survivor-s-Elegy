scoreboard players set @s siscu.item_frame_inv 0

execute if predicate siscu:entities/item_frame/multicheck_items run tag @s add check_again
execute if predicate siscu:entities/item_frame/invisible_items run scoreboard players set @s siscu.item_frame_inv 1
execute if predicate siscu:entities/item_frame/fixed_items if predicate siscu:entities/item_frame/is_rotated run function siscu:entities/item_frame/fix_rotation

# Bee Counter #
execute if entity @s[nbt={Item:{id: "minecraft:raw_copper", tag:{CustomModelData:540000}}}] if entity @e[type=player,distance=..10] run execute at @s[type=#siscu:item_frames] run function siscu:entities/item_frame/bee_counter/bee_counter

# Shutters #
## unrolled
execute if entity @s[nbt={Item:{id: "minecraft:stick", tag:{CustomModelData:548103}}}] if predicate siscu:entities/item_frame/is_rotated run function siscu:entities/item_frame/shutters/roll_shutters
## rolled
execute if entity @s[nbt={Item:{id: "minecraft:stick", tag:{CustomModelData:548104}}}] if predicate siscu:entities/item_frame/is_rotated run function siscu:entities/item_frame/shutters/unroll_shutters

execute as @s if score @s[tag=!invisible] siscu.item_frame_inv matches 1 run function siscu:entities/item_frame/invisible_item_frame
execute as @s if score @s[tag=invisible] siscu.item_frame_inv matches 0 run function siscu:entities/item_frame/visible_item_frame