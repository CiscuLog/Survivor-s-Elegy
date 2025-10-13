
# scores
scoreboard players add broth_level siscu.broth_data 1
scoreboard players operation @n[type=interaction,tag=siscu.broth_interacted] siscu.broth_temperature /= 2 siscu.integer

# remove bottle
item modify entity @s[gamemode=!creative] weapon.mainhand siscu:decrease_1
scoreboard players set x siscu.volatile 0
execute if items entity @s[gamemode=!creative] weapon.mainhand * run scoreboard players set x siscu.volatile 1
execute if score break_flask siscu.broth_data matches 1 run scoreboard players set x siscu.volatile -1
execute if score x siscu.volatile matches 0 run item replace entity @s[gamemode=!creative] weapon.mainhand with glass_bottle
execute if score x siscu.volatile matches 1 run give @s[gamemode=!creative] glass_bottle

# effects
execute at @n[type=interaction,tag=siscu.broth_interacted] run function siscu:blocks/broth_cauldron/effects/add_potion

function siscu:blocks/broth_cauldron/interact/end