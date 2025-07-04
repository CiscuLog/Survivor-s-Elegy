
# summon area effect cloud, lasts 1 second
execute if data entity @s {data:{broth_level:3}} at @s run summon area_effect_cloud ~ ~0.8 ~ {WaitTime:0,Duration:20,custom_particle:{type:"minecraft:bubble_pop"},Radius:0.4}
execute if data entity @s {data:{broth_level:2}} at @s run summon area_effect_cloud ~ ~0.63 ~ {WaitTime:0,Duration:20,custom_particle:{type:"minecraft:bubble_pop"},Radius:0.35}
execute if data entity @s {data:{broth_level:1}} at @s run summon area_effect_cloud ~ ~0.45 ~ {WaitTime:0,Duration:20,custom_particle:{type:"minecraft:bubble_pop"},Radius:0.3}
