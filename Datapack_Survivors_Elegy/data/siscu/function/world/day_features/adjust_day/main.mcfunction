
# adjusts the world time after the player has used /time set commands
# world_day: supposed time
# current_day: actual in-game time
execute store result score current_day siscu.day run time query day repetition

scoreboard players operation x siscu.volatile = current_day siscu.day
scoreboard players operation x siscu.volatile -= world_day siscu.day

# return if current day is correct
execute if score x siscu.volatile matches 0.. run return run scoreboard players operation world_day siscu.day = current_day siscu.day

#else
execute store result storage siscu:volatile x double 1 run scoreboard players get world_day siscu.day
execute store result storage siscu:volatile y int 1 run time query day
function siscu:world/day_features/adjust_day/set_day with storage siscu:volatile

tellraw @a[gamemode=creative] [{text:"Adjusted World time to day ",hover_event:{action:"show_text",value:[{text:"This operation is being executed due to the game time having been altered by"},{text:" /time set ",bold:true},{text:"commands.\nClick this to return to day 0"}]},click_event:{action:"run_command",command:"function siscu:world/day_features/adjust_day/reset_day_counter"}},{score:{name:world_day,objective:siscu.day}}]