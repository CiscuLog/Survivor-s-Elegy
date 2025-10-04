tellraw @s [{"translate":"\n\n\n\n%===Spawn Egg Inventory===[","bold":true,"color":"aqua"},{"text":"Return","font":"siscu_se:superscript","bold":false,"color":"red","click_event":{"action":"run_command","command":"/function siscu:config"},"hover_event":{"action":"show_text","value":{"text":"Return to menu"}}},{"text":"]","color":"aqua"}]

tellraw @s [{"text":"About: ","color":"white","bold":true},{"text":" Survivor's Elegy adds a variety of new mob variants. Click on any of the following icons to get a spawn egg for any of the mobs.\n","color":"white","bold":false}]
tellraw @s [{"font":"siscu_se:icons","text":"\u0101","click_event":{"action":"run_command","command":"/loot give @s loot siscu:items/spawn_eggs/lush_zombie"},"hover_event":{"action":"show_text","value":{"translate":"item.siscu.spawn_egg_lush_zombie"}}},\
\
{"font":"siscu_se:icons","text":"\u0102","click_event":{"action":"run_command","command":"/loot give @s loot siscu:items/spawn_eggs/amethyst_zombie"},"hover_event":{"action":"show_text","value":{"translate":"item.siscu.spawn_egg_amethyst_zombie"}}},\
\
{"text":"\u0103","click_event":{"action":"run_command","command":"/loot give @s loot siscu:items/spawn_eggs/dripstone_zombie"},"hover_event":{"action":"show_text","value":{"translate":"item.siscu.spawn_egg_dripstone_zombie"}}},\
\
{"text":"\u0104","click_event":{"action":"run_command","command":"/loot give @s loot siscu:items/spawn_eggs/infected_zombie"},"hover_event":{"action":"show_text","value":{"translate":"item.siscu.spawn_egg_infected_zombie"}}},\
\
{"text":"\u0105","click_event":{"action":"run_command","command":"/loot give @s loot siscu:items/spawn_eggs/stray_zombie"},"hover_event":{"action":"show_text","value":{"translate":"item.siscu.spawn_egg_stray_zombie"}}},\
\
{"text":"\u0106","click_event":{"action":"run_command","command":"/loot give @s loot siscu:items/spawn_eggs/citizen_zombie"},"hover_event":{"action":"show_text","value":{"translate":"item.siscu.spawn_egg_citizen_zombie"}}},\
\
{"text":"\u0107","click_event":{"action":"run_command","command":"/loot give @s loot siscu:items/spawn_eggs/bogged_zombie"},"hover_event":{"action":"show_text","value":{"translate":"item.siscu.spawn_egg_bogged_zombie"}}},\
\
{"font":"siscu_se:icons","text":"\u0201","click_event":{"action":"run_command","command":"/loot give @s loot siscu:items/spawn_eggs/villager_skeleton"},"hover_event":{"action":"show_text","value":{"translate":"item.siscu.spawn_egg_villager_skeleton"}}},\
\
{"text":"\u0202","click_event":{"action":"run_command","command":"/loot give @s loot siscu:items/spawn_eggs/piglin_skeleton"},"hover_event":{"action":"show_text","value":{"translate":"item.siscu.spawn_egg_piglin_skeleton"}}},\
\
{"text":"\u0203","click_event":{"action":"run_command","command":"/loot give @s loot siscu:items/spawn_eggs/husk_skeleton"},"hover_event":{"action":"show_text","value":{"text":"Husk Skeleton"}}},\
\
{"text":"\u0301","click_event":{"action":"run_command","command":"/loot give @s loot siscu:items/spawn_eggs/villager_wither_skeleton"},"hover_event":{"action":"show_text","value":{"translate":"item.siscu.spawn_egg_villager_wither_skeleton"}}},\
\
{"text":"\u0302","click_event":{"action":"run_command","command":"/loot give @s loot siscu:items/spawn_eggs/piglin_wither_skeleton"},"hover_event":{"action":"show_text","value":{"translate":"item.siscu.spawn_egg_piglin_wither_skeleton"}}},\
\
{"text":"\u0401","click_event":{"action":"run_command","command":"/loot give @s loot siscu:items/spawn_eggs/fire_spring"},"hover_event":{"action":"show_text","value":{"translate":"item.siscu.spawn_egg_fire_spring"}}}\
]

tellraw @s [{"text":"\n"}]