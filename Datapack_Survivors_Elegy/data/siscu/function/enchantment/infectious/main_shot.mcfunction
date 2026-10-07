
# start zombification if the player is not zombifying to begin with
execute if entity @s[type=#siscu:phage_immune] run return 0
execute if entity @s[tag=siscu.zombifying_invulnerable] run return 0
execute if entity @s[tag=siscu.zombie] run return 0 
execute if entity @s[tag=smithed.entity] run return 0

execute at @s anchored eyes positioned ^ ^-0.5 ^ run particle entity_effect{color:[0.752,0.643,0.302,1]} ~ ~ ~ 0 0.5 0 0.3 5 normal

function siscu:entities/phage/buildup/start_zombification {value:60}