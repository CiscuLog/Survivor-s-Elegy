
# return 0 if the cauldron has no potion
execute if score has_potion siscu.broth_data matches 0 run return 0

# set water
data merge entity @n[type=marker,tag=siscu.broth_interacting] {data:{effects:[{probability:1,effect:{id:"minecraft:water",amplifier:0, duration:0}}]}}

# clear item on hand
item modify entity @s weapon.mainhand siscu:decrease_1
give @s bucket

# cauldron calculation
#scoreboard players add broth_level siscu.broth_data 1
execute as @e[type=marker,tag=siscu.broth_interacting] run function siscu:entities/broth_cauldron/update/store_data

tag @e[type=marker,tag=siscu.broth_interacting] remove siscu.broth_potion
tag @e[type=marker,tag=siscu.broth_interacting] remove siscu.broth_invisibility

execute at @e[type=marker,tag=siscu.broth_interacting] run function siscu:entities/broth_cauldron/effects/remove_potion

# divide broth temperature by the water level
scoreboard players operation @e[type=marker,tag=siscu.broth_interacting] siscu.broth_temperature /= broth_level siscu.broth_data
return 1
