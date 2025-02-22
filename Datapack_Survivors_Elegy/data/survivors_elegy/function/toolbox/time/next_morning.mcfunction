
# get day
execute store result score x siscu.volatile run time query day
# add 1 day if it's already morning
execute store result score y siscu.volatile run time query daytime
execute if score y siscu.volatile matches 23451.. run scoreboard players add x siscu.volatile 1
# convert day to daytime scale
scoreboard players set y siscu.volatile 24000
scoreboard players operation x siscu.volatile *= y siscu.volatile
# add time to the dawn (daytime 23450)
scoreboard players add x siscu.volatile 23450

execute store result storage siscu:volatile x int 1 run scoreboard players get x siscu.volatile
function siscu:world/utils/set_time_macro with storage siscu:volatile

tellraw @s [{"text":"Time set to "},{"score": {"name": "x","objective": "siscu.volatile"}}]