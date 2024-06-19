function siscu:items/use/amethyst_shield/get_data

execute if score amethyst_charges siscu.volatile matches 0 run return 0

tag @s add siscu.sonic_booming
execute positioned ~ ~1 ~ run function siscu:items/use/amethyst_shield/sonic_boom_spawn
tag @s remove siscu.sonic_booming
playsound minecraft:entity.warden.sonic_boom ambient @a ~ ~ ~ 1 2

scoreboard players remove amethyst_charges siscu.volatile 1
scoreboard players set amethyst_texture siscu.volatile 540100
scoreboard players operation amethyst_texture siscu.volatile += amethyst_charges siscu.volatile

execute store result storage siscu:volatile Vibrations int 1 run scoreboard players get amethyst_vibrations siscu.volatile
execute store result storage siscu:volatile Charge int 1 run scoreboard players get amethyst_charges siscu.volatile
execute store result storage siscu:volatile CMD int 1 run scoreboard players get amethyst_texture siscu.volatile
data merge storage siscu:volatile {Slot:""}
execute if predicate siscu:items/amethyst_shield_mainhand run data merge storage siscu:volatile {Slot:"weapon.mainhand"}
execute if predicate siscu:items/amethyst_shield_offhand if data storage siscu:volatile {Slot:""} run data merge storage siscu:volatile {Slot:"weapon.offhand"}

function siscu:items/item_modifier/amethyst_shield with storage siscu:volatile