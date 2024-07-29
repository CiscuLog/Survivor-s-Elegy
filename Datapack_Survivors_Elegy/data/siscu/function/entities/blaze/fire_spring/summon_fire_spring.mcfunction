
execute align xyz run summon minecraft:item_display ~0.5 ~ ~0.5 {Tags:["fire_spring","fire_spring_spawned"]}
execute as @e[tag=fire_spring_spawned] run data merge entity @s {item:{id:"minecraft:bone",count:1b,components:{"custom_model_data":540001}},transformation:{scale:[1.01,1.01,1.01],translation:[0.0,-0.5,0.0]},start_interpolation: 0}
tag @e[tag=fire_spring_spawned] remove fire_spring_spawned

execute if score fire_spring_amount siscu.volatile matches 999 run scoreboard players set fire_spring_amount siscu.volatile 0
scoreboard players add fire_spring_amount siscu.volatile 1
execute store result storage siscu:volatile fire_spring_amount int 1 run scoreboard players get fire_spring_amount siscu.volatile
execute as @e[tag=fire_spring] unless score @s siscu.fire_spring matches 0.. run function siscu:entities/blaze/fire_spring/set_name with storage siscu:volatile

function siscu:entities/blaze/fire_spring/fire_spring_effects_schedule

tp @s ~ -64 ~
kill @s