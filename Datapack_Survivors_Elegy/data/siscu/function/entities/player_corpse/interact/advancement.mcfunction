
advancement revoke @s only siscu:interactions/corpse

tag @s add siscu.interacting_corpse
execute as @e[type=interaction,tag=siscu.player_corpse] if data entity @s interaction run function siscu:entities/player_corpse/interact/main
tag @s remove siscu.interacting_corpse
