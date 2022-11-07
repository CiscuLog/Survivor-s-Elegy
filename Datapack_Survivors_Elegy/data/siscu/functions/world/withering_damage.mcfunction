execute if score @s siscu.withering matches 20..40 run effect give @s minecraft:wither 1 1 true
execute if score @s siscu.withering matches 41..60 run effect give @s minecraft:wither 2 1 true
execute if score @s siscu.withering matches 61..80 run effect give @s minecraft:wither 4 1 true
execute if score @s siscu.withering matches 81..100 run effect give @s minecraft:wither 8 1 true
execute if score @s siscu.withering matches 101..120 run effect give @s minecraft:wither 16 1 true
execute if score @s siscu.withering matches 121..140 run effect give @s minecraft:wither 32 1 true
execute if score @s siscu.withering matches 141..160 run effect give @s minecraft:wither 60 1 true
execute if score @s siscu.withering matches 161..180 run effect give @s minecraft:wither 60 2 true
execute if score @s siscu.withering matches 181..200 run effect give @s minecraft:wither 60 3 true
execute if score @s siscu.withering matches 201.. run effect give @s minecraft:wither 60 4 true

execute at @s if score @s siscu.withering matches 20.. run particle minecraft:smoke ~ ~1.6 ~ 0 0 0 0.05 15

execute if score @s siscu.withering matches 20.. run advancement grant @s only siscu:story/withering_damage