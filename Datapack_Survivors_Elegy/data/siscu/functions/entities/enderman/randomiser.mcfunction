# Tag the entity as checked

tag @s add enderman_checked

# Run the randomiser

execute unless score server_status siscu.integer matches 0 at @s if predicate siscu:utils/check_overworld if predicate siscu:random/enderman_chance_overworld run function siscu:entities/enderman/block_pick
execute unless score server_status siscu.integer matches 0 at @s if predicate siscu:utils/check_the_nether if predicate siscu:random/enderman_chance_the_nether run function siscu:entities/enderman/block_pick
execute unless score server_status siscu.integer matches 0 at @s if predicate siscu:utils/check_the_end if predicate siscu:random/enderman_chance_the_end run function siscu:entities/enderman/block_pick
