
## Item Frame Behav ##
execute as @e[type=#siscu:item_frames,tag=invisible] at @s run function siscu:entities/item_frame/item_frame_visibility
execute as @e[type=#siscu:item_frames,tag=check_again] at @s run function siscu:entities/item_frame/custom_items

## Zombifying ##
execute as @e[tag=zombifying] if score phage_enabled siscu.integer matches 1 at @s run function siscu:entities/zombifying/clock

function siscu:technical/tick_1s_schedule