
# summon area effect cloud, lasts 1 second
execute if entity @s[tag=siscu.broth_invisibility] run return 0
execute at @s run summon area_effect_cloud ~ ~0.5 ~ {WaitTime:0,Duration:20,Particle:{type:"minecraft:entity_effect",color:[0.6,0.38,0.416,0.5]},Radius:0.4}
