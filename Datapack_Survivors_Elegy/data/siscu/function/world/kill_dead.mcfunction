execute as @e[tag=dead] at @s run tp ~ ~-32 ~
gamerule showDeathMessages false
kill @e[tag=dead,predicate=siscu:locations/check_void]
gamerule showDeathMessages true
execute if entity @e[tag=dead] run schedule function siscu:world/kill_dead 1t