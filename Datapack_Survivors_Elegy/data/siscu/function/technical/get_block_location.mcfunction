summon area_effect_cloud ~ ~ ~ {Tags:["siscu.get_location"],Duration:2}
execute store result score x1 siscu.volatile run data get entity @e[type=area_effect_cloud,tag=siscu.get_location,limit=1] Pos[0]
execute store result score y1 siscu.volatile run data get entity @e[type=area_effect_cloud,tag=siscu.get_location,limit=1] Pos[1]
execute store result score z1 siscu.volatile run data get entity @e[type=area_effect_cloud,tag=siscu.get_location,limit=1] Pos[2]

kill @e[type=area_effect_cloud,tag=siscu.get_location]
