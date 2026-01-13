
execute align xyz run summon minecraft:item_display ~0.5 ~ ~0.5 {Tags:["siscu.fire_spring","siscu.fire_spring_spawned"]}
execute as @e[tag=siscu.fire_spring_spawned] run data merge entity @s {item:{id:"minecraft:bone",count:1b,components:{"item_model":"siscu_se:block/fire_spring"}},transformation:{scale:[1.01,1.01,1.01],translation:[0.0,-0.5,0.0]},start_interpolation: 0}
tag @e[tag=siscu.fire_spring_spawned] remove siscu.fire_spring_spawned

execute if score fire_spring_amount siscu.volatile matches 2147483647.. run scoreboard players set fire_spring_amount siscu.volatile 0
scoreboard players add fire_spring_amount siscu.volatile 1
execute store result storage siscu:volatile fire_spring_amount int 1 run scoreboard players get fire_spring_amount siscu.volatile
execute as @e[tag=siscu.fire_spring] unless score @s siscu.fire_spring matches 0.. run function siscu:blocks/fire_spring/set_name with storage siscu:volatile

function siscu:blocks/fire_spring/fire_spring_effects_schedule

tp @s ~ -64 ~
kill @s