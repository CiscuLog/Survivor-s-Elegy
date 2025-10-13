
# summon area effect cloud, lasts 1 second
execute if entity @s[tag=siscu.broth_invisibility] run return 0
execute store result score food siscu.broth_data run data get entity @s data.broth_food
execute unless score food siscu.broth_data matches 1.. run return run summon area_effect_cloud ~ ~0.5 ~ {WaitTime:0,Duration:20,custom_particle:{type:"minecraft:entity_effect",color:[0.29,0.34,0.89,0.5]},Radius:0.4}
execute unless score @s siscu.broth_temperature matches 100.. at @s run return run summon area_effect_cloud ~ ~0.5 ~ {WaitTime:0,Duration:20,custom_particle:{type:"minecraft:entity_effect",color:[0.6,0.38,0.416,0.5]},Radius:0.4}
summon area_effect_cloud ~ ~0.5 ~ {WaitTime:0,Duration:20,custom_particle:{type:"minecraft:entity_effect",color:[0.65,0.36,0.149,0.5]},Radius:0.4}
