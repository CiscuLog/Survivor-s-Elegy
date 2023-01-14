execute store result score siscu.item_count siscu.volatile run data get entity @s Item.Count
scoreboard players remove siscu.item_count siscu.volatile 1
execute store result entity @s Item.Count int 1 run scoreboard players get siscu.item_count siscu.volatile