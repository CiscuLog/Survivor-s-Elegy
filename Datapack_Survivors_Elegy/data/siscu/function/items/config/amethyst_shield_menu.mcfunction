execute unless score amethyst_vibrations_max siscu.integer matches 0.. run function siscu:technical/load_first_time

tellraw @s [{"translate":"\n\n\n\n%====== Amethyst Shield Config ======[","bold":true,"color":"aqua"},{"text":"Return","font":"siscu_se:superscript","bold":false,"color":"red","clickEvent":{"action":"run_command","value":"/function siscu:technical/items/menu"},"hoverEvent":{"action":"show_text","contents":{"text":"Return to menu"}}},{"text":"]","color":"aqua"}]

tellraw @s [{"text":"About: ","color":"white","bold":true},{"text":" Amethyst shields store \"vibrations\" while blocking standing up to build up \"charges\". Those charges can then be spent by blocking while crouching on a burst of energy that knocks mobs away.\n","color":"white","bold":false}]

tellraw @s [{"text":"- Vibrations to charge proportion:  ","bold":false,"color":"green","hoverEvent":{"action":"show_text","contents":{"text":"The amount of vibrations to build up 1 charge. The default value is 6."}}},{"score":{"name":"amethyst_vibrations_max","objective":"siscu.integer"},"color":"gold"},{"text":" vib.","color":"gold"},{"text":" [","color":"gold","bold":true},{"text":" - ","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function siscu:items/config/amethyst_shield_remove"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to reduce"}}},{"text":" + ","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function siscu:items/config/amethyst_shield_add"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to increase"}}},{"text":"]","color":"gold","bold":true}]

# Warnings
execute if score amethyst_vibrations_max siscu.integer matches 1 run tellraw @s [{"text": "\u26A0 1 is the minimum amount of vibrations allowed for a charge\u26A0 ","color":"red"}]
execute if score amethyst_vibrations_max siscu.integere matches 100.. run tellraw @s [{"text":"You might be getting a little overboard with that many vibrations, be sure of what you are doing","color":"red"}]

tellraw @s [{"text":"\n"}]