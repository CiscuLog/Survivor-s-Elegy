stopsound @a[distance=..48] block minecraft:block.bell.use
playsound minecraft:block.bell.use master @a ~ ~ ~ 2 0.8
playsound minecraft:block.bell.resonate block @a ~ ~ ~ 2 0.75
effect give @e[type=!#siscu:glowing_invulnerable,tag=!invisible,distance=..48] glowing 5 0 true
effect give @a[distance=..32] darkness 7 0 true
clear @s[gamemode=!creative] echo_shard 1

scoreboard players set ray siscu.volatile 5000
execute positioned ~ ~1.62 ~ if entity @s[dx=0] run function siscu:items/use/technical/echo_shard_ray
execute positioned ~ ~0.7 ~ if entity @s[dx=0] positioned ~ ~0.92 ~ unless entity @s[dx=0] positioned ~ ~-0.32 ~ run function siscu:items/use/technical/echo_shard_ray
execute positioned ~ ~0.7 ~ unless entity @s[dx=0] positioned ~ ~-0.28 ~ run function siscu:items/use/technical/echo_shard_ray

advancement grant @s only siscu:minecraft/adventure/ring_bell_with_echo_shard
advancement revoke @s only siscu:items/use/use_bell_holding_void_shard