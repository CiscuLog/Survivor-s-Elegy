# get data
execute store result score broth_level siscu.broth_data run data get entity @s data.broth_level
execute store result score broth_food siscu.broth_data run data get entity @s data.broth_food
execute store result score broth_saturation siscu.broth_data run data get entity @s data.broth_saturation

# get potion effect duration
execute store result score potion_duration siscu.broth_data run data get entity @s data.effects[0].duration
execute store result score has_potion siscu.broth_data run execute if entity @s[tag=siscu.broth_potion]

# put data in storage for unchanged values
data modify storage siscu:volatile BrothCauldronData set from entity @s data

#tellraw @a {"storage": "siscu:volatile","nbt": "BrothCauldronData"}
