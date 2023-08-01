tellraw @s [{"translate":"\n\n\n\n%===Day Announcer Configuration Panel===[","bold":"true","color":"aqua"},{"text":"Return","font":"siscu_se:subscript","bold":"false","color":"red","clickEvent":{"action":"run_command","value":"/function siscu:config"},"hoverEvent":{"action":"show_text","contents":{"text":"Return to menu"}}},{"text":"]","color":"aqua"}]

tellraw @s [{"text":"About: ","color":"white","bold":"true"},{"text":" Every time the player wakes up or joins the world for the first time, a title will display what day it is.\n","color":"white","bold":"false"}]

execute if score day_announcement siscu.day matches 1 run tellraw @s [{"text":"- Enable / Disable announcement: ","color":"gold","bold":"false"},{"text":"[ Enabled ]","color":"green","bold":"true","clickEvent":{"action":"run_command","value":"/function siscu:world/day_features/config/disable_announcement"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]

execute unless score day_announcement siscu.day matches 1 run tellraw @s [{"text":"- Enable / Disable announcement: ","color":"gold","bold":"false"},{"text":"[ Disabled ]","color":"red","bold":"true","clickEvent":{"action":"run_command","value":"/function siscu:world/day_features/config/enable_announcement"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]

tellraw @s [{"text":"\n"}]