tellraw @s [{"text":"\n\n\n%=====Survivor's Elegy Configuration Panel=====%","bold":true,"color":"gold"}]
execute if score server_status siscu.integer matches 0 run tellraw @s [{"text":"\u26A0 Server Mode Activated \u26A0\n","bold":true},{"text":"Your server software has optimisations that make some features of this pack not work correctly. You've entered server mode, which disables the following: ","color":"red","bold":false},{"text":"[List]","bold":true,"color":"gold","hoverEvent":{"action":"show_text","contents":{"text":"- Endermen random block holding\n- Trader Llama randomised Carpets\n- Wandering Trader companions"}}},{"text":"\nThis mode cannot be deactivated.","bold":false,"color":"red"}]
tellraw @s [{"text":"- Daytime Extender Module","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:daytime_extender"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Current Day Announcer","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:day_announcement"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Sleep Module","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:sleep_config"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Last Death Message","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:last_death_message"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Creeper Fuse Time Variation","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:creeper_fuse"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Phage and Zombification","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:phage"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Rotting Undead Mobs","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:rotting"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- Withering","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:withering"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to change"}}}]
tellraw @s [{"text":"- New Creatures","bold":false,"color":"green","clickEvent":{"action":"run_command","value":"/function siscu:spawn_eggs"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to access Inventory"}}}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"[About]\n","bold":false,"color":"gray","clickEvent":{"action":"run_command","value":"/function siscu:technical/about"},"hoverEvent":{"action":"show_text","contents":{"text":"Click"}}}]
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1