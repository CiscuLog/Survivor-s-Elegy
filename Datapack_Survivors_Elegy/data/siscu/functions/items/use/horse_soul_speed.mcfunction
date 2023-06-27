execute on vehicle run effect give @s minecraft:speed 1 1 true
#execute on vehicle run summon minecraft:area_effect_cloud ~ ~-1 ~ {Effects:[{Id:1,Amplifier:1,Duration:10}], Duration:2, ReapplicationDelay:0, WaitTime:-1, Age:-1}
execute on vehicle positioned as @s run particle minecraft:soul ~ ~0.3 ~ 0.3 0 0.3 0 1 normal
advancement revoke @s only siscu:entities/horse_soul_speed