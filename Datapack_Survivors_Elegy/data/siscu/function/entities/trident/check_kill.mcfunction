execute as @e[type=trident,predicate=siscu:locations/check_void] run data merge entity @s {DealtDamage:1b}

execute if entity @e[type=trident] run schedule function siscu:entities/trident/check_kill 4t