
data remove storage siscu:volatile dialog

execute store result storage siscu:volatile dialog.safe_mode byte 1 run scoreboard players get safe_mode siscu.integer
execute store result storage siscu:volatile dialog.creeper_fuse byte 1 run scoreboard players get creeper_fuse siscu.integer


scoreboard players operation creeper_fuse siscu.volatile = creeper_max siscu.integer
scoreboard players operation creeper_fuse siscu.volatile += creeper_min siscu.integer
scoreboard players operation creeper_fuse siscu.volatile /= 2 siscu.integer

scoreboard players operation creeper_var siscu.volatile = creeper_fuse siscu.volatile
scoreboard players operation creeper_var siscu.volatile -= creeper_min siscu.integer
execute store result storage siscu:volatile dialog.creeper_mean byte 1 run scoreboard players get creeper_fuse siscu.volatile

function siscu:entities/creeper/config/menu_macro with storage siscu:volatile

function siscu:technical/run_dialog with storage siscu:volatile dialog


return 0

tellraw @s [{"text":"","color":"white"},{"translate":"\n\n\n\n%==Creeper Fuse Length Configuration==[","bold":true,"color":"dark_green"},{"text":"Return","font":"siscu_se:superscript","bold":false,"color":"red","click_event":{"action":"run_command","command":"/function siscu:config"},"hover_event":{"action":"show_text","value":{"text":"Return to menu"}}},{"text":"]","bold":true,"color":"dark_green"}]
tellraw @s [{"text":"About: ","color":"white","bold":true},{"text":"This panel is used to change the creeper fuse time and even add variation and impredactibility to its length.","bold":false}]

# Safe Mode
execute if score safe_mode siscu.integer matches 1 run return run tellraw @s [{"text":"\n⚠ Safe Mode has blocked this feature in your session ","color": "red"},{"text": "[Learn More]","bold": true,"click_event": {"action": "run_command","command": "/function siscu:technical/about_safe_mode"},"hover_event": {"action": "show_text","value": "Click here"}}]

# Enable/disable
execute if score creeper_fuse siscu.integer matches 0 run return run tellraw @s [{"text":"- Fuse Variation is: ","bold":false,"color":"gold"},{"text":" [Disabled]\n\n","bold":true,"color":"red","click_event":{"action":"run_command","command":"/function siscu:entities/creeper/config/enable"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]
execute if score creeper_fuse siscu.integer matches 1 run tellraw @s [{"text":"- Fuse Variation is: ","bold":false,"color":"gold"},{"text":" [Enabled]","bold":true,"color":"green","click_event":{"action":"run_command","command":"/function siscu:entities/creeper/config/disable"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]

# Config panel
scoreboard players operation creeper_fuse siscu.volatile = creeper_max siscu.integer
scoreboard players operation creeper_fuse siscu.volatile += creeper_min siscu.integer
scoreboard players operation creeper_fuse siscu.volatile /= 2 siscu.integer

scoreboard players operation creeper_var siscu.volatile = creeper_fuse siscu.volatile
scoreboard players operation creeper_var siscu.volatile -= creeper_min siscu.integer

tellraw @s [{"text":"- Base fuse length:  ","bold":false,"color":"green","hover_event":{"action":"show_text","value":{"text":"The approximate time of a creeper fuse"}}},{"score":{"name":"creeper_fuse","objective":"siscu.volatile"},"color":"gold"},{"text":" ticks","color":"gold","bold":false,"hover_event":{"action":"show_text","value":{"text":"20 ticks equals to 1 second. The default 30 ticks equals 1.5 seconds"}}},{"text":" [","color":"gold","bold":true},{"text":" - ","bold":true,"color":"red","click_event":{"action":"run_command","command":"/function siscu:entities/creeper/config/base_reduce"},"hover_event":{"action":"show_text","value":{"text":"Reduce mean fuse time"}}},{"text":" + ","bold":true,"color":"dark_green","click_event":{"action":"run_command","command":"/function siscu:entities/creeper/config/base_add"},"hover_event":{"action":"show_text","value":{"text":"Increase mean fuse time"}}},{"text":"]","color":"gold","bold":true}]
tellraw @s [{"text":"- Fuse variation:      ","bold":false,"color":"green","hover_event":{"action":"show_text","value":{"text":"Tick variation on a creeper fuse"}}},{"text":"\u00B1","color":"gold","bold":false},{"score":{"name":"creeper_var","objective":"siscu.volatile"},"color":"gold","hover_event":{"action":"show_text","value":[{"text":"Between "},{"score":{"name":"creeper_min","objective":"siscu.integer"}},{"text":" and "},{"score":{"name":"creeper_max","objective":"siscu.integer"}},{"text":" ticks"}]}},{"text":" ticks","color":"gold","bold":false,"hover_event":{"action":"show_text","value":[{"text":"Between "},{"score":{"name":"creeper_min","objective":"siscu.integer"}},{"text":" and "},{"score":{"name":"creeper_max","objective":"siscu.integer"}},{"text":" ticks"}]}},{"text":" [","color":"gold","bold":true},{"text":" - ","bold":true,"color":"red","click_event":{"action":"run_command","command":"/function siscu:entities/creeper/config/variation_reduce"},"hover_event":{"action":"show_text","value":{"text":"Reduce variation"}}},{"text":" + ","bold":true,"color":"dark_green","click_event":{"action":"run_command","command":"/function siscu:entities/creeper/config/variation_add"},"hover_event":{"action":"show_text","value":{"text":"Increase variation"}}},{"text":"]","color":"gold","bold":true}]
execute if score creeper_min siscu.integer matches 0 run tellraw @s [{"text":"\u26A0 Fun! With the current configuration creepers will explode instantly when spawning \u26A0","color":"red"}]
execute if score creeper_min siscu.integer matches 1..15 run tellraw @s [{"text":"\u26A0 With the current configuration creepers might explode too fast \u26A0","color":"red"}]
execute if score creeper_max siscu.integer matches 45.. run tellraw @s [{"text":"\u26A0 With the current configuration creepers might take too long to explode \u26A0","color":"red"}]