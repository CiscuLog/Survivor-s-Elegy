title @a[distance=..200] title {"selector":"@s"}
title @a[distance=..200] subtitle {"text":"has slain the Ender Dragon"}
loot spawn ~ ~100 ~ loot siscu:items/functional/player_head
execute positioned ~ ~100 ~ run data modify storage siscu:world DragonSlayer set from entity @e[type=minecraft:item,limit=1,sort=nearest] Item.components."minecraft:profile".name
execute positioned ~ ~100 ~ run kill @e[type=item,distance=..10]