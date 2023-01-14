scoreboard players set @s siscu.death 0
scoreboard players reset @s siscu.withering
function siscu:entities/zombifying/unzombify_player
function siscu:entities/zombifying/clear_zombifying

execute unless score death_message siscu.integer matches 0 run function siscu:entities/player/announce_death_coordinates