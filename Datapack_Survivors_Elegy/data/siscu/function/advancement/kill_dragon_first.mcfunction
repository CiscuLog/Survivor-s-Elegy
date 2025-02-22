title @a reset
title @a times 20 80 40
title @a[distance=..200] title {"selector":"@s"}
title @a[distance=..200] subtitle {"text":"has slain the Ender Dragon"}
execute at @s run loot spawn ~ ~100 ~ loot siscu:items/functional/player_head
execute at @s positioned ~ ~100 ~ run data modify storage siscu:world DragonSlayer set from entity @n[type=minecraft:item] Item.components."minecraft:profile".name
execute at @s positioned ~ ~100 ~ run kill @n[type=item,distance=..1]