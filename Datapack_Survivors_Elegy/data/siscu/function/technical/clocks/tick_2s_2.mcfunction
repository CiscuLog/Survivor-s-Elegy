
## Player Respawn ##
execute as @a if score @s siscu.death matches 1.. at @s run function siscu:entities/player/death/main

## Breach Ambient Effects ##
execute as @e[type=marker,tag=siscu.breach] run function siscu:systems/phasing/player_breach/breach_effects

## Worldgen Starters
execute as @e[type=item_frame,tag=siscu.worldgen] at @s if loaded ~ ~ ~ run function siscu:world/worldgen_entity_starters