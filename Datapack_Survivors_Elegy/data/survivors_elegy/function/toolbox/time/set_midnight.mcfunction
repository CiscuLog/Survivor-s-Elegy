
execute store result score x siscu.volatile run time query day
scoreboard players set y siscu.volatile 24000
scoreboard players operation x siscu.volatile *= y siscu.volatile
scoreboard players add x siscu.volatile 18000

execute store result storage siscu:volatile x int 1 run scoreboard players get x siscu.volatile
function siscu:world/utils/set_time_macro with storage siscu:volatile

tellraw @s [{"text":"Time set to "},{"score": {"name": "x","objective": "siscu.volatile"}}]