
data merge entity @s {DeathLootTable:"siscu:entities/empty"}
tp ~ ~-32 ~
execute at @s run kill @s[predicate=siscu:locations/check_void]
execute if entity @s run schedule function siscu:world/kill_dead 1t
