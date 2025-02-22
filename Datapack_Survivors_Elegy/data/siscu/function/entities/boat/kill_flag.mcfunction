particle poof ~ ~1 ~ 0 0 0 0.03 5
execute at @s run summon item ~ ~ ~ {Tags:["dropped_banner"],Item:{id:"minecraft:white_banner",count:1},Motion:[0.0d,0.3d,0.0d]}
data modify entity @n[type=item,tag=dropped_banner] Item set from entity @s item
tag @n[type=item,tag=dropped_banner] remove dropped_banner
execute at @s run playsound siscu_se:entity.boat.boat_banner_break ambient @a
kill @s