execute positioned ~ ~1 ~ run particle minecraft:electric_spark ^ ^ ^0.9 0.1 0.3 0.1 0.1 5 normal

function siscu:items/use/amethyst_shield/get_data

execute if score amethyst_charges siscu.volatile matches 4.. run return 1

scoreboard players add amethyst_vibrations siscu.volatile 1
execute if score amethyst_vibrations siscu.volatile >= amethyst_vibrations_max siscu.integer run scoreboard players add amethyst_charges siscu.volatile 1
execute if score amethyst_vibrations siscu.volatile >= amethyst_vibrations_max siscu.integer run scoreboard players set amethyst_vibrations siscu.volatile 0
scoreboard players set amethyst_texture siscu.volatile 540100
scoreboard players operation amethyst_texture siscu.volatile += amethyst_charges siscu.volatile
execute if score amethyst_vibrations siscu.volatile matches 0 run playsound siscu_se:item.amethyst_shield.charge_up ambient @a ~ ~ ~ 1 2

scoreboard players set x siscu.volatile -100
scoreboard players set y siscu.volatile 1
scoreboard players operation x siscu.volatile *= amethyst_vibrations_max siscu.integer
scoreboard players operation y siscu.volatile += amethyst_vibrations siscu.volatile
scoreboard players operation x siscu.volatile /= y siscu.volatile
scoreboard players operation x siscu.volatile /= 4 siscu.integer
scoreboard players add x siscu.volatile 140
execute store result storage siscu:volatile x float 0.01 run scoreboard players get x siscu.volatile

function siscu:items/use/amethyst_shield/vibration_sound with storage siscu:volatile

execute store result storage siscu:volatile Vibrations int 1 run scoreboard players get amethyst_vibrations siscu.volatile
execute store result storage siscu:volatile Charge int 1 run scoreboard players get amethyst_charges siscu.volatile
execute store result storage siscu:volatile CMD int 1 run scoreboard players get amethyst_texture siscu.volatile
data merge storage siscu:volatile {Slot:""}
execute if predicate siscu:items/amethyst_shield_mainhand run data merge storage siscu:volatile {Slot:"weapon.mainhand"}
execute if predicate siscu:items/amethyst_shield_offhand if data storage siscu:volatile {Slot:""} run data merge storage siscu:volatile {Slot:"weapon.offhand"}

function siscu:items/item_modifier/amethyst_shield with storage siscu:volatile