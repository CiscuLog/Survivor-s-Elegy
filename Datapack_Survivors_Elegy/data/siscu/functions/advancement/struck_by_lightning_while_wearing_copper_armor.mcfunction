advancement revoke @s only siscu:entities/struck_by_lightning_while_wearing_copper_armor
function siscu:items/passive_behav/charge_copper_armor
tag @s add discharging

execute at @s as @e[type=#siscu:dischargeable_entities,tag=!discharging,distance=..10] at @s anchored eyes run summon area_effect_cloud ~ ~0.5 ~ {Tags:["siscu.discharge_path"]}
execute as @e[type=area_effect_cloud,tag=siscu.discharge_path] at @s facing entity @p[tag=discharging] feet run function siscu:items/passive_behav/discharge_effect

execute at @s as @e[type=#siscu:dischargeable_entities,tag=!discharging,distance=..5] positioned as @s run particle minecraft:electric_spark ~ ~0.5 ~ 0 0 0 0.3 10
execute at @s run particle electric_spark ~ ~1 ~ 0 0.7 0 0.3 10
execute at @s as @e[type=#siscu:dischargeable_entities,tag=!discharging,distance=..5] run damage @s 4 siscu:copper_discharge by @p[tag=discharging]
tag @s remove discharging