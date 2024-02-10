tellraw @s [{"translate":"\n\n\n\n%====== Items Inventory ======[","bold":true,"color":"aqua"},{"text":"Return","font":"siscu_se:superscript","bold":false,"color":"red","clickEvent":{"action":"run_command","value":"/function siscu:config"},"hoverEvent":{"action":"show_text","contents":{"text":"Return to menu"}}},{"text":"]","color":"aqua"}]

tellraw @s [{"text":"About: ","color":"white","bold":true},{"text":" Survivor's Elegy adds a variety of new items. \nThe recipes are meant to be obtained by discovering the required ingredients or getting them from mob/chest loot. However, if you don't want to spend time on it, try the following options:\n","color":"white","bold":false}]
tellraw @s [{"text":""},{"text":"- Get all recipe advancements: ","color":"green","clickEvent":{"action":"run_command","value":"/function siscu:technical/items/reward_recipes"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to get recipes"}}},{"text":"All recipes will be shown on the \"Datapack Recipes\" advancement tab","color":"gray","clickEvent":{"action":"run_command","value":""}}]

tellraw @s [{"text":"\n"}]
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1