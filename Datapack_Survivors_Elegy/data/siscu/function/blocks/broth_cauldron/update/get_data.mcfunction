
# Fix weirdness due to async
#execute at @s run function siscu:blocks/broth_cauldron/update/check

# get data
execute store result score broth_level siscu.broth_data run data get entity @s data.broth_level
execute store result score broth_food siscu.broth_data run data get entity @s data.broth_food
execute store result score broth_saturation siscu.broth_data run data get entity @s data.broth_saturation

execute store result score ingredients_amount siscu.broth_data run data get entity @s data.ingredients_amount
execute store result score tp_diameter siscu.broth_data run data get entity @s data.tp_diameter

execute store result score ingredient_color siscu.broth_data run data get entity @s data.dye_ingredients
execute store result score potion_color siscu.broth_data run data get entity @s data.dye_potions

data modify storage siscu:volatile BrothCauldronData set from entity @s data

#tellraw @a {"storage": "siscu:volatile","nbt": "BrothCauldronData"}
