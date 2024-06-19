particle minecraft:sonic_boom
scoreboard players remove amethyst_beam siscu.volatile 1
execute positioned ~ ~ ~ as @e[distance=..1,tag=!siscu.sonic_booming] run damage @s 6 sonic_boom by @p[tag=siscu.sonic_booming]
execute positioned ~ ~-1 ~ as @e[distance=..1,tag=!siscu.sonic_booming] run damage @s 6 sonic_boom by @p[tag=siscu.sonic_booming]
execute if score amethyst_beam siscu.volatile matches 1.. positioned ^ ^ ^1 run function siscu:items/use/amethyst_shield/sonic_boom