
# retrieve 1 xp level following the 1-16 xp formula
# xp_to_remove = 2*level_to_acquire +7

scoreboard players set xp_plantoid siscu.volatile 2
scoreboard players operation xp_plantoid siscu.volatile *= xp_player siscu.volatile
scoreboard players add xp_plantoid siscu.volatile 7

execute store result storage siscu:volatile XpPlayer int -1 run scoreboard players get xp_plantoid siscu.volatile

function siscu:blocks/sculk_plantoid/add_player_xp_macro with storage siscu:volatile
