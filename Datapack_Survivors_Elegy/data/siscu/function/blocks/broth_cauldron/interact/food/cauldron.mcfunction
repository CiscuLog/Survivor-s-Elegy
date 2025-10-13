function siscu:blocks/broth_cauldron/update/store_data

function siscu:blocks/broth_cauldron/effects/add_food
#execute as @e[type=interaction,tag=siscu.broth_interacting] run tellraw @a[tag=siscu.broth_interacting] [{"nbt": "data","entity": "@s"}]

# lower temperature, divides current temperature by 2
scoreboard players operation @s siscu.broth_temperature /= 2 siscu.integer