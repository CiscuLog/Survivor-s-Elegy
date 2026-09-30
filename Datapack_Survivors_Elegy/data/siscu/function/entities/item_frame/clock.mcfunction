
execute if entity @s[tag=smithed.entity,tag=!siscu.item_frame_claimed] run return fail
# invisibility
execute if entity @s[tag=siscu.item_frame_invisible] run function siscu:entities/item_frame/visibility/main

# multicheck
#execute if entity @s[tag=!siscu.item_frame_check_again] run return 0
# return if conditions are not met
execute unless predicate siscu:entities/item_frame/multicheck_items run return run tag @s[tag=siscu.item_frame_check_again] remove siscu.item_frame_check_again
# Bee Counter #
execute if items entity @s contents *[minecraft:custom_data~{SE_data:{id:"siscu:bee_counter"}}] at @s if block ^ ^ ^-1 #minecraft:beehives if entity @e[type=player,distance=..10] run return run function siscu:entities/item_frame/bee_counter/bee_counter

# Light Sensor #
execute if items entity @s contents *[minecraft:custom_data~{SE_data:{id:"siscu:light_sensor"}}] at @s run return run function siscu:entities/item_frame/light_sensor
