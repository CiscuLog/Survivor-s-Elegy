advancement revoke @s only siscu:entities/mirage_display_interact
tag @s add siscu.mirage_interacting

execute if items entity @s weapon glass_bottle if predicate siscu:entities/is_sneaking run tag @s add siscu.bottle
execute if entity @s[tag=siscu.bottle] as @e[type=interaction,tag=siscu.mirage] if data entity @s interaction at @s run function siscu:entities/mirage_display/bottle_up
execute if entity @s[tag=siscu.bottle,gamemode=!creative] run clear @s glass_bottle 1

execute unless items entity @s weapon.mainhand * run tag @s add siscu.empty_hand

execute if entity @s[tag=!siscu.bottle,tag=!siscu.empty_hand] as @e[type=interaction,tag=siscu.mirage] if data entity @s[tag=!siscu.mirage_active] interaction at @s run function siscu:entities/mirage_display/update_display
tag @s remove siscu.empty_hand
tag @s remove siscu.mirage_interacting
tag @s remove siscu.bottle

execute as @e[type=interaction,tag=siscu.mirage] run data remove entity @s interaction