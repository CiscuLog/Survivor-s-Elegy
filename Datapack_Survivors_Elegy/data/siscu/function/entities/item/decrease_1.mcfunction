execute store result score siscu.item_count siscu.volatile run data get entity @s Item.count
scoreboard players remove siscu.item_count siscu.volatile 1
execute if score siscu.item_count siscu.volatile matches ..0 run return run kill @s[type=item]
execute store result entity @s Item.count int 1 run scoreboard players get siscu.item_count siscu.volatile