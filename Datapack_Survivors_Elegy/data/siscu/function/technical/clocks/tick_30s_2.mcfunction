
## Boats and struck players ##
execute if entity @e[type=item_display,tag=boat_flag] run function siscu:entities/boat/remove_flag
advancement revoke @a[advancements={siscu:entities/struck_by_lightning_while_wearing_copper_armor=true}] only siscu:entities/struck_by_lightning_while_wearing_copper_armor

## Broth Temperature ##
execute if entity @e[type=interaction,tag=siscu.broth_cauldron] run schedule function siscu:blocks/broth_cauldron/temperature/check 1s

## Oxidation ##
# Disabled in update alpha v0.9.0: further testing required
execute as @e[type=#siscu:can_wear_armor,predicate=siscu:items/has_oxidisable_anything] at @s run function siscu:items/passive_behav/oxidisation/chance_split

