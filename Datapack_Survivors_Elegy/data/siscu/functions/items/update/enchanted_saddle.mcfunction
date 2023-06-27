execute as @a[tag=siscu.mount_killer] at @s run tag @e[type=item,nbt={Item:{id:"minecraft:saddle",Count:1b}},limit=1,sort=nearest] add siscu.saddle_delete

execute as @e[tag=siscu.saddle_delete] at @s run loot spawn ~ ~ ~ loot siscu:items/misc/enchanted_saddle

kill @e[tag=siscu.saddle_delete]

tag @a remove siscu.mount_killer