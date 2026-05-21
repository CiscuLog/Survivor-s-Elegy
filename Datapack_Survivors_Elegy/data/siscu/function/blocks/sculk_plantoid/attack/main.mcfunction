advancement revoke @s only siscu:interactions/sculk_plantoid_hit
tag @s add siscu.plantoid_beating
execute at @s as @n[type=interaction,tag=siscu.sculk_plantoid] if data entity @s attack run tag @s add siscu.plantoid_beaten
execute as @n[type=interaction,tag=siscu.sculk_plantoid] run data remove entity @s attack

# update old plantoid
execute at @s as @n[type=marker,tag=siscu.plantoid_beaten] at @s run function siscu:blocks/sculk_plantoid/update/old_plantoid_to_new

# hitting consquences
execute at @s as @n[type=interaction,tag=siscu.plantoid_beaten] at @s run function siscu:blocks/sculk_plantoid/attack/remove_xp

tag @e[tag=siscu.plantoid_beaten] remove siscu.plantoid_beating
tag @s remove siscu.plantoid_beating