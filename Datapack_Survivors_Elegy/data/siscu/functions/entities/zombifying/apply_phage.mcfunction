scoreboard players set phage_time siscu.volatile 1
scoreboard players operation phage_time siscu.volatile -= @s siscu.zombifying
scoreboard players operation phage_time siscu.volatile *= 20 siscu.integer
execute store result storage siscu:volatile PhageCounter int 1 run scoreboard players get phage_time siscu.volatile

execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["zombie_cloud"], Effects:[{Id:27,Amplifier:19,Duration:10}], Duration:2, ReapplicationDelay:0, WaitTime:-1, Age:-1}

execute at @s run data modify entity @e[type=area_effect_cloud,limit=1,sort=nearest,tag=zombie_cloud] Effects[{Id:27}].Duration set from storage siscu:volatile PhageCounter