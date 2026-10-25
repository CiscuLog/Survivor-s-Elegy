tag @s add siscu.zombie
tag @s remove siscu.zombifying

playsound minecraft:entity.zombie.infect hostile @a ~ ~ ~

attribute @s minecraft:attack_damage base set 2.5
attribute @s minecraft:movement_speed base set 0.07
attribute @s block_break_speed base set 0.3
#gamemode adventure @s[gamemode=survival]

effect clear @s unluck

function siscu:technical/body_item/sunburn
