
function siscu:blocks/broth_cauldron/interact/food/remove_effect {id:"minecraft:poison",amplifier:0}
function siscu:blocks/broth_cauldron/interact/food/remove_effect {id:"minecraft:poison",amplifier:1}

execute if data storage siscu:volatile BrothCauldronData.effects[0] run return 1
execute if data storage siscu:volatile BrothCauldronData.food_effects[0] run return 1
tag @n[tag=siscu.broth_interacted] remove siscu.broth_potion