tag @s add siscu.zombie

playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~

attribute @s minecraft:attack_damage base set 2.5
attribute @s minecraft:movement_speed base set 0.07
gamemode adventure @s[gamemode=survival]

effect clear @s unluck