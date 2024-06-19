execute unless score @s siscu.withering matches ..-20 run scoreboard players remove @s siscu.withering 10
execute unless score @s siscu.warped_food matches 60.. run scoreboard players add @s siscu.warped_food 9
effect give @s minecraft:saturation 1 1 true

execute as @s at @s run function siscu:world/warped_food/warped_food_effects

advancement grant @s only siscu:story/warped_wart_food
advancement revoke @s only siscu:items/consume/warped_wart_stew_eat