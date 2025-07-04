summon area_effect_cloud ~ ~ ~ {Tags:["siscu.get_location"],Duration:2,Radius:0,Age:20}
execute store result score x1 siscu.volatile run data get entity @n[type=area_effect_cloud,tag=siscu.get_location] Pos[0]
execute store result score y1 siscu.volatile run data get entity @n[type=area_effect_cloud,tag=siscu.get_location] Pos[1]
execute store result score z1 siscu.volatile run data get entity @n[type=area_effect_cloud,tag=siscu.get_location] Pos[2]
kill @n[type=area_effect_cloud,tag=siscu.get_location,distance=..0.1]
