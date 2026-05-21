
# Tool for summoning random corpses
advancement revoke @s only siscu:items/use/corpse_spawn

execute at @s as @n[type=#siscu:item_frames,tag=siscu.player_corpse] at @s align xyz positioned ~0.5 ~ ~0.5 run function siscu:entities/player_corpse/summon/main
