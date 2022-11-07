loot replace entity @s weapon loot siscu:items/weapons/broken_trident

execute at @s run playsound minecraft:entity.item.break player @a ~ ~ ~
execute at @s run particle minecraft:item minecraft:trident ~ ~1.5 ~ 0 0 0 0.1 5
advancement revoke @s only siscu:items/use/trident_break