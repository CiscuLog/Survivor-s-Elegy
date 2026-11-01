
# Execute at nearest {Age:0} item. Fails if it targets a non-fish item
execute as @a[tag=siscu.fisherman] at @s as @n[type=item,predicate=siscu:entities/item/new_drop] at @s run function siscu:systems/fishing/replace with entity @s
tag @a remove siscu.fisherman
