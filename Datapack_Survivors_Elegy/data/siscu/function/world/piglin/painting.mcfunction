
execute store result score volatile siscu.volatile run random value 540020..540027

execute store result storage siscu:volatile Randomiser int 1 run scoreboard players get volatile siscu.volatile

data modify entity @s Item.components."minecraft:custom_model_data" set from storage siscu:volatile Randomiser

tag @s remove siscu.piglin_painting