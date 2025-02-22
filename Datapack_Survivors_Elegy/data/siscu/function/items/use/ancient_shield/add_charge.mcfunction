execute positioned ~ ~1 ~ run particle minecraft:electric_spark ^ ^ ^0.9 0.1 0.3 0.1 0.1 5 normal

function siscu:items/use/ancient_shield/get_data with storage siscu:volatile

# if it has max charge, return and clean
execute if score charges siscu.volatile matches 6.. run return run function siscu:items/use/ancient_shield/clean_shield

# else, calculate
scoreboard players add vibrations siscu.volatile 1
execute if score vibrations siscu.volatile > vibrations_max siscu.integer run scoreboard players add charges siscu.volatile 1
execute if score vibrations siscu.volatile > vibrations_max siscu.integer run scoreboard players set vibrations siscu.volatile 0
scoreboard players operation CMD siscu.volatile = charges siscu.volatile
execute if score vibrations siscu.volatile matches 0 run playsound siscu_se:item.ancient_shield.charge_up ambient @a ~ ~ ~ 1 2

# charging up playsound
scoreboard players set x siscu.volatile 60
scoreboard players operation x siscu.volatile *= vibrations siscu.volatile
scoreboard players operation x siscu.volatile /= vibrations_max siscu.integer
scoreboard players add x siscu.volatile 80
execute store result storage siscu:volatile x float 0.01 run scoreboard players get x siscu.volatile

function siscu:items/use/ancient_shield/vibration_sound with storage siscu:volatile

execute store result storage siscu:volatile Vibrations byte 1 run scoreboard players get vibrations siscu.volatile
execute store result storage siscu:volatile Charge byte 1 run scoreboard players get charges siscu.volatile
execute store result storage siscu:volatile CMD int 1 run scoreboard players get CMD siscu.volatile

function siscu:items/item_modifier/ancient_shield with storage siscu:volatile
