
advancement revoke @s only siscu:items/update/light_sensor_cursor
execute unless items entity @s player.cursor raw_copper[custom_model_data] run return 0

execute at @s run playsound siscu_se:item.light_sensor.switch player @s ~ ~ ~ 1 1.7
item modify entity @s player.cursor {function:"set_components",components:{"!custom_model_data":{}}}
