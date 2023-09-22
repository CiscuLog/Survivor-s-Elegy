
execute store result score volatile siscu.volatile run random value 540001..540006

execute store result storage siscu:volatile Randomiser int 1 run scoreboard players get volatile siscu.volatile

data modify entity @s Item.tag.CustomModelData set from storage siscu:volatile Randomiser

tag @s remove siscu.piglin_banner