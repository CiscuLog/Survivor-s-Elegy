
execute store result score x siscu.volatile run data get entity @s[type=zombie_villager] ConversionTime

execute if score x siscu.volatile matches ..301 run schedule function siscu:entities/zombified_illager/cure/schedule 1t