execute at @s run particle lava ~ ~0.01 ~ 0 0 0 0.3 10 force
execute at @s run particle flame ~ ~0.1 ~ 0 0 0 0.1 10 force

execute if predicate siscu:utils/75_percent run summon minecraft:small_fireball ~ ~ ~ {Motion:[0.1,0.1,0.0],acceleration_power: 0.095}
execute if predicate siscu:utils/75_percent run summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0,0.1,0.1],acceleration_power: 0.096}
execute if predicate siscu:utils/75_percent run summon minecraft:small_fireball ~ ~ ~ {Motion:[0.1,0.1,0.0],acceleration_power: 0.097}
execute if predicate siscu:utils/75_percent run summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0,0.1,0.1],acceleration_power: 0.098}
summon minecraft:small_fireball ~ ~ ~ {Motion:[0.0,0.1,0.0],acceleration_power:0.1}
playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~
playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~
execute if predicate siscu:utils/5_percent run summon blaze ~ ~ ~ {Tags:["siscu.blaze_checked"]}

kill @s