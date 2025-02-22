execute store result score xp_plantoid siscu.volatile run data get entity @s data.Xp
scoreboard players set xp_player siscu.volatile 1395

# return if plantoid is empty
execute if score xp_plantoid siscu.volatile matches 0 run return 0

execute if entity @n[tag=siscu.plantoid_beating,predicate=!siscu:entities/is_sneaking] run function siscu:blocks/sculk_plantoid/remove_xp_standing
execute if entity @n[tag=siscu.plantoid_beating,predicate=siscu:entities/is_sneaking] run function siscu:blocks/sculk_plantoid/remove_xp_crouching

execute store result storage siscu:volatile XpStored int 1 run scoreboard players get xp_plantoid siscu.volatile
execute store result storage siscu:volatile XpPlayer int 1 run scoreboard players get xp_player siscu.volatile

data modify entity @s data.Xp set from storage siscu:volatile XpStored
execute as @p[tag=siscu.plantoid_beating] run function siscu:blocks/sculk_plantoid/add_player_xp_macro with storage siscu:volatile

# visual effects
execute as @n[tag=siscu.sculk_plantoid,type=item_display] run function siscu:blocks/sculk_plantoid/update_texture
playsound minecraft:block.sculk.charge block @a ~ ~ ~
particle sculk_soul ~ ~1.3 ~ 0.2 0.2 0.2 0 1 normal