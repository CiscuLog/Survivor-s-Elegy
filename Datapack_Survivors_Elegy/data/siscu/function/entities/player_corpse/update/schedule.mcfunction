
execute as @e[type=interaction,tag=siscu.player_corpse] at @s if function siscu:entities/player_corpse/update/maintain run schedule function siscu:entities/player_corpse/update/schedule 1s