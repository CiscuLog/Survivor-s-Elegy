summon area_effect_cloud ~ ~ ~ {Tags:["siscu.get_location"],Duration:2,Radius:0,Age:1}
$data modify storage siscu:volatile $(path) set from entity @n[type=area_effect_cloud,tag=siscu.get_location] Pos
kill @n[type=area_effect_cloud,tag=siscu.get_location,distance=..0.1]
