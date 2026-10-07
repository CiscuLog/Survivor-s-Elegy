title @a reset
title @a times 20 80 40
title @a[distance=..200] title {"selector":"@s"}
title @a[distance=..200] subtitle {"text":"has slain the Ender Dragon"}
loot replace entity @s saddle loot siscu:items/functional/player_head
data modify storage siscu:world DragonSlayer set from entity @s equipment.saddle.components."minecraft:profile".name
item replace entity @s saddle with air