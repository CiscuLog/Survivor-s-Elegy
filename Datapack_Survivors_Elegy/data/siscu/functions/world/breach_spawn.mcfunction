execute at @s run summon marker ~ ~1 ~ {Tags:["breach"]}
execute at @s run particle dragon_breath ~ ~1 ~ 0 0.25 0 0.05 10
execute at @s run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 1 0.75
tag @s add breach_spawned