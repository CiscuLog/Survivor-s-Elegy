scoreboard players set @s siscu.item_frame_inv 0
execute if predicate siscu:entities/item_frame/invisible_items run scoreboard players set @s siscu.item_frame_inv 1

execute as @s if score @s[tag=!invisible] siscu.item_frame_inv matches 1 run return run function siscu:entities/item_frame/invisible_item_frame
execute as @s if score @s[tag=invisible] siscu.item_frame_inv matches 0 run function siscu:entities/item_frame/visible_item_frame