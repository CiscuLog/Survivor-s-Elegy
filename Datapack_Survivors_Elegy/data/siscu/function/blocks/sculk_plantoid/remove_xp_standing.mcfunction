scoreboard players remove xp_plantoid siscu.volatile 1395
execute if score xp_plantoid siscu.volatile matches ..-1 run scoreboard players operation xp_player siscu.volatile += xp_plantoid siscu.volatile
execute if score xp_plantoid siscu.volatile matches ..-1 run scoreboard players set xp_plantoid siscu.volatile 0
