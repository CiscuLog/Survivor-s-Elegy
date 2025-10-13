execute if score broth_level siscu.broth_data matches 1.. run return run function siscu:blocks/broth_cauldron/interact/interrupt

scoreboard players set broth_level siscu.broth_data 3

item replace entity @s[gamemode=!creative] weapon.mainhand with bucket

execute as @n[type=interaction,tag=siscu.broth_interacted] at @s run playsound item.bucket.empty block @a

function siscu:blocks/broth_cauldron/interact/end