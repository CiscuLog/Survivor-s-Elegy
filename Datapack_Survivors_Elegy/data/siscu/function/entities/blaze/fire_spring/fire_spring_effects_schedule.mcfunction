
execute if predicate siscu:utils/5_percent run scoreboard players add @e[type=#siscu:fire_spring,tag=fire_spring] siscu.fire_spring 1

execute as @e[type=#siscu:fire_spring,tag=fire_spring] at @s run function siscu:entities/blaze/fire_spring/fire_spring_effects