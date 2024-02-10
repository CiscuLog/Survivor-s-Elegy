scoreboard players operation siscu.damage_amount siscu.volatile += siscu.added_damage siscu.volatile
scoreboard players set siscu.added_damage siscu.volatile 0
scoreboard players operation siscu.damage_amount siscu.volatile -= siscu.previous_damage siscu.volatile
execute if score siscu.damage_amount siscu.volatile matches ..-1 run scoreboard players operation siscu.damage siscu.volatile += siscu.damage_amount siscu.volatile
execute if score siscu.damage siscu.volatile matches ..-1 run scoreboard players set siscu.damage siscu.volatile 0

scoreboard players add siscu.damage siscu.volatile 1
scoreboard players operation siscu.real_damage siscu.volatile *= siscu.damage siscu.volatile
scoreboard players operation siscu.real_damage siscu.volatile /= siscu.durability siscu.volatile