
advancement revoke @s only siscu:items/consume/warped_gall
advancement grant @s[advancements={siscu:story/warped_food=false}] only siscu:story/warped_food

execute as @s at @s run function siscu:systems/warped_food/warped_food_effects

# Show it's doing something
execute if score @s siscu.withering matches 5.. at @s run particle smoke ~ ~1 ~ 0.3 0.5 0.3 0 10
execute if score @s siscu.withering matches 1.. at @s run particle trial_spawner_detection ~ ~1 ~ 0.3 0.5 0.3 0 5
#execute if score @s siscu.warped_food matches 50.. at @s run particle portal ~ ~1 ~ 0.3 0.3 0.3 0.2 10

function siscu:systems/warped_food/increase_macro {poisoning:7,withering:-5}
