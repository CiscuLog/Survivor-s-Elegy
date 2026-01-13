
# Only trigger if zombified
scoreboard players set x siscu.volatile 0
execute if entity @s[tag=siscu.zombifying] run scoreboard players add x siscu.volatile 1
execute if entity @s[tag=siscu.zombie] run scoreboard players add x siscu.volatile 1
execute if score x siscu.volatile matches 0 run return run advancement revoke @s only siscu:entities/cure_player

function siscu:entities/phage/unzombify/player_cure_text

tag @s remove siscu.zombie
tag @s remove siscu.zombifying
effect clear @s unluck
attribute @s minecraft:attack_damage base set 1.0
attribute @s minecraft:movement_speed base set 0.1
#gamemode survival @s[gamemode=adventure]
attribute @s block_break_speed base reset

execute if entity @s[advancements={siscu:entities/cure_player=true}] at @s run function siscu:entities/phage/unzombify/player_cure_effects

advancement revoke @s only siscu:entities/cure_player

scoreboard players reset @s siscu.zombifying

attribute @s minecraft:max_health base reset

execute at @s anchored eyes positioned ^ ^ ^ run particle entity_effect{color:[0.752,0.643,0.302,1]} ~ ~-0.5 ~ 0 0.5 0 0.3 20 normal
