execute at @s as @e[type=item_frame,distance=..10,tag=!global.ignore] run function siscu:entities/item_frame/item_frame_detection
execute at @s as @e[type=glow_item_frame,distance=..10,tag=!global.ignore] run function siscu:entities/item_frame/item_frame_detection
advancement revoke @s only siscu:entities/item_frame_interaction