# Tag the entity as checked

tag @s add creeper_checked

# Run the randomiser

execute unless score server_status siscu.integer matches 0 run function siscu:entities/creeper/set_fuse