tellraw @s [{"translate":"\n\n\n\n%====== Safe Mode ======[","bold":true},{"text":"Return","font":"siscu_se:superscript","bold":false,"color":"red","click_event":{"action":"run_command","command":"/function siscu:config"},"hover_event":{"action":"show_text","value":{"text":"Return to menu"}}},{"text":"]"}]

tellraw @s [{"text":"","color": "white"},{"text":"Safe Mode","bold":true},{"text":" is an automatic feature designed to protect the world's integrity due to software disparities between the server running the datapack and the software the datapack was designed for.\nSafe mode might be engaged when running the datapack on non-vanilla servers, where software optimisations could break features the datapack relies on.\n\
\n\
The following features are affected by this mode:\n"},\
{"text": "- Creeper Fuse Time Variation","color": "gray","hover_event": {"action": "show_text","value": "Otherwise, creepers could explode right after spawning."}}]
