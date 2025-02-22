execute as @a[tag=siscu.mount_killer] at @s run tag @n[type=item,nbt={Item:{id:"minecraft:saddle",count:1}}] add siscu.saddle_delete

tag @a[tag=siscu.mount_killer] remove siscu.mount_killer

execute as @e[tag=siscu.saddle_delete] at @s run loot spawn ~ ~ ~ loot siscu:items/tools/enchanted_saddle

kill @e[tag=siscu.saddle_delete]
