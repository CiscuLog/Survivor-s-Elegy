tellraw @s [{"translate":"\n\n\n\n%===Day Announcer Configuration Panel===[","bold":true,"color":"aqua"},{"text":"Return","font":"siscu_se:superscript","bold":false,"color":"red","click_event":{"action":"run_command","command":"/function siscu:config"},"hover_event":{"action":"show_text","value":{"text":"Return to menu"}}},{"text":"]","color":"aqua"}]

tellraw @s [{"text":"About: ","color":"white","bold":true},{"text":" Every time the player wakes up or joins the world for the first time, a title will display what day it is.\n","color":"white","bold":false}]

execute if score day_announcement siscu.day matches 0 run tellraw @s [{"text":"- Announcement Style: ","color":"gold","bold":false},{"text":"[ NONE ]","color":"red","bold":true,"click_event":{"action":"run_command","command":"/function siscu:world/day_features/announce_day/config/scroll_announcement"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]

execute if score day_announcement siscu.day matches 1 run tellraw @s [{"text":"- Announcement Style: ","color":"gold","bold":false},{"text":"[ Dawn of the ...th day ]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function siscu:world/day_features/announce_day/config/scroll_announcement"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]

execute if score day_announcement siscu.day matches 2 run tellraw @s [{"text":"- Announcement Style: ","color":"gold","bold":false},{"text":"[ Day ... ]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function siscu:world/day_features/announce_day/config/scroll_announcement"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]

execute if score day_announcement siscu.day matches 3 run tellraw @s [{"text":"- Announcement Style: ","color":"gold","bold":false},{"text":"[ ...th day ]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function siscu:world/day_features/announce_day/config/scroll_announcement"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]

execute if score day_announcement siscu.day matches 4 run tellraw @s [{"text":"- Announcement Style: ","color":"gold","bold":false},{"text":"[ ... ]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function siscu:world/day_features/announce_day/config/scroll_announcement"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]

execute if score day_announcement siscu.day matches 0 run tellraw @s [{"text":"\n       "},{"text":"[ Test Title ]","color":"gray","bold":true}]

execute unless score day_announcement siscu.day matches 0 run tellraw @s [{"text":"\n       "},{"text":"[ Test Title ]","click_event":{"action":"run_command","command":"/function siscu:world/day_features/announce_day/split"},"color":"green","bold":true}]

tellraw @s [{"text":"\n"}]