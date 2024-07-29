
## Boats and struck players ##
execute if entity @e[type=item_display,tag=boat_flag] run function siscu:entities/boat/remove_flag
advancement revoke @a only siscu:entities/struck_by_lightning_while_wearing_copper_armor

## Broth Temperature ##
execute if entity @e[type=marker,tag=siscu.broth_cauldron] run schedule function siscu:entities/broth_cauldron/temperature/check 1s

## Oxidisation ##
# Disabled in update alpha v0.9.0: further testing required
#execute as @e[type=#siscu:can_wear_armor] run function siscu:items/passive_behav/oxidisation_chance_split

# Zombified Wolf Rotting
tag @e[type=wolf,predicate=siscu:entities/is_zombie_wolf,tag=!rotting_protected] add rot_checked