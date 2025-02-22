
execute store success score @s siscu.item_frame_inv if predicate siscu:entities/item_frame/invisible_items

execute as @s if score @s[tag=!siscu.item_frame_invisible] siscu.item_frame_inv matches 1 run return run function siscu:entities/item_frame/invisible_item_frame
execute as @s if score @s[tag=siscu.item_frame_invisible] siscu.item_frame_inv matches 0 run function siscu:entities/item_frame/visible_item_frame