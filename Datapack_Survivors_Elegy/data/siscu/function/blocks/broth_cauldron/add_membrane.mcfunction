
execute if score broth_level siscu.broth_data matches 0 run return 0
execute if entity @e[type=marker,tag=siscu.broth_interacting,tag=siscu.broth_invisibility] run return 0

tag @e[type=marker,tag=siscu.broth_interacting] add siscu.broth_invisibility
execute at @e[type=marker,tag=siscu.broth_interacting] run function siscu:blocks/broth_cauldron/effects/add_membrane

item modify entity @s weapon.mainhand siscu:decrease_1
