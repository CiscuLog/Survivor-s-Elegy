
execute store result score x siscu.volatile run time query day
execute store result score y siscu.volatile run time query daytime
execute unless score y siscu.volatile matches 23450.. run scoreboard players remove x siscu.volatile 1
execute if score x siscu.volatile matches ..-1 run scoreboard players set x siscu.volatile 0
scoreboard players set y siscu.volatile 24000
scoreboard players operation x siscu.volatile *= y siscu.volatile
scoreboard players add x siscu.volatile 23450

execute store result storage siscu:volatile x int 1 run scoreboard players get x siscu.volatile
function siscu:world/utils/set_time_macro with storage siscu:volatile

tellraw @s [{"text":"Time set to "},{"score": {"name": "x","objective": "siscu.volatile"}}]