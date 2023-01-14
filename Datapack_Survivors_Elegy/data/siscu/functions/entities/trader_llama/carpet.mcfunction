# Tag the entity as checked

tag @s add llama_checked

# Run the randomiser

execute store result score llama_color siscu.volatile run loot spawn ~ ~ ~ loot siscu:gameplay/randomiser_llama
execute if predicate siscu:utils/45_percent run scoreboard players add llama_color siscu.volatile 16

execute if score llama_color siscu.volatile matches 0 run data merge entity @s {DecorItem:{id: "minecraft:white_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 1 run data merge entity @s {DecorItem:{id: "minecraft:orange_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 2 run data merge entity @s {DecorItem:{id: "minecraft:magenta_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 3 run data merge entity @s {DecorItem:{id: "minecraft:light_blue_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 4 run data merge entity @s {DecorItem:{id: "minecraft:yellow_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 5 run data merge entity @s {DecorItem:{id: "minecraft:lime_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 6 run data merge entity @s {DecorItem:{id: "minecraft:pink_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 7 run data merge entity @s {DecorItem:{id: "minecraft:gray_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 8 run data merge entity @s {DecorItem:{id: "minecraft:light_gray_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 9 run data merge entity @s {DecorItem:{id: "minecraft:cyan_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 10 run data merge entity @s {DecorItem:{id: "minecraft:purple_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 11 run data merge entity @s {DecorItem:{id: "minecraft:blue_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 12 run data merge entity @s {DecorItem:{id: "minecraft:brown_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 13 run data merge entity @s {DecorItem:{id: "minecraft:green_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 14 run data merge entity @s {DecorItem:{id: "minecraft:red_carpet",Count: 1b}}
execute if score llama_color siscu.volatile matches 15 run data merge entity @s {DecorItem:{id: "minecraft:black_carpet",Count: 1b}}