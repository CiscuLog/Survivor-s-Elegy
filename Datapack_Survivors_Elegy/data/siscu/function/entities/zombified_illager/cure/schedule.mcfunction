
execute as @e[type=zombie_villager,nbt=!{ConversionTime:-1},tag=!smithed.entity] at @s run function siscu:entities/zombified_illager/cure/try_convert

execute if entity @e[type=zombie_villager,nbt=!{ConversionTime:-1}] run schedule function siscu:entities/zombified_illager/cure/schedule 1t