
scoreboard players set safe_mode siscu.integer 1
tellraw @a [{"text":"","color": "red"},{"text": "⚠ Software limitations detected, "},{"text":"Safe Mode","bold":true,"hover_event": {"action": "show_text","value": [{"text":"Click to learn more"}]},"click_event": {"action": "run_command","command": "/function siscu:technical/about_safe_mode"}},{"text":" has been engaged"}]
