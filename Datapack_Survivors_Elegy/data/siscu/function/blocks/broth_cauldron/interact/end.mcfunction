execute as @e[type=interaction,tag=siscu.broth_cauldron] run data remove entity @s interaction
execute as @e[type=interaction,tag=siscu.broth_interacted] run function siscu:blocks/broth_cauldron/update/store_data
tag @e[tag=siscu.broth_interacted] remove siscu.broth_interacted
tag @a[tag=siscu.broth_interacting] remove siscu.broth_interacting
