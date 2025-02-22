execute as @e[tag=siscu.dead] at @s run tp ~ ~-32 ~
gamerule showDeathMessages false
kill @e[tag=siscu.dead,predicate=siscu:locations/check_void]
gamerule showDeathMessages true
execute if entity @e[tag=siscu.dead] run schedule function siscu:world/kill_dead 1t