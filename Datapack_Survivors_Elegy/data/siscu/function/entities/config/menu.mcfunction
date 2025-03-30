
tellraw @s [{"text":"","color":"white"},{"translate":"\n\n\n\n%==Entity Modifications Menu==[","bold":true,"color":"dark_green"},{"text":"Return","font":"siscu_se:superscript","bold":false,"color":"red","click_event":{"action":"run_command","command":"/function siscu:config"},"hover_event":{"action":"show_text","value":{"text":"Return to menu"}}},{"text":"]","bold":true,"color":"dark_green"}]
tellraw @s [{"text":"About: ","color":"white","bold":true},{"text":"This panel is used to alter minor behavior tweaks on entities.\n","bold":false}]
execute if score fletcher_stick_nerf siscu.integer matches 0 run tellraw @s [{"text":"- Fletcher Stick trade nerf is: ","color":"gold","bold":false,"hover_event":{"action":"show_text","value":{"text":"Removes Fletchers selling Emeralds for Sticks"}}},{"text":"[ Disabled ]","color":"red","bold":true,"click_event":{"action":"run_command","command":"/function siscu:entities/config/fletcher_stick_nerf/enable"},"hover_event":{"action":"show_text","value":{"text":"Click to activate"}}}]
execute if score fletcher_stick_nerf siscu.integer matches 1 run tellraw @s [{"text":"- Fletcher Stick trade nerf is: ","color":"gold","bold":false,"hover_event":{"action":"show_text","value":{"text":"Removes Fletchers selling Emeralds for Sticks"}}},{"text":"[ Enabled ]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function siscu:entities/config/fletcher_stick_nerf/radical"},"hover_event":{"action":"show_text","value":{"text":"New fletchers will not have this trade"}}}]
execute if score fletcher_stick_nerf siscu.integer matches 2 run tellraw @s [{"text":"- Fletcher Stick trade nerf is: ","color":"gold","bold":false,"hover_event":{"action":"show_text","value":{"text":"Removes Fletchers selling Emeralds for Sticks"}}},{"text":"[ \u26A0Radical\u26A0 ]","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"/function siscu:entities/config/fletcher_stick_nerf/disable"},"hover_event":{"action":"show_text","value":{"text":"All existing Villagers will remove this trade from their list\nThis will be updated when looking at any Villager with this trade"}}}]

execute if score librarian_mending_nerf siscu.integer matches 0 run tellraw @s [{"text":"- Librarian Mending trade nerf is: ","color":"gold","bold":false,"hover_event":{"action":"show_text","value":{"text":"Removes Librarians selling Mending Enchanted Books"}}},{"text":"[ Disabled ]","color":"red","bold":true,"click_event":{"action":"run_command","command":"/function siscu:entities/config/librarian_mending_nerf/enable"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]
execute if score librarian_mending_nerf siscu.integer matches 1 run tellraw @s [{"text":"- Librarian Mending trade nerf is: ","color":"gold","bold":false,"hover_event":{"action":"show_text","value":{"text":"Removes Librarians selling Mending Enchanted Books"}}},{"text":"[ Enabled ]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function siscu:entities/config/librarian_mending_nerf/radical"},"hover_event":{"action":"show_text","value":{"text":"New librarians will not have this trade"}}}]
execute if score librarian_mending_nerf siscu.integer matches 2 run tellraw @s [{"text":"- Librarian Mending trade nerf is: ","color":"gold","bold":false,"hover_event":{"action":"show_text","value":{"text":"Removes Librarians selling Mending Enchanted Books"}}},{"text":"[ \u26A0Radical\u26A0 ]","color":"yellow","bold":true,"click_event":{"action":"run_command","command":"/function siscu:entities/config/librarian_mending_nerf/disable"},"hover_event":{"action":"show_text","value":{"text":"All existing Villagers will remove this trade from their list\nThis will be updated when looking at any Villager with this trade"}}}]

execute if score warden_retreat siscu.integer matches 0 run tellraw @s [{"text":"- Wardens retreating is: ","color":"gold","bold":false,"hover_event":{"action":"show_text","value":{"text":"Allows Wardens retreating from the fight when its health is too low"}}},{"text":"[ Disabled ]","color":"red","bold":true,"click_event":{"action":"run_command","command":"/function siscu:entities/config/warden_retreat/enable"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]
execute if score warden_retreat siscu.integer matches 1 run tellraw @s [{"text":"- Wardens retreating is: ","color":"gold","bold":false,"hover_event":{"action":"show_text","value":{"text":"Allows Wardens retreating from the fight when its health is too low"}}},{"text":"[ Enabled ]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function siscu:entities/config/warden_retreat/disable"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]

execute if score fire_springs_enabled siscu.integer matches 0 run tellraw @s [{"text":"- Fire Springs are: ","color":"gold","bold":false,"hover_event":{"action":"show_text","value":{"text":"Enables new fire springs naturally spawning on metamorphic biomes"}}},{"text":"[ Disabled ]","color":"red","bold":true,"click_event":{"action":"run_command","command":"/function siscu:entities/config/fire_springs/enable"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]
execute if score fire_springs_enabled siscu.integer matches 1 run tellraw @s [{"text":"- Fire Springs are: ","color":"gold","bold":false,"hover_event":{"action":"show_text","value":{"text":"Enables new fire springs naturally spawning on metamorphic biomes"}}},{"text":"[ Enabled ]","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function siscu:entities/config/fire_springs/disable"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]

tellraw @s [{"text":""}]