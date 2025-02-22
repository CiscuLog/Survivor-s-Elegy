
# get day
execute store result score x siscu.volatile run time query day
# remove a day
scoreboard players remove x siscu.volatile 1
execute if score x siscu.volatile matches ..-1 run scoreboard players set x siscu.volatile 0
# convert day to daytime
scoreboard players set y siscu.volatile 24000
scoreboard players operation x siscu.volatile *= y siscu.volatile
# add current daytime
execute store result score y siscu.volatile run time query daytime
scoreboard players operation x siscu.volatile += y siscu.volatile

execute store result storage siscu:volatile x int 1 run scoreboard players get x siscu.volatile
function siscu:world/utils/set_time_macro with storage siscu:volatile

tellraw @s [{"text":"Time set to "},{"score": {"name": "x","objective": "siscu.volatile"}}]