advancement revoke @s only siscu:interactions/broth_cauldron_hit

# tag entities
execute as @e[type=interaction,tag=siscu.broth_cauldron] if data entity @s attack at @s run tag @s add siscu.broth_hurt
tag @s add siscu.broth_hurting

# check if player is holding valid items
execute if items entity @s[gamemode=creative] weapon.mainhand debug_stick at @n[tag=siscu.broth_hurt] as @n[tag=siscu.broth_water] run function siscu:blocks/broth_cauldron/interact/stain/debug_stick_select

function siscu:blocks/broth_cauldron/hurt/interrupt
