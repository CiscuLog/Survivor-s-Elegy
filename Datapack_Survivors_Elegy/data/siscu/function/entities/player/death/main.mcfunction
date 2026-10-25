# Reset scoreboards
scoreboard players set @s siscu.death 0
scoreboard players reset @s[advancements={nether/root=true}] siscu.withering
scoreboard players reset @s siscu.warped_food
scoreboard players reset @s siscu.tofu_boost
scoreboard players reset @s siscu.tofu_boost_1
scoreboard players reset @s siscu.tofu_boost_2
scoreboard players reset @s siscu.tofu_boost_3
scoreboard players reset @s siscu.tofu_boost_4
scoreboard players reset @s siscu.tofu_boost_5

tag @s add siscu.respawning

# Reset zombification
execute if entity @s[tag=siscu.zombie] run function siscu:systems/phage/zombified/summon_dead_player/main
function siscu:systems/phage/cure/player
function siscu:systems/phage/cure/clear_zombifying

function siscu:systems/withering/stray_armor/advancement_reset

# reset HP attribute
attribute @s max_health base set 20

# Death coordinates
execute unless score death_message siscu.integer matches 0 run function siscu:entities/player/announce_death_coordinates with entity @s LastDeathLocation

tag @s remove siscu.respawning

execute at @s run function siscu:systems/phasing/player_respawn