# add xp
execute if score xp_player siscu.volatile matches 30.. run scoreboard players add xp_plantoid siscu.volatile 1395
execute if score xp_player siscu.volatile matches 30.. run experience add @p[tag=siscu.plantoid_feeding] -1395

execute if score xp_player siscu.volatile matches 10..29 run scoreboard players add xp_plantoid siscu.volatile 160
execute if score xp_player siscu.volatile matches 10..29 run experience add @p[tag=siscu.plantoid_feeding] -160

execute if score xp_player siscu.volatile matches 1..9 run scoreboard players add xp_plantoid siscu.volatile 7
execute if score xp_player siscu.volatile matches 1..9 run experience add @p[tag=siscu.plantoid_feeding] -7

execute if score xp_player siscu.volatile matches 0 store result score xp_player2 siscu.volatile run experience query @p[tag=siscu.plantoid_feeding] points
execute if score xp_player siscu.volatile matches 0 run scoreboard players operation xp_plantoid siscu.volatile += xp_player2 siscu.volatile
execute if score xp_player siscu.volatile matches 0 if score xp_player2 siscu.volatile matches 0 run return 0
execute if score xp_player siscu.volatile matches 0 run experience set @p[tag=siscu.plantoid_feeding] 0 points