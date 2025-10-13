
scoreboard players operation div_factor siscu.broth_data = broth_level siscu.broth_data

function siscu:blocks/broth_cauldron/interact/scoop/potions_loop/main {list:"effects"}
function siscu:blocks/broth_cauldron/interact/scoop/potions_loop/main {list:"food_effects"}

scoreboard players operation broth_food siscu.broth_data /= broth_level siscu.broth_data
scoreboard players operation broth_food siscu.broth_data *= cauldron_level siscu.broth_data
scoreboard players operation broth_saturation siscu.broth_data /= broth_level siscu.broth_data
scoreboard players operation broth_saturation siscu.broth_data *= cauldron_level siscu.broth_data
