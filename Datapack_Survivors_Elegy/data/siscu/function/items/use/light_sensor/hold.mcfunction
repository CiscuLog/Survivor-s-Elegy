advancement revoke @s only siscu:items/use/light_sensor_hold

# mainhand one
execute if predicate siscu:items/light_sensor_mainhand run function siscu:items/use/light_sensor/display {Slot:"weapon.mainhand",Slot_raw:"SelectedItem"}

# offhand one
execute if predicate siscu:items/light_sensor_offhand run function siscu:items/use/light_sensor/display {Slot:"weapon.offhand",Slot_raw:"Inventory[{Slot:-106b}]"}
