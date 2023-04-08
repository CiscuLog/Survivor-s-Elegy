execute if predicate siscu:utils/10_percent if score @s siscu.fire_spring >= fire_spring_lava siscu.integer run particle lava ~ ~0.01 ~ 0 0 0 0.03 1
execute if predicate siscu:utils/25_percent if score @s siscu.fire_spring >= fire_spring_flame siscu.integer run particle flame ~ ~0.1 ~ 0 0 0 0.03 1
execute if predicate siscu:utils/50_percent if score @s siscu.fire_spring >= fire_spring_intense siscu.integer run particle lava ~ ~0.1 ~ 0 0 0 0.05 1
execute if predicate siscu:utils/50_percent if score @s siscu.fire_spring >= fire_spring_intense siscu.integer run particle flame ~ ~0.1 ~ 0 0 0 0.05 1
execute if predicate siscu:utils/10_percent run particle campfire_signal_smoke ~0.1 ~0.05 ~0.1 0 0.1 0 1 0 force
execute if predicate siscu:utils/10_percent run particle campfire_signal_smoke ~-0.1 ~0.05 ~0.1 0 0.1 0 1 0 force
execute if predicate siscu:utils/10_percent run particle campfire_signal_smoke ~0.1 ~0.05 ~-0.1 0 0.1 0 1 0 force

execute if score @s siscu.fire_spring = fire_spring_limit siscu.integer run playsound minecraft:block.lava.ambient ambient @a ~ ~ ~
execute if score @s siscu.fire_spring = fire_spring_sound siscu.integer run scoreboard players add @s siscu.fire_spring 1
execute if predicate siscu:utils/25_percent if score @s siscu.fire_spring >= fire_spring_sound siscu.integer run playsound minecraft:block.lava.pop ambient @a ~ ~ ~

execute if predicate siscu:utils/5_percent run scoreboard players add @s siscu.fire_spring 1

execute if score @s siscu.fire_spring >= fire_spring_limit siscu.integer run tag @s add fire_spring_burst

execute if entity @s[tag=fire_spring_burst] run function siscu:entities/blaze/fire_spring_burst

execute unless block ~ ~-1 ~ #siscu:fire_spring_blocks run function siscu:entities/blaze/fire_spring_explode

execute if entity @e[tag=fire_spring] run schedule function siscu:entities/blaze/fire_spring_effects_schedule 2t