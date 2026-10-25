
execute if score @s siscu.withering < withering_timer siscu.integer run return 0

scoreboard players operation x siscu.volatile = @s siscu.withering
execute store result storage siscu:volatile x int 1 run scoreboard players operation x siscu.volatile /= withering_timer siscu.integer
execute if score x siscu.volatile matches 1.. run function siscu:systems/withering/damage_macro with storage siscu:volatile

execute at @s run particle minecraft:smoke ~ ~1.6 ~ 0 0 0 0.05 15

advancement grant @s only siscu:story/withering_damage
