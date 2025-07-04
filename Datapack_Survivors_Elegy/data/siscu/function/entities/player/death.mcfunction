# Reset scoreboards
scoreboard players set @s siscu.death 0
scoreboard players reset @s siscu.withering
scoreboard players reset @s siscu.warped_food
scoreboard players reset @s siscu.tofu_boost
scoreboard players reset @s siscu.tofu_boost_1
scoreboard players reset @s siscu.tofu_boost_2
scoreboard players reset @s siscu.tofu_boost_3
scoreboard players reset @s siscu.tofu_boost_4
scoreboard players reset @s siscu.tofu_boost_5

# Reset zombification
execute if score @s siscu.zombifying matches 60.. at @s run summon zombie ~ ~ ~ {Tags:["siscu.zombie_checked"],CanPickUpLoot:1b}
function siscu:entities/phage/unzombify/player
function siscu:entities/phage/clear_zombifying

# reset HP attribute
attribute @s max_health base set 20

# Death coordinates
execute unless score death_message siscu.integer matches 0 run function siscu:entities/player/announce_death_coordinates with entity @s LastDeathLocation