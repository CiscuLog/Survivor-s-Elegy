
scoreboard players add @e[type=#siscu:item_frames,tag=siscu.shutters_moving] siscu.volatile 1
execute as @e[type=#siscu:item_frames,tag=siscu.shutters_moving,scores={siscu.volatile=1..}] run function siscu:entities/item_frame/shutters/reset_shutters

execute if entity @e[type=#siscu:item_frames,tag=siscu.shutters_moving] run schedule function siscu:entities/item_frame/shutters/moving_schedule 1t