advancement revoke @s only siscu:items/consume/milk

function siscu:systems/warped_food/increase_macro {poisoning:-5,withering:0}
advancement grant @s[advancements={siscu:story/withering_damage=true}] only siscu:story/warped_food_milk
