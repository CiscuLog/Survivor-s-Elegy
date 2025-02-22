execute as @e[type=interaction,tag=siscu.broth_cauldron] run data remove entity @s interaction
execute as @e[type=marker,tag=siscu.broth_interacting] run function siscu:blocks/broth_cauldron/update/store_data
tag @e[tag=siscu.broth_interacting] remove siscu.broth_interacting
