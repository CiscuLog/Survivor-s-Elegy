particle poof ~ ~1 ~ 0 0 0 0.03 5
execute at @s run summon item ~ ~ ~ {Tags:["dropped_banner"],Item:{id:"minecraft:white_banner",Count:1},Motion:[0.0d,0.3d,0.0d]}
data modify entity @e[type=item,tag=dropped_banner,limit=1] Item set from entity @s item
execute at @s run playsound minecraft:entity.item_frame.break ambient @a
kill @s