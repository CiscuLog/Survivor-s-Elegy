advancement revoke @s only siscu:interactions/mirage_display_hit
execute as @e[type=interaction,tag=siscu.mirage] if data entity @s attack run tag @s add siscu.mirage_attacked
execute as @e[type=interaction,tag=siscu.mirage_attacked] run data remove entity @s attack

execute at @s as @n[type=interaction,tag=siscu.mirage_attacked] at @s run particle end_rod ~ ~0.2 ~ 0 0 0 0.03 1
#execute at @s at @n[type=interaction,tag=siscu.mirage_attacked] run playsound siscu_se:item.mirage_bottle.update block @a ~ ~ ~ 0.5 1.5

tag @e[type=interaction,tag=siscu.mirage_attacked] remove siscu.mirage_attacked