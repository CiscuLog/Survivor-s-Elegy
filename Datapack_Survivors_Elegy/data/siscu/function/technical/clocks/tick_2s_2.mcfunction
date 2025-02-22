
## Zombifying ##
execute if score phage_enabled siscu.integer matches 1 as @e[type=!#siscu:phage_immune,predicate=siscu:entities/has_phage,tag=!smithed.entity,tag=!siscu.zombifying,tag=!siscu.zombifying_invulnerable] run function siscu:entities/zombifying/start_zombifying
## Zombified Player Burning ##
execute as @a[tag=siscu.zombie,gamemode=!creative] at @s if predicate siscu:utils/light_level/lvl15 unless predicate siscu:entities/is_on_fire run function siscu:entities/player/burn_player

## Player Respawn ##
execute as @a if score @s siscu.death matches 1.. at @s run function siscu:entities/player/death

## Breach Ambient Effects ##
execute as @e[type=marker,tag=siscu.breach] run function siscu:world/breach_effects
