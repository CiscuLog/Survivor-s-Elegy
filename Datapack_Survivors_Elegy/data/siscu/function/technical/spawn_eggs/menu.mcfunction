tellraw @s [{"translate":"\n\n\n\n%===Spawn Egg Inventory===[","bold":true,"color":"aqua"},{"text":"Return","font":"siscu_se:superscript","bold":false,"color":"red","clickEvent":{"action":"run_command","value":"/function siscu:config"},"hoverEvent":{"action":"show_text","contents":{"text":"Return to menu"}}},{"text":"]","color":"aqua"}]

tellraw @s [{"text":"About: ","color":"white","bold":true},{"text":" Survivor's Elegy adds a variety of new mob variants. Click on any of the following icons to get a spawn egg for any of the mobs.\n","color":"white","bold":false}]
tellraw @s [{"font":"siscu_se:icons","text":"\u0101","clickEvent":{"action":"run_command","value":"/loot give @s loot siscu:items/spawn_eggs/lush_zombie"},"hoverEvent":{"action":"show_text","contents":{"translate":"item.siscu.spawn_egg_lush_zombie"}}},\
\
{"font":"siscu_se:icons","text":"\u0102","clickEvent":{"action":"run_command","value":"/loot give @s loot siscu:items/spawn_eggs/amethyst_zombie"},"hoverEvent":{"action":"show_text","contents":{"translate":"item.siscu.spawn_egg_amethyst_zombie"}}},\
\
{"text":"\u0103","clickEvent":{"action":"run_command","value":"/loot give @s loot siscu:items/spawn_eggs/dripstone_zombie"},"hoverEvent":{"action":"show_text","contents":{"translate":"item.siscu.spawn_egg_dripstone_zombie"}}},\
\
{"text":"\u0104","clickEvent":{"action":"run_command","value":"/loot give @s loot siscu:items/spawn_eggs/infected_zombie"},"hoverEvent":{"action":"show_text","contents":{"translate":"item.siscu.spawn_egg_infected_zombie"}}},\
\
{"text":"\u0105","clickEvent":{"action":"run_command","value":"/loot give @s loot siscu:items/spawn_eggs/stray_zombie"},"hoverEvent":{"action":"show_text","contents":{"translate":"item.siscu.spawn_egg_stray_zombie"}}},\
\
{"text":"\u0106","clickEvent":{"action":"run_command","value":"/loot give @s loot siscu:items/spawn_eggs/citizen_zombie"},"hoverEvent":{"action":"show_text","contents":{"translate":"item.siscu.spawn_egg_citizen_zombie"}}},\
\
{"font":"siscu_se:icons","text":"\u0201","clickEvent":{"action":"run_command","value":"/loot give @s loot siscu:items/spawn_eggs/villager_skeleton"},"hoverEvent":{"action":"show_text","contents":{"translate":"item.siscu.spawn_egg_villager_skeleton"}}},\
\
{"text":"\u0202","clickEvent":{"action":"run_command","value":"/loot give @s loot siscu:items/spawn_eggs/piglin_skeleton"},"hoverEvent":{"action":"show_text","contents":{"translate":"item.siscu.spawn_egg_piglin_skeleton"}}},\
\
{"text":"\u0203","clickEvent":{"action":"run_command","value":"/loot give @s loot siscu:items/spawn_eggs/husk_skeleton"},"hoverEvent":{"action":"show_text","contents":{"text":"Husk Skeleton"}}},\
\
{"text":"\u0301","clickEvent":{"action":"run_command","value":"/loot give @s loot siscu:items/spawn_eggs/villager_wither_skeleton"},"hoverEvent":{"action":"show_text","contents":{"translate":"item.siscu.spawn_egg_villager_wither_skeleton"}}},\
\
{"text":"\u0302","clickEvent":{"action":"run_command","value":"/loot give @s loot siscu:items/spawn_eggs/piglin_wither_skeleton"},"hoverEvent":{"action":"show_text","contents":{"translate":"item.siscu.spawn_egg_piglin_wither_skeleton"}}}]

tellraw @s [{"text":"\n"}]