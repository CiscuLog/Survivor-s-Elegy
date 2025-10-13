advancement revoke @s only siscu:interactions/broth_cauldron
advancement grant @s only siscu:minecraft/husbandry/broth_cauldron

# tag entities
execute as @e[type=interaction,tag=siscu.broth_cauldron] if data entity @s interaction at @s run tag @s add siscu.broth_interacted
tag @s add siscu.broth_interacting

# check if player is holding valid items. if not, move ladle
execute unless items entity @s weapon.mainhand #siscu:broth_items at @n[tag=siscu.broth_interacted] as @n[tag=siscu.broth_ladle] run function siscu:blocks/broth_cauldron/interact/stirr

execute as @n[tag=siscu.broth_interacted] at @s run function siscu:blocks/broth_cauldron/update/get_data

# Act depending on item
execute if items entity @s weapon.mainhand #siscu:broth_scooping at @s run return run function siscu:blocks/broth_cauldron/interact/scoop/main
execute if items entity @s weapon.mainhand #siscu:broth_ingredients at @s run return run function siscu:blocks/broth_cauldron/interact/food/main
execute if items entity @s weapon.mainhand #siscu:broth_potions unless score broth_level siscu.broth_data matches 3 at @s run return run function siscu:blocks/broth_cauldron/interact/potion/main
execute if items entity @s weapon.mainhand water_bucket if score broth_level siscu.broth_data matches 0 at @s run return run function siscu:blocks/broth_cauldron/interact/misc/water_bucket
execute if items entity @s weapon.mainhand milk_bucket at @s run return run function siscu:blocks/broth_cauldron/interact/misc/milk
execute if items entity @s weapon.mainhand phantom_membrane at @s run return run function siscu:blocks/broth_cauldron/interact/misc/phantom_membrane
execute if items entity @s weapon.mainhand wet_sponge at @s run return run function siscu:blocks/broth_cauldron/interact/misc/scrub

# exception case
execute at @n[tag=siscu.broth_interacted] as @n[tag=siscu.broth_ladle] run function siscu:blocks/broth_cauldron/interact/stirr
function siscu:blocks/broth_cauldron/interact/interrupt
