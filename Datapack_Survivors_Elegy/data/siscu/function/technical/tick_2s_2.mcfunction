
## Zombifying ##
execute as @e[predicate=siscu:entities/has_phage] if score phage_enabled siscu.integer matches 1 run function siscu:entities/zombifying/start_zombifying
## Zombified Player Burning ##
execute as @a[tag=zombie,gamemode=!creative] at @s if predicate siscu:utils/light_level/lvl15 unless predicate siscu:entities/is_on_fire run function siscu:entities/player/burn_player

## Player Respawn ##
execute as @a if score @s siscu.death matches 1.. at @s run function siscu:entities/player/death

## Breach Ambient Effects ##
execute as @e[type=marker,tag=breach] run function siscu:world/breach_effects
