
# warped poisoning
execute unless score @s siscu.withering matches ..-20 run scoreboard players remove @s siscu.withering 1
execute unless score @s siscu.warped_food matches 60.. run scoreboard players add @s siscu.warped_food 1
execute as @s at @s run function siscu:world/warped_food/warped_food_effects

# teleportation tweaks
advancement revoke @s only siscu:items/consume/chorus_fruit
execute if predicate siscu:locations/check_void run advancement grant @s only siscu:minecraft/end/eat_chorus_fruit_in_the_void

# if falling, teleport to a ledge (if possible)
execute if predicate siscu:locations/chorus_fruit_valid_location if dimension the_end run spreadplayers ~ ~ 0 8 true @s
execute at @s run particle minecraft:portal ~ ~0.5 ~ 0.5 0.5 0.5 0 100