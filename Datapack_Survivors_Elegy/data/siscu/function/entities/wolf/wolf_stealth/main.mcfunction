execute on owner unless score @s siscu.grass_stealth matches 1.. run return 0
execute at @s unless block ~ ~-0.5 ~ #siscu:wolf_stealth_ground run return 0
effect give @s invisibility 1 0 true
execute at @s run function siscu:entities/wolf/wolf_stealth/grass_particles