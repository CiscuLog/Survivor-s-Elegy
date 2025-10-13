
execute if entity @n[type=interaction,tag=siscu.broth_interacted,tag=siscu.broth_invisibility] run return run function siscu:blocks/broth_cauldron/interact/interrupt
item modify entity @s[gamemode=!creative] weapon.mainhand siscu:decrease_1

tag @e[type=interaction,tag=siscu.broth_interacted] add siscu.broth_invisibility
execute at @e[type=interaction,tag=siscu.broth_interacted] run function siscu:blocks/broth_cauldron/effects/add_membrane

function siscu:blocks/broth_cauldron/interact/end