scoreboard players set @s siscu.death 0
scoreboard players reset @s siscu.withering
function siscu:entities/zombifying/unzombify_player
function siscu:entities/zombifying/clear_zombifying

function siscu:entities/player/get_death_coords
execute if score @s siscu.dimension matches 0 run tellraw @s [{"text":"Last Death: ","color":"red","bold":"true"},{"score":{"name":"*","objective":"siscu.x_pos"},"color":"white"},{"text":" "},{"score":{"name":"*","objective":"siscu.y_pos"},"color":"white"},{"text":" "},{"score":{"name":"*","objective":"siscu.z_pos"},"color":"white"},{"text":" [Overworld]","color":"green"}]
execute if score @s siscu.dimension matches 1 run tellraw @s [{"text":"Last Death: ","color":"red","bold":"true"},{"score":{"name":"*","objective":"siscu.x_pos"},"color":"white"},{"text":" "},{"score":{"name":"*","objective":"siscu.y_pos"},"color":"white"},{"text":" "},{"score":{"name":"*","objective":"siscu.z_pos"},"color":"white"},{"text":" [The Nether]","color":"red"}]
execute if score @s siscu.dimension matches 2 run tellraw @s [{"text":"Last Death: ","color":"red","bold":"true"},{"score":{"name":"*","objective":"siscu.x_pos"},"color":"white"},{"text":" "},{"score":{"name":"*","objective":"siscu.y_pos"},"color":"white"},{"text":" "},{"score":{"name":"*","objective":"siscu.z_pos"},"color":"white"},{"text":" [The End]","color":"light_purple"}]