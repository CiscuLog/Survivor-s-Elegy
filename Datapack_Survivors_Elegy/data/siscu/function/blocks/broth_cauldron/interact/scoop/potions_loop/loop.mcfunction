
# for (x in potion_amount) - in decreasing order
execute store result storage siscu:volatile x int 1 run scoreboard players get potion_amount siscu.broth_data
function siscu:blocks/broth_cauldron/interact/scoop/potions_loop/potion with storage siscu:volatile

scoreboard players remove potion_amount siscu.broth_data 1
execute if score potion_amount siscu.broth_data matches 0.. run function siscu:blocks/broth_cauldron/interact/scoop/potions_loop/loop