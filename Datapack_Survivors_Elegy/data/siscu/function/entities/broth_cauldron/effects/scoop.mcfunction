
particle minecraft:splash ~ ~0.5 ~ 0.3 0 0.3 0.2 100

execute if score x siscu.broth_data matches 3 run return run playsound minecraft:item.bottle.fill player @a ~ ~ ~
execute if score x siscu.broth_data matches 2 run return run playsound minecraft:item.bucket.fill player @a ~ ~ ~ 1 2
playsound siscu_se:item.broth.scoop_bowl player @a ~ ~ ~
