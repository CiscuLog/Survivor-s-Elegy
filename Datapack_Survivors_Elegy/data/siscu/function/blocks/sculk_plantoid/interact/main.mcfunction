advancement revoke @s only siscu:interactions/sculk_plantoid
tag @s add siscu.plantoid_interacting
execute as @e[type=interaction,tag=siscu.sculk_plantoid] if data entity @s interaction run tag @s add siscu.plantoid_interacted
execute as @e[type=interaction,tag=siscu.sculk_plantoid,tag=siscu.plantoid_interacted] run data remove entity @s interaction

# update old plantoid
execute as @n[type=marker,tag=siscu.sculk_plantoid] at @s run function siscu:blocks/sculk_plantoid/update/old_plantoid_to_new

execute if items entity @s weapon.mainhand glass_bottle run tag @s add siscu.sculk_bottling

execute unless items entity @s weapon.mainhand glass_bottle as @n[type=interaction,tag=siscu.plantoid_interacted] at @s run function siscu:blocks/sculk_plantoid/interact/add_xp
execute if items entity @s weapon.mainhand glass_bottle as @e[type=interaction,tag=siscu.sculk_plantoid] at @s run function siscu:blocks/sculk_plantoid/interact/fill_bottle
tag @e[tag=siscu.plantoid_interacted] remove siscu.plantoid_interacted
tag @s remove siscu.sculk_bottling
tag @s remove siscu.plantoid_interacting