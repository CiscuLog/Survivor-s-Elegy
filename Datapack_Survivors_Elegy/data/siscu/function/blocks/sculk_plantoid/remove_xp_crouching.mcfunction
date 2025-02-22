## removing xp from the plantoid
# get player xp level
execute as @p[tag=siscu.plantoid_beating] run execute store result score xp_player siscu.volatile run experience query @s levels

# set xp to remove
# xp_to_remove = 2*level +7
scoreboard players operation xp_player siscu.volatile *= 2 siscu.integer
scoreboard players add xp_player siscu.volatile 7

# remove it from the plantoid
scoreboard players operation xp_plantoid siscu.volatile -= xp_player siscu.volatile
# fix error on both ends
execute if score xp_plantoid siscu.volatile matches ..-1 run scoreboard players operation xp_player siscu.volatile += xp_plantoid siscu.volatile
execute if score xp_plantoid siscu.volatile matches ..-1 run scoreboard players set xp_plantoid siscu.volatile 0
