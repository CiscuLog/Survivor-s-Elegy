function siscu:items/passive_behav/charge/copper_armor

# Discharge on surrounding entities who are not wearing copper armor 
tag @s add siscu.discharging
## Summon AEC on entities up to 10 blocks
execute at @s as @e[type=!#siscu:discharge_immune,tag=!siscu.discharging,distance=..10] at @s anchored eyes run summon area_effect_cloud ~ ~1 ~ {Tags:["siscu.discharge_path"],Duration:1,Radius:0,Age:20}
## Face AEC towards the player and make it move
execute as @e[type=area_effect_cloud,tag=siscu.discharge_path] at @s facing entity @p[tag=siscu.discharging] feet run function siscu:items/passive_behav/discharge/effect

## Damage and particles
execute at @s as @e[type=!#siscu:discharge_immune,tag=!siscu.discharging,distance=..5] unless data entity @s Owner positioned as @s run particle minecraft:electric_spark ~ ~0.5 ~ 0 0 0 0.3 10
execute at @s run particle electric_spark ~ ~1 ~ 0 0.7 0 0.3 10
execute at @s as @e[type=!#siscu:discharge_immune,tag=!siscu.discharging,distance=..5] unless data entity @s Owner unless items entity @s armor.* #siscu:armor_items/copper run function siscu:items/passive_behav/discharge/damage
tag @s remove siscu.discharging

advancement revoke @s only siscu:entities/struck_by_lightning_while_wearing_copper_armor