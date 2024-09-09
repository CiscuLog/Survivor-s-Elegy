execute if score broth_level siscu.broth_data matches 1.. run return 0

scoreboard players set broth_level siscu.broth_data 3
execute as @e[type=marker,tag=siscu.broth_interacting] run function siscu:entities/broth_cauldron/update/store_data

item modify entity @s weapon.mainhand siscu:decrease_1
give @s bucket

execute as @e[type=marker,tag=siscu.broth_interacting] at @s run playsound item.bucket.empty block @a
return 1
