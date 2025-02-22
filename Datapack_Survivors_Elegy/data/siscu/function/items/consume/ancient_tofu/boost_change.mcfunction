
# operation = HP = HP[-1] + x - @s[-1]
# example: 10 + 2 - 1 = 11 HP

execute store result score y siscu.volatile run attribute @s max_health get 1

scoreboard players operation y siscu.volatile += x siscu.volatile
scoreboard players operation y siscu.volatile -= @s siscu.tofu_boost

execute if score y siscu.volatile matches ..0 run damage @s 10 minecraft:starve

execute store result storage siscu:volatile y byte 1 run scoreboard players get y siscu.volatile

function siscu:entities/player/apply_health_macro with storage siscu:volatile