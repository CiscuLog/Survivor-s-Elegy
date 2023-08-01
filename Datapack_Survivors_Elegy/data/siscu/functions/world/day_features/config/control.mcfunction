execute if score daytime_speed siscu.day matches ..1 run scoreboard players set daytime_speed siscu.day 1

function siscu:world/day_features/config/normal_cycle

tellraw @s [{"translate":"\n\n\n\n%===Daytime Length Configuration Panel===[","bold":"true","color":"aqua"},{"text":"Return","font":"siscu_se:subscript","bold":"false","color":"red","clickEvent":{"action":"run_command","value":"/function siscu:config"},"hoverEvent":{"action":"show_text","contents":{"text":"Return to menu"}}},{"text":"]","color":"aqua"}]

tellraw @s [{"text":"About: ","color":"white","bold":"true"},{"text":" Survivor's Elegy adds a feature to extend the dayligtht cycle's duration.\n","color":"white","bold":"false"}]

execute if score do_daylight_cycle siscu.day matches 1 run tellraw @s [{"text":"- Enable / Disable daylight cycle: ","color":"gold","bold":"false"},{"text":"[ Enabled ]","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"/function siscu:world/day_features/config/disable_cycle"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]

execute unless score do_daylight_cycle siscu.day matches 1 run tellraw @s [{"text":"- Enable / Disable daylight cycle: ","color":"gold","bold":"false"},{"text":"[ Disabled ]","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function siscu:world/day_features/config/enable_cycle"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]

execute if score do_daylight_cycle siscu.day matches 1 run tellraw @s [{"text":"- Add 20 mins\n","bold":"false","color":"green","clickEvent":{"action":"run_command","value":"/function siscu:world/day_features/config/add_20"}},{"text":"- Shorten 20 mins\n","bold":"false","color":"green","clickEvent":{"action":"run_command","value":"/function siscu:world/day_features/config/remove_20"}},{"text":"- Double the current time\n","bold":"false","color":"red","clickEvent":{"action":"run_command","value":"/function siscu:world/day_features/config/double"}},{"text":"- Half the current time","bold":"false","color":"red","clickEvent":{"action":"run_command","value":"/function siscu:world/day_features/config/half"}}]
execute if score do_daylight_cycle siscu.day matches 1 run function siscu:world/day_features/config/calculate

playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1

tellraw @s [{"text":"\n"}]