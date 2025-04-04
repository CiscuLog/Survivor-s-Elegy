execute unless score vibrations_max siscu.integer matches 0.. run function siscu:technical/load/load_first_time

tellraw @s [{"translate":"\n\n\n\n%====== Amethyst Shield Config ======[","bold":true,"color":"aqua"},{"text":"Return","font":"siscu_se:superscript","bold":false,"color":"red","click_event":{"action":"run_command","command":"/function siscu:technical/items/menu"},"hover_event":{"action":"show_text","value":{"text":"Return to menu"}}},{"text":"]","color":"aqua"}]

tellraw @s [{"text":"About: ","color":"white","bold":true},{"text":" Amethyst shields store \"vibrations\" while blocking standing up to build up \"charges\". Those charges can then be spent by blocking while crouching on a burst of energy that knocks mobs away.\n","color":"white","bold":false}]

# Warnings
execute if score vibrations_max siscu.integer matches 1 run tellraw @s [{"text": "\u26A0 1 is the minimum amount of vibrations allowed for a charge \u26A0 \n","color":"red"}]
execute if score vibrations_max siscu.integer matches 16.. run tellraw @s [{"text":"You might be getting a little overboard with that many vibrations, be sure of what you are doing\n","color":"red"}]

# Control
tellraw @s [{"text":"- Vibrations to charge proportion:  ","bold":false,"color":"green","hover_event":{"action":"show_text","value":{"text":"The amount of vibrations to build up 1 charge. The default value is 6."}}},{"score":{"name":"vibrations_max","objective":"siscu.integer"},"color":"gold"},{"text":" vib.","color":"gold"},{"text":" [","color":"gold","bold":true},{"text":" - ","bold":true,"color":"red","click_event":{"action":"run_command","command":"/function siscu:items/config/ancient_shield_remove"},"hover_event":{"action":"show_text","value":{"text":"Click to reduce"}}},{"text":" + ","bold":true,"color":"dark_green","click_event":{"action":"run_command","command":"/function siscu:items/config/ancient_shield_add"},"hover_event":{"action":"show_text","value":{"text":"Click to increase"}}},{"text":"]","color":"gold","bold":true}]


tellraw @s [{"text":"\n"}]