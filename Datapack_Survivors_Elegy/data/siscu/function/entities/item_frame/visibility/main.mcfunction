
execute if predicate siscu:entities/item_frame/invisible_items run return run execute if entity @s[tag=!siscu.item_frame_invisible] run function siscu:entities/item_frame/visibility/set_invisible

execute if entity @s[tag=siscu.item_frame_invisible] run function siscu:entities/item_frame/visibility/set_visible
