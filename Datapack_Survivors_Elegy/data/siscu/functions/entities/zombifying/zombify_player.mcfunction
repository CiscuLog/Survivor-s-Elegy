tag @s add zombie

playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~

attribute @s minecraft:generic.attack_damage base set 2.5
attribute @s minecraft:generic.movement_speed base set 0.07
gamemode adventure @s[gamemode=survival]

effect clear @s unluck