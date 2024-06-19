execute as @e[tag=dead] at @s run tp ~ ~-32 ~
kill @e[tag=dead,predicate=siscu:locations/check_void]
execute if entity @e[tag=dead,predicate=!siscu:locations/check_void] run schedule function siscu:world/kill_dead 1t