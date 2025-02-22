summon experience_orb ~ ~ ~ {Tags:["siscu.custom_xp_orb"],Value:2477}
data modify entity @e[type=experience_orb,tag=siscu.custom_xp_orb,limit=1] Value set from entity @s data.Xp
execute as @e[type=experience_orb,tag=siscu.custom_xp_orb] if data entity @s {Value: 0s} run kill @s
tag @e[tag=siscu.custom_xp_orb] remove siscu.custom_xp_orb
execute at @s run kill @e[tag=siscu.sculk_plantoid,distance=..0.9]