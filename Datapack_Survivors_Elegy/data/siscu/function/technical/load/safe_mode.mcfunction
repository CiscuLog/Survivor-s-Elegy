
scoreboard players set safe_mode siscu.integer 1
tellraw @a [{"text":"","color": "red"},{"text": "⚠ Software limitations detected, "},{"text":"Safe Mode","bold":true,"hoverEvent": {"action": "show_text","contents": [{"text":"Click to learn more"}]},"clickEvent": {"action": "run_command","value": "/function siscu:technical/about_safe_mode"}},{"text":" has been engaged"}]
