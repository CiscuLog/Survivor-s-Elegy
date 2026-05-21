
scoreboard players add @e[type=#siscu:fire_spring,tag=siscu.fire_spring,predicate=siscu:utils/5_percent] siscu.fire_spring 1

execute as @e[type=#siscu:fire_spring,tag=siscu.fire_spring] at @s if function siscu:blocks/fire_spring/fire_spring_effects run schedule function siscu:blocks/fire_spring/fire_spring_effects_schedule 4t