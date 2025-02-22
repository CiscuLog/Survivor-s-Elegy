
execute unless score rotting siscu.integer matches 1 run return 0

execute if entity @s[tag=!siscu.rot_checked] run function siscu:entities/rotting_mobs/assign_initial_rot
execute if score rotting siscu.integer matches 1 as @e[tag=siscu.rot_checked] run function siscu:entities/rotting_mobs/convert