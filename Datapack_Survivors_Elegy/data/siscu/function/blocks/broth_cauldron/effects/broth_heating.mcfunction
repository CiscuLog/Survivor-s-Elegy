
# summon area effect cloud, lasts 1 second
execute if data entity @s {data:{broth_level:3}} at @s run summon area_effect_cloud ~ ~0.5 ~ {WaitTime:0,Duration:20,custom_particle:{type:"minecraft:splash"},Radius:0.4}
execute if data entity @s {data:{broth_level:2}} at @s run summon area_effect_cloud ~ ~0.4 ~ {WaitTime:0,Duration:20,custom_particle:{type:"minecraft:splash"},Radius:0.35}
execute if data entity @s {data:{broth_level:1}} at @s run summon area_effect_cloud ~ ~0.3 ~ {WaitTime:0,Duration:20,custom_particle:{type:"minecraft:splash"},Radius:0.3}
