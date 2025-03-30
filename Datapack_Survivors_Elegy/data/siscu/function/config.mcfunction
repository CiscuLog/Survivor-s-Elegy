tellraw @s [{"text":"\n\n\n%=====Survivor's Elegy Configuration Panel=====%","bold":true,"color":"gold"}]

# Safe Mode
execute if score safe_mode siscu.integer matches 1 run tellraw @s [{"text":"\u26A0 Server Mode Activated \u26A0\n","bold":true},{"text":"This is an automatic feature and cannot be deactivated ","bold": false}, {"text": "[Learn More]","hover_event": {"action": "show_text","value": "Click"},"click_event": {"action": "run_command","command": "/function siscu:technical/about_safe_mode"}}]
# Menu
tellraw @s [{"text":"- Daytime Extender Module","bold":false,"color":"green","click_event":{"action":"run_command","command":"/function siscu:config/daytime_extender"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Current Day Announcer","bold":false,"color":"green","click_event":{"action":"run_command","command":"/function siscu:config/day_announcement"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Sleep Module","bold":false,"color":"green","click_event":{"action":"run_command","command":"/function siscu:config/sleep_config"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Last Death Message","bold":false,"color":"green","click_event":{"action":"run_command","command":"/function siscu:config/last_death_message"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Creeper Fuse Time Variation","bold":false,"color":"green","click_event":{"action":"run_command","command":"/function siscu:config/creeper_fuse"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Phage and Zombification","bold":false,"color":"green","click_event":{"action":"run_command","command":"/function siscu:config/phage"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Rotting Undead Mobs","bold":false,"color":"green","click_event":{"action":"run_command","command":"/function siscu:config/rotting"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Withering","bold":false,"color":"green","click_event":{"action":"run_command","command":"/function siscu:config/withering"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Entity tweaks","bold":false,"color":"green","click_event":{"action":"run_command","command":"/function siscu:entities/config/menu"},"hover_event":{"action":"show_text","value":{"text":"Click to access menu"}}}]
tellraw @s [{"text":"- New Creatures","bold":false,"color":"green","click_event":{"action":"run_command","command":"/function siscu:config/spawn_eggs"},"hover_event":{"action":"show_text","value":{"text":"Click to access Inventory"}}}]
tellraw @s [{"text":"- New Items","bold":false,"color":"green","click_event":{"action":"run_command","command":"/function siscu:technical/items/menu"},"hover_event":{"action":"show_text","value":{"text":"Click to access Inventory"}}}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"[About]\n","bold":false,"color":"gray","click_event":{"action":"run_command","command":"/function siscu:technical/about"},"hover_event":{"action":"show_text","value":{"text":"Click"}}}]
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1