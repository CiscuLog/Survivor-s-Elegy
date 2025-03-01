tellraw @s [{"text":"\n\n\n%=====Survivor's Elegy Configuration Panel=====%","bold":true,"color":"gold"}]

# Safe Mode
execute if score safe_mode siscu.integer matches 1 run tellraw @s [{"text":"\u26A0 Server Mode Activated \u26A0\n","bold":true},{"text":"This is an automatic feature and cannot be deactivated ","bold": false}, {"text": "[Learn More]","hoverEvent": {"action": "show_text","contents": "Click"},"clickEvent": {"action": "run_command","value": "/function siscu:technical/about_safe_mode"}}]
# Menu
tellraw @s [{"text":"- Daytime Extender Module","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:config/daytime_extender"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Current Day Announcer","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:config/day_announcement"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Sleep Module","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:config/sleep_config"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Last Death Message","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:config/last_death_message"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Creeper Fuse Time Variation","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:config/creeper_fuse"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Phage and Zombification","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:config/phage"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Rotting Undead Mobs","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:config/rotting"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Withering","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:config/withering"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Entity tweaks","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:entities/config/menu"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to access menu"}}}]
tellraw @s [{"text":"- New Creatures","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:config/spawn_eggs"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to access Inventory"}}}]
tellraw @s [{"text":"- New Items","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:technical/items/menu"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to access Inventory"}}}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"[About]\n","bold":false,"color":"gray","clickEvent":{"action":"run_command","value":"/function siscu:technical/about"},"hoverEvent":{"action":"show_text","contents":{"text":"Click"}}}]
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1