
# Update Cauldron data before doing anything
function siscu:blocks/broth_cauldron/update/check

# set temperature
function siscu:blocks/broth_cauldron/temperature/set_temp

# update broth visual effects
function siscu:blocks/broth_cauldron/update/textures
execute if entity @s[tag=siscu.broth_potion,tag=!siscu.broth_invisibility] run function siscu:blocks/broth_cauldron/effects/potion_particles

## Temperature-dependent
## broth preparing
execute if score @s siscu.broth_temperature matches 1..99 run function siscu:blocks/broth_cauldron/effects/broth_heating
execute unless score @s siscu.broth_temperature matches 100.. run tag @s remove siscu.broth_ready
execute if score @s siscu.broth_temperature matches ..99 run return 1

## broth ready
execute if entity @s[tag=!siscu.broth_ready] run function siscu:blocks/broth_cauldron/effects/broth_ready
function siscu:blocks/broth_cauldron/effects/broth_ready_particles
function siscu:blocks/broth_cauldron/effects/broth_ready_ambient
return 1