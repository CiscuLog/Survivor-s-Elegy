
advancement revoke @s only siscu:interactions/corpse_hit

tag @s add siscu.hitting_corpse
execute at @s as @e[type=interaction,tag=siscu.player_corpse] if data entity @s attack at @s run function siscu:entities/player_corpse/attack/main
tag @s remove siscu.hitting_corpse
