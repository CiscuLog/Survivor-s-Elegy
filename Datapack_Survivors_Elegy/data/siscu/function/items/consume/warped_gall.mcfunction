
advancement revoke @s only siscu:items/consume/warped_gall
advancement grant @s[advancements={siscu:story/warped_food=false}] only siscu:story/warped_food

execute as @s at @s run function siscu:world/warped_food/warped_food_effects

function siscu:world/warped_food/increase_macro {poisoning:7,withering:5}
