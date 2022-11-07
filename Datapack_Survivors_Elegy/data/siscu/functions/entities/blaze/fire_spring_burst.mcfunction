execute at @s run particle lava ~ ~0.01 ~ 0 0 0 0.3 10 force
execute at @s run particle flame ~ ~0.1 ~ 0 0 0 0.1 10 force

execute if predicate siscu:utils/75_percent run summon minecraft:small_fireball ~ ~ ~ {Motion:[0.1,0.1,0.0],power:[0.0,0.1,0.0]}
execute if predicate siscu:utils/75_percent run summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0,0.1,0.1],power:[0.0,0.1,0.0]}
execute if predicate siscu:utils/75_percent run summon minecraft:small_fireball ~ ~ ~ {Motion:[0.1,0.1,0.0],power:[0.0,0.1,0.0]}
execute if predicate siscu:utils/75_percent run summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0,0.1,0.1],power:[0.0,0.1,0.0]}
execute if predicate siscu:utils/100_percent run summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0,0.1,0.0],power:[0.0,0.1,0.0]}
playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~
playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~
execute if predicate siscu:utils/5_percent run summon blaze ~ ~ ~ {Tags:["blaze_checked"]}

kill @s