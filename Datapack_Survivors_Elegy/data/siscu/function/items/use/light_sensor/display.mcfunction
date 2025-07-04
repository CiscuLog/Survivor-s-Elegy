
$data merge storage siscu:volatile {Slot:"$(Slot)",Slot_raw:"$(Slot_raw)"}

# get CMD
$execute store result score x siscu.volatile run data get entity @s $(Slot_raw).components."minecraft:custom_model_data".floats[0]

# check new light level
function siscu:items/use/light_sensor/light_level

# set new CMD
execute if score x siscu.volatile matches 16..31 run scoreboard players operation y siscu.volatile *= -1 siscu.integer
execute if score x siscu.volatile matches 16..31 run scoreboard players add y siscu.volatile 31

# return if CMD (light level) hasn't changed
execute if score x siscu.volatile = y siscu.volatile run return 0

# insert data
execute store result storage siscu:volatile x int 1 run scoreboard players get y siscu.volatile
function siscu:items/use/light_sensor/put_data with storage siscu:volatile
# stop item frame sounds
stopsound @a * minecraft:entity.item_frame.add_item
stopsound @a * minecraft:entity.glow_item_frame.add_item
