scoreboard players set @s siscu.light_sensor_cooldown 5
advancement revoke @s only siscu:items/use/light_sensor_cooldown
playsound siscu_se:item.light_sensor.switch player @s ~ ~ ~ 1 1.7

scoreboard players set x siscu.volatile 0
scoreboard players set y siscu.volatile 0
execute if predicate siscu:items/light_sensor_mainhand run scoreboard players set x siscu.volatile 1

execute if score x siscu.volatile matches 1 run data merge storage siscu:volatile {Slot:"weapon.mainhand"}
execute unless score x siscu.volatile matches 1 run data merge storage siscu:volatile {Slot:"weapon.offhand"}

execute if score x siscu.volatile matches 1 store result score x siscu.volatile run data get entity @s SelectedItem.components.minecraft:custom_model_data
execute if score x siscu.volatile matches 0 store result score x siscu.volatile run data get entity @s Inventory[{Slot:-106b}].components.minecraft:custom_model_data

execute if score x siscu.volatile matches 540100..540115 run scoreboard players set y siscu.volatile 1
execute if score y siscu.volatile matches 1 run scoreboard players add x siscu.volatile 16
execute if score y siscu.volatile matches 0 run scoreboard players remove x siscu.volatile 16
execute store result storage siscu:volatile x int 1 run scoreboard players get x siscu.volatile
function siscu:items/use/light_sensor_put_data with storage siscu:volatile