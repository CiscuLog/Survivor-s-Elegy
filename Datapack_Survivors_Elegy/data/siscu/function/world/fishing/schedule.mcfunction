
# Execute at nearest {Age:0} item. Fails if it targets a non-fish item
execute as @a[tag=siscu.fisherman] as @n[type=item,nbt={Age:0s}] at @s run function siscu:world/fishing/replace with entity @s
tag @s remove siscu.fisherman
