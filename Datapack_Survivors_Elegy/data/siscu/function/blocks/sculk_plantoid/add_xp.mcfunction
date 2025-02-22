scoreboard players set max_xp siscu.volatile 30000
execute store result score xp_plantoid siscu.volatile run data get entity @s data.Xp
execute as @p[tag=siscu.plantoid_feeding] run execute store result score xp_player siscu.volatile run experience query @s levels

# return if plantoid is full
execute if score xp_plantoid siscu.volatile >= max_xp siscu.volatile run return 0
# return if player has no Xp
execute if score xp_player siscu.volatile matches 0 run return 0

## add xp: 
# set xp_plantoid and remove player xp
function siscu:blocks/sculk_plantoid/add_xp_standing

execute store result storage siscu:volatile XpStored int 1 run scoreboard players get xp_plantoid siscu.volatile

data modify entity @s data.Xp set from storage siscu:volatile XpStored

# visual effects
execute as @n[tag=siscu.sculk_plantoid,type=item_display] run function siscu:blocks/sculk_plantoid/update_texture
playsound minecraft:block.sculk.spread block @a ~ ~ ~
particle sculk_charge_pop ~ ~1.3 ~ 0.1 0.1 0.1 0 2 normal