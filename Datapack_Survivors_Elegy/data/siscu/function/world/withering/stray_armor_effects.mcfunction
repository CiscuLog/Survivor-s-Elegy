
item modify entity @s armor.chest siscu:use/reduce_stray_armor_1

scoreboard players add @s[type=player] siscu.stray_armor 1
execute at @s if score @s siscu.withering matches 10.. run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.05 5