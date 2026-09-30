# Inline menu (simple toggle)
# called from:
#function siscu:items/config/menu

$execute if score custom_fishing siscu.integer matches 1 run tellraw @s [{"text":"- New fish: ","bold":false,"color":"gold"},{"text":" [Enabled]","bold":true,"color":"blue","click_event":{"action":"run_command","command":"/function siscu:world/fishing/config/toggle {menu: \"$(menu)\"}"},"hover_event":{"action":"show_text","value":{"text":"Disable custom fish"}}}]
$execute unless score custom_fishing siscu.integer matches 1 run tellraw @s [{"text":"- New fish: ","bold":false,"color":"gold"},{"text":" [Disabled]","bold":true,"color":"gray","click_event":{"action":"run_command","command":"/function siscu:world/fishing/config/toggle {menu: \"$(menu)\"}"},"hover_event":{"action":"show_text","value":{"text":"Enable custom fish catches"}}}]
