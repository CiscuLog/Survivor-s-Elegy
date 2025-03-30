tag @s remove siscu.zombie
tag @s remove siscu.zombifying
effect clear @s unluck
attribute @s minecraft:attack_damage base set 1.0
attribute @s minecraft:movement_speed base set 0.1
#gamemode survival @s[gamemode=adventure]
attribute @s block_break_speed base reset

execute if entity @s[advancements={siscu:entities/cure_player=true}] at @s run function siscu:entities/zombifying/cure_player

scoreboard players reset @s siscu.zombifying

advancement revoke @s only siscu:entities/cure_player

attribute @s minecraft:max_health base reset