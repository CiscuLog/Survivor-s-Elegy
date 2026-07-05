
function siscu:config/template/header {title:"Phage Configuration Panel",color:"yellow",return:"siscu:config"}
#tellraw @s [{"translate":"\n\n\n\n%===Phage Configuration Panel===[","bold":true,"color":"yellow"},{"text":"Return","font":"siscu_se:superscript","bold":false,"color":"red","click_event":{"action":"run_command","command":"/function siscu:config"},"hover_event":{"action":"show_text","value":{"text":"Return to menu"}}},{"text":"]"}]

tellraw @s [{"text":"About: ","color":"white","bold":true},{"text":"Turns entities and players into their zombie counterparts or kills them otherwise.\nAny player affected with Phage will eventually zombify, losing the ability to place blocks and suffering a periodical decay on their max health until they die.\nThe zombie status gets lost on respawn.\n","color":"white","bold":false}]

execute if score phage_enabled siscu.integer matches 1 run tellraw @s [{"text":"- Phage is: ","bold":false,"color":"gold"},{"text":" [Enabled]","bold":true,"color":"green","click_event":{"action":"run_command","command":"/function siscu:entities/phage/config/disable"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]
execute unless score phage_enabled siscu.integer matches 1 run tellraw @s [{"text":"- Phage is: ","bold":false,"color":"gold"},{"text":" [Disabled]","bold":true,"color":"red","click_event":{"action":"run_command","command":"/function siscu:entities/phage/config/enable"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]

tellraw @s [{"text":"\n"}]