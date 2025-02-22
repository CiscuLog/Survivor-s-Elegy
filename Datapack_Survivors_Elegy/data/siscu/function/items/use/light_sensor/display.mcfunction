
$data merge storage siscu:volatile {Slot:"$(Slot)",Slot_raw:"$(Slot_raw)"}

# get CMD
$execute store result score x siscu.volatile run data get entity @s $(Slot_raw).components."minecraft:custom_model_data".floats[0]

# check new light level
execute if predicate siscu:utils/light_level/lvl15 run scoreboard players set y siscu.volatile 15
execute if predicate siscu:utils/light_level/lvl14 run scoreboard players set y siscu.volatile 14
execute if predicate siscu:utils/light_level/lvl13 run scoreboard players set y siscu.volatile 13
execute if predicate siscu:utils/light_level/lvl12 run scoreboard players set y siscu.volatile 12
execute if predicate siscu:utils/light_level/lvl11 run scoreboard players set y siscu.volatile 11
execute if predicate siscu:utils/light_level/lvl10 run scoreboard players set y siscu.volatile 10
execute if predicate siscu:utils/light_level/lvl9 run scoreboard players set y siscu.volatile 9
execute if predicate siscu:utils/light_level/lvl8 run scoreboard players set y siscu.volatile 8
execute if predicate siscu:utils/light_level/lvl7 run scoreboard players set y siscu.volatile 7
execute if predicate siscu:utils/light_level/lvl6 run scoreboard players set y siscu.volatile 6
execute if predicate siscu:utils/light_level/lvl5 run scoreboard players set y siscu.volatile 5
execute if predicate siscu:utils/light_level/lvl4 run scoreboard players set y siscu.volatile 4
execute if predicate siscu:utils/light_level/lvl3 run scoreboard players set y siscu.volatile 3
execute if predicate siscu:utils/light_level/lvl2 run scoreboard players set y siscu.volatile 2
execute if predicate siscu:utils/light_level/lvl1 run scoreboard players set y siscu.volatile 1
execute if predicate siscu:utils/light_level/lvl0 run scoreboard players set y siscu.volatile 0

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
