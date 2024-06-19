function siscu:items/passive_behav/charge_copper_armor

# Discharge on surrounding entities who are not wearing copper armor 
tag @s add discharging
## Summon AEC on entities up to 10 blocks
execute at @s as @e[type=!#siscu:discharge_immune,tag=!discharging,distance=..10] at @s anchored eyes run summon area_effect_cloud ~ ~1 ~ {Tags:["siscu.discharge_path"]}
## Face AEC towards the player and make it move
execute as @e[type=area_effect_cloud,tag=siscu.discharge_path] at @s facing entity @p[tag=discharging] feet run function siscu:items/passive_behav/discharge_effect

## Damage and particles
execute at @s as @e[type=!#siscu:discharge_immune,tag=!discharging,distance=..5] positioned as @s run particle minecraft:electric_spark ~ ~0.5 ~ 0 0 0 0.3 10
execute at @s run particle electric_spark ~ ~1 ~ 0 0.7 0 0.3 10
execute at @s as @e[type=!#siscu:discharge_immune,tag=!discharging,distance=..5] unless data entity @s Owner unless predicate siscu:entities/is_wearing_copper_armor run damage @s 4 siscu:copper_discharge by @p[tag=discharging]
tag @s remove discharging

advancement revoke @s only siscu:entities/struck_by_lightning_while_wearing_copper_armor