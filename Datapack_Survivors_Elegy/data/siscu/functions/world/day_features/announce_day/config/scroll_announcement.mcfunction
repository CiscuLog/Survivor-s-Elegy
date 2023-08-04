scoreboard players add day_announcement siscu.day 1
execute if score day_announcement siscu.day matches 5 run scoreboard players set day_announcement siscu.day 0
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
function siscu:world/day_features/announce_day/config/menu