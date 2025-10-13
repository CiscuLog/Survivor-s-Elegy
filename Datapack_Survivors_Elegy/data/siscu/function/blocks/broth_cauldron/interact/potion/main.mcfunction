
# return if incompatible
execute if predicate siscu:items/broth/potions_incompatible run return run function siscu:blocks/broth_cauldron/interact/interrupt
# return if cauldron is full
execute if score broth_level siscu.broth_data matches 3.. run return run function siscu:blocks/broth_cauldron/interact/interrupt

# variables
scoreboard players set break_flask siscu.broth_data 0

# fill if it's just a water bottle
execute if items entity @s weapon.mainhand potion[potion_contents={potion:"minecraft:water"}] run return run function siscu:blocks/broth_cauldron/interact/potion/fill_up

## Potion section
# return if there's no water to dillute the potion in
execute unless score broth_level siscu.broth_data matches 1.. at @n[type=interaction,tag=siscu.broth_interacted] as @n[tag=siscu.broth_ladle] run return run function siscu:blocks/broth_cauldron/interact/stirr

# select which potion is being added, get potion parameters
execute unless function siscu:blocks/broth_cauldron/interact/potion/potion_select at @n[type=interaction,tag=siscu.broth_interacted] as @n[tag=siscu.broth_ladle] run return run function siscu:blocks/broth_cauldron/interact/stirr

# add it to the list
data modify storage siscu:volatile BrothCauldronData.effects append from storage siscu:volatile effect
data remove storage siscu:volatile effect
# store data
tag @n[type=interaction,tag=siscu.broth_interacted] add siscu.broth_potion
function siscu:blocks/broth_cauldron/interact/potion/fill_up

advancement grant @s only siscu:minecraft/husbandry/broth_potion