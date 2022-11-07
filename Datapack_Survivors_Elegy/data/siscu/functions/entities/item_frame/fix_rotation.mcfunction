execute unless predicate siscu:entities/item_frame/is_horizontal run data merge entity @s {ItemRotation: 0b}
execute if predicate siscu:entities/item_frame/is_horizontal if entity @s[nbt={ItemRotation: 1b}] run data merge entity @s {ItemRotation: 2b}
execute if predicate siscu:entities/item_frame/is_horizontal if entity @s[nbt={ItemRotation: 3b}] run data merge entity @s {ItemRotation: 4b}
execute if predicate siscu:entities/item_frame/is_horizontal if entity @s[nbt={ItemRotation: 5b}] run data merge entity @s {ItemRotation: 6b}
execute if predicate siscu:entities/item_frame/is_horizontal if entity @s[nbt={ItemRotation: 7b}] run data merge entity @s {ItemRotation: 0b}