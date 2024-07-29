execute as @e[type=interaction,tag=siscu.mirage,tag=!siscu.mirage_active] at @s run particle end_rod ~ ~0.2 ~ 0.1 0.1 0.1 0.002 1

execute if entity @e[type=interaction,tag=siscu.mirage,tag=!siscu.mirage_active] run schedule function siscu:entities/mirage_display/empty_effects 4t