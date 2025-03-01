# Tag the entity as checked

tag @s add siscu.creeper_checked

# Run the randomiser

execute unless score safe_mode siscu.integer matches 1 unless score creeper_fuse siscu.integer matches 0 run function siscu:entities/creeper/set_fuse