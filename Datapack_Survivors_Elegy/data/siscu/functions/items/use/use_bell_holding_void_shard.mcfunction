playsound minecraft:block.bell.resonate block @a ~ ~ ~ 2 0.75
effect give @e[type=!#siscu:glowing_invulnerable,tag=!invisible,distance=..48] glowing 5 0 true
effect give @a[distance=..32] darkness 7 0 true
clear @s[gamemode=!creative] echo_shard 1
execute positioned ~ ~1.7 ~ run particle minecraft:item echo_shard ^ ^ ^1 0 0 0 0.03 4
advancement revoke @s only siscu:items/use/use_bell_holding_void_shard