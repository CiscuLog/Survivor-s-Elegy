scoreboard players set amethyst_beam siscu.volatile 20
execute positioned ^ ^ ^1.5 run tag @e[distance=..1.5,tag=!siscu.sonic_booming] add siscu.boom_victim
execute positioned ^-0.5 ^ ^1 run tag @e[distance=..1,tag=!siscu.sonic_booming] add siscu.boom_victim
execute positioned ^0.5 ^ ^1 run tag @e[distance=..1,tag=!siscu.sonic_booming] add siscu.boom_victim
execute at @s positioned ~ ~1 ~ run function siscu:items/use/amethyst_shield/sonic_boom