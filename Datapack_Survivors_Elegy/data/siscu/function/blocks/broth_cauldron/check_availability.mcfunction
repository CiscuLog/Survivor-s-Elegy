# fail if the block is not a proper cauldron
execute unless block ~ ~ ~ #siscu:broth_cauldrons run return 0

# fail if there's no water to put the food in and the ingredient doesn't increase the water level
execute if score status siscu.broth_data matches 1 if score broth_level siscu.broth_data matches 0 if score increase siscu.broth_data matches 0 run return 0

# fail if there's no water to put the food in and the ingredient is not a soup

# fail if there's an increase but the cauldron is already filled
execute if score broth_level siscu.broth_data matches 3 if score increase siscu.broth_data matches 1.. run return 0

# fail if there's an increase of 3 but the cauldron is not empty
execute unless score broth_level siscu.broth_data matches 0 if score increase siscu.broth_data matches 3 run return 0

return 1
