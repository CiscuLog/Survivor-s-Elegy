
function siscu:blocks/broth_cauldron/interact/interrupt

execute store result score x siscu.volatile run data get entity @s data.resting_pos

execute if score x siscu.volatile matches 3.. run scoreboard players set x siscu.volatile -1

execute store result entity @s data.resting_pos int 1 run scoreboard players add x siscu.volatile 1

#sounds
execute if block ~ ~ ~ cauldron run playsound siscu_se:item.ladle.place block @a
execute if block ~ ~ ~ water_cauldron run playsound siscu_se:item.ladle.stirr block @a ~ ~ ~ 0.5 0.4

# chance of speeding up cooking!
execute if predicate siscu:utils/10_percent if predicate siscu:locations/broth_conditions/valid as @n[type=interaction,tag=siscu.broth_cauldron] if score @s siscu.broth_temperature matches ..100 run scoreboard players add @s siscu.broth_temperature 1

# movement
data merge entity @s {interpolation_duration:4,start_interpolation:0}

execute if score x siscu.volatile matches 0 run return run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.1f,0.6f,0.0f]}}

execute if score x siscu.volatile matches 1 run return run data merge entity @s {transformation:{left_rotation:[0.0f,1.0f,0.0f,1.0f],translation:[0.0f,0.6f,0.1f]}}

execute if score x siscu.volatile matches 2 run return run data merge entity @s {transformation:{left_rotation:[0.0f,-1.0f,0.0f,0.0f],translation:[0.1f,0.6f,0.0f]}}

execute if score x siscu.volatile matches 3 run return run data merge entity @s {transformation:{left_rotation:[0.0f,-1.0f,0.0f,1.0f],translation:[0.0f,0.6f,-0.1f]}}