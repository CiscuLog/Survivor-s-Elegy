## CNK content ##

advancement revoke @s only siscu:items/cnk/milk_bottle

function siscu:systems/warped_food/increase_macro {poisoning:-1,withering:0}
advancement grant @s[advancements={siscu:story/withering_damage=true}] only siscu:story/warped_food_milk
