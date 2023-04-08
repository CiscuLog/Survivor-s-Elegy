execute if predicate siscu:utils/50_percent run scoreboard players add @s siscu.withering 1
execute at @s[type=#withering_damage] if predicate siscu:utils/check_withered_grounds if predicate siscu:utils/50_percent run scoreboard players add @s siscu.withering 1
execute if entity @s[type=#withering_damage] if predicate siscu:utils/50_percent run function siscu:world/withering_damage