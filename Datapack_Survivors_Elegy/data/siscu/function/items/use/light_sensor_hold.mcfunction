advancement revoke @s only siscu:items/use/light_sensor_hold

execute if predicate siscu:items/light_sensor_mainhand run data merge storage siscu:volatile {Slot:"weapon.mainhand"}
execute if predicate siscu:items/light_sensor_mainhand run function siscu:items/use/light_sensor_display with storage siscu:volatile

execute if predicate siscu:items/light_sensor_offhand run data merge storage siscu:volatile {Slot:"weapon.offhand"}
execute if predicate siscu:items/light_sensor_offhand run function siscu:items/use/light_sensor_display with storage siscu:volatile