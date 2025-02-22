advancement revoke @s only siscu:entities/sculk_plantoid_hit
tag @s add siscu.plantoid_beating
execute as @e[type=interaction,tag=siscu.sculk_plantoid] if data entity @s attack at @s as @n[type=marker,tag=siscu.sculk_plantoid] run function siscu:blocks/sculk_plantoid/remove_xp
execute as @e[type=interaction,tag=siscu.sculk_plantoid] if data entity @s attack run data remove entity @s attack
tag @s remove siscu.plantoid_beating