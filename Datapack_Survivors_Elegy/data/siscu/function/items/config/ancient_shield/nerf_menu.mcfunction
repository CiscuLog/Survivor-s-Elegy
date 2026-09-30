
function siscu:config/template/header {title:"Shield Nerf Config",color:"aqua",return:"siscu:items/config/menu"}
#tellraw @s [{"translate":"\n\n\n\n%====== Shield Nerf Config ======[","bold":true,"color":"aqua"},{"text":"Return","font":"siscu_se:superscript","bold":false,"color":"red","click_event":{"action":"run_command","command":"/function siscu:items/config/menu"},"hover_event":{"action":"show_text","value":{"text":"Return to menu"}}},{"text":"]","color":"aqua"}]

tellraw @s [{text:"",color:"white",bold:false},{"text":"About: ","bold":true},{"text":" Shields have been nerfed to partially block explosions, instead of blocking all the damage. With this nerf, shields will block roughly 75% of any explosion damage.\n"}]

# Control
execute unless score shield_nerf siscu.integer matches 1 run tellraw @s [{"text":"- Shield Nerf is: ","bold":false,"color":"gold"},{"text":" [Disabled]\n","bold":true,"color":"red","click_event":{"action":"run_command","command":"/function siscu:config/template/binary_enable {score:\"shield_nerf\",scoreboard:\"siscu.integer\",function:\"siscu:items/config/ancient_shield/nerf_menu\"}"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]

execute if score shield_nerf siscu.integer matches 1 run tellraw @s [{"text":"- Shield Nerf is: ","bold":false,"color":"gold"},{"text":" [Enabled]\n","bold":true,"color":"green","click_event":{"action":"run_command","command":"/function siscu:config/template/binary_disable {score:\"shield_nerf\",scoreboard:\"siscu.integer\",function:\"siscu:items/config/ancient_shield/nerf_menu\"}"},"hover_event":{"action":"show_text","value":{"text":"Click to change"}}}]

tellraw @s [{"text":"\n"}]