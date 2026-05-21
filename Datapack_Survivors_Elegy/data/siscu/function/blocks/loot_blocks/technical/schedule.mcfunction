
execute as @e[type=marker,tag=siscu.loot_table_insertion] at @s run function siscu:blocks/loot_blocks/technical/schedule2 with entity @s data
kill @e[type=marker,tag=siscu.loot_table_insertion]
