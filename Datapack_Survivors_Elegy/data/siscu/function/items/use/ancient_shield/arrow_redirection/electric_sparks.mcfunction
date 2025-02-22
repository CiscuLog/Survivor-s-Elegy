
execute as @e[type=#siscu:deflectable_projectiles,tag=siscu.electric_particle] at @s run particle electric_spark ~ ~ ~ 0 0 0 0.2 1
execute as @e[type=#siscu:deflectable_projectiles,tag=siscu.electric_particle] if predicate siscu:utils/10_percent at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 0.01 1

scoreboard players add @e[type=#siscu:deflectable_projectiles,tag=siscu.electric_particle] siscu.volatile 1
execute as @e[type=#siscu:deflectable_projectiles,tag=siscu.electric_particle,scores={siscu.volatile=30..}] run tag @s remove siscu.electric_particle
execute as @e[type=#siscu:deflectable_projectiles,scores={siscu.volatile=30..}] run scoreboard players reset @s siscu.volatile
execute if entity @e[type=#siscu:deflectable_projectiles,tag=siscu.electric_particle] run schedule function siscu:items/use/ancient_shield/arrow_redirection/electric_sparks 1t
