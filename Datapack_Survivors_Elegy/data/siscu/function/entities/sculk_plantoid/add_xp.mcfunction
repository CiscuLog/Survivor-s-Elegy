scoreboard players set max_xp siscu.volatile 30000
execute store result score xp_plantoid siscu.volatile run data get entity @s data.Xp
execute as @p[tag=siscu.plantoid_feeding] run execute store result score xp_player siscu.volatile run experience query @s levels

# return if plantoid is full
execute if score xp_plantoid siscu.volatile >= max_xp siscu.volatile run return 0

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

execute store result storage siscu:volatile XpStored int 1 run scoreboard players get xp_plantoid siscu.volatile

data modify entity @s data.Xp set from storage siscu:volatile XpStored

# visual effects
execute as @e[tag=siscu.sculk_plantoid,type=item_display,limit=1,sort=nearest] run function siscu:entities/sculk_plantoid/update_texture
playsound minecraft:block.sculk.spread block @a ~ ~ ~
particle sculk_charge_pop ~ ~1.3 ~ 0.1 0.1 0.1 0 2 normal