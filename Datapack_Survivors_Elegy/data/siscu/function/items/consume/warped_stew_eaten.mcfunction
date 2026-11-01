
advancement revoke @s only siscu:items/consume/warped_stew_eat
advancement grant @s only siscu:story/warped_food

execute as @s at @s run function siscu:systems/warped_food/warped_food_effects

function siscu:systems/warped_food/increase_macro {poisoning:6,withering:-4}
