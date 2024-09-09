advancement revoke @s only siscu:entities/sculk_plantoid_interact
tag @s add siscu.plantoid_feeding
execute if items entity @s weapon.mainhand glass_bottle as @e[type=interaction,tag=siscu.sculk_plantoid] if data entity @s interaction at @s as @n[type=marker,tag=siscu.sculk_plantoid] run function siscu:entities/sculk_plantoid/fill_bottle
execute unless items entity @s weapon.mainhand glass_bottle as @e[type=interaction,tag=siscu.sculk_plantoid] if data entity @s interaction at @s as @n[type=marker,tag=siscu.sculk_plantoid] run function siscu:entities/sculk_plantoid/add_xp
execute as @e[type=interaction,tag=siscu.sculk_plantoid] if data entity @s interaction run data remove entity @s interaction
tag @s remove siscu.plantoid_feeding