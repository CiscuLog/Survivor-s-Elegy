advancement revoke @s only siscu:items/use/light_sensor_hold

# mainhand one
execute if predicate siscu:items/light_sensor_mainhand at @s positioned ~ ~0.1 ~ run function siscu:items/use/light_sensor/display {Slot:"weapon.mainhand",Slot_raw:"SelectedItem"}

# offhand one
execute if predicate siscu:items/light_sensor_offhand at @s positioned ~ ~0.1 ~ run function siscu:items/use/light_sensor/display {Slot:"weapon.offhand",Slot_raw:"equipment.offhand"}
