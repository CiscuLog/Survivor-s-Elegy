
execute if score @s siscu.withering matches ..2 run scoreboard players reset @s siscu.withering
execute if score @s siscu.withering matches 3.. if predicate siscu:utils/75_percent run scoreboard players remove @s siscu.withering 3

execute if entity @s[type=#siscu:withering_damage] if predicate siscu:utils/50_percent run function siscu:world/withering/withering_damage

execute if score @s siscu.withering matches 0 run scoreboard players reset @s siscu.withering