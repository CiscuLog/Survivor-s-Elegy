tag @s remove zombie
tag @s remove zombifying
tag @s remove zombifying_strong
effect clear @s unluck
attribute @s minecraft:generic.attack_damage base set 1.0
attribute @s minecraft:generic.movement_speed base set 0.1
gamemode survival @s[gamemode=adventure]

execute if entity @s[advancements={siscu:entities/cure_player=true}] at @s run function siscu:entities/zombifying/cure_player

scoreboard players reset @s siscu.zombifying

advancement revoke @s only siscu:entities/cure_player

attribute @s minecraft:generic.max_health base set 20