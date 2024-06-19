# Reset scoreboards
scoreboard players set @s siscu.death 0
scoreboard players reset @s siscu.withering

# Reset zombification
execute if score @s siscu.zombifying matches 60.. at @s run function siscu:entities/zombifying/summon_zombie
function siscu:entities/zombifying/unzombify_player
function siscu:entities/zombifying/clear_zombifying

# Death coordinates
execute unless score death_message siscu.integer matches 0 run function siscu:entities/player/announce_death_coordinates