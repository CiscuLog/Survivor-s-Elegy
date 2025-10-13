
tag @s remove siscu.broth_potion
tag @s remove siscu.broth_invisibility

data merge storage siscu:volatile {BrothCauldronData:{effects:[],food_effects:[]}}
execute at @s run function siscu:blocks/broth_cauldron/effects/add_milk

scoreboard players operation @s siscu.broth_temperature *= 2 siscu.integer
scoreboard players operation @s siscu.broth_temperature /= 3 siscu.integer

playsound item.bucket.empty block @a