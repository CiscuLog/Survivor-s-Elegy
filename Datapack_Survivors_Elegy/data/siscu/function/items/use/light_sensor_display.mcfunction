advancement revoke @s only siscu:items/use/light_sensor_hold

scoreboard players set x siscu.volatile 0
execute if predicate siscu:items/light_sensor_mainhand run scoreboard players set x siscu.volatile 1

execute if score x siscu.volatile matches 1 run data merge storage siscu:volatile {Slot:"weapon.mainhand"}
execute unless score x siscu.volatile matches 1 run data merge storage siscu:volatile {Slot:"weapon.offhand"}

execute if score x siscu.volatile matches 1 store result score x siscu.volatile run data get entity @s SelectedItem.components.minecraft:custom_model_data
execute if score x siscu.volatile matches 0 store result score x siscu.volatile run data get entity @s Inventory[{Slot:-106b}].components.minecraft:custom_model_data

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

execute if score x siscu.volatile matches 540116..540131 run scoreboard players operation y siscu.volatile *= -1 siscu.integer
execute if score x siscu.volatile matches 540100..540115 run scoreboard players add y siscu.volatile 540100
execute if score x siscu.volatile matches 540116..540131 run scoreboard players add y siscu.volatile 540131

execute store result storage siscu:volatile x int 1 run scoreboard players get y siscu.volatile
function siscu:items/use/light_sensor_put_data with storage siscu:volatile