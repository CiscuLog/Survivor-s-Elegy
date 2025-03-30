
tellraw @s [{"translate":"\n\n\n\n%=====Sleep Configuration Panel=====[","bold":true,"color":"aqua"},{"text":"Return","font":"siscu_se:superscript","bold":false,"color":"red","click_event":{"action":"run_command","command":"/function siscu:config"},"hover_event":{"action":"show_text","value":{"text":"Return to menu"}}},{"text":"]","color":"aqua"}]

tellraw @s [{"text":"About: ","color":"white","bold":true},{"text":" This configuration panel should only affect sleeping if the extended daylight cycle feature is active.\n","color":"white","bold":false}]

execute if score sleep_module_on siscu.day matches 0 run tellraw @s [{"text":"Skipping the night by sleeping is now: ","bold":false,"color":"white"},{"text":" [OFF]","bold":true,"color":"red","click_event":{"action":"run_command","command":"/function siscu:world/day_features/config/enable_sleep"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]

execute if score sleep_module_on siscu.day matches 1 run tellraw @s [{"text":"Skipping the night by sleeping is now: ","bold":false,"color":"white"},{"text":" [ON]","bold":true,"color":"green","click_event":{"action":"run_command","command":"/function siscu:world/day_features/config/disable_sleep"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]

execute store result score player_sleeping_percentage siscu.day run gamerule playersSleepingPercentage

tellraw @s [{"text":"The required percentage of players to sleep in order to pass the night is "},{"score":{"name":"player_sleeping_percentage","objective":"siscu.day"},"click_event":{"action":"suggest_command","command":"/gamerule playersSleepingPercentage "},"color":"gold","hover_event":{"action":"show_text","value":"Click to edit"}},{"text":"%\n"}]