advancement revoke @s only siscu:entities/kill_dragon
execute at @s run advancement grant @a[distance=..200] only minecraft:end/kill_dragon
execute at @s if data storage siscu:world {DragonSlayer: "null"} run function siscu:advancement/kill_dragon_first