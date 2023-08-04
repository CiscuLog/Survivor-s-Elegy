execute if predicate siscu:entities/is_wearing_stray_armor if predicate siscu:utils/50_percent run function siscu:world/withering/stray_armor_effects
execute if predicate siscu:entities/is_wearing_stray_armor run return 0

scoreboard players set @s[type=player] siscu.stray_armor 0

execute if predicate siscu:utils/50_percent run scoreboard players add @s siscu.withering 1
execute at @s[type=#siscu:withering_damage] if predicate siscu:utils/check_withered_grounds if predicate siscu:utils/50_percent run scoreboard players add @s siscu.withering 1
execute if entity @s[type=#siscu:withering_damage] if predicate siscu:utils/50_percent run function siscu:world/withering/withering_damage