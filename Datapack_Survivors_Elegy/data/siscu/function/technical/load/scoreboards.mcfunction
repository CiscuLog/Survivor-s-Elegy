
# Technical
# mutable and reusable scores
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.volatile", type:"dummy", display: {"text":"Volatile Data","color":"light_purple"}}
# fixed scores, read-only
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.integer", type:"dummy", display: {"text":"Int","color":"gold"}}
# config data, writable via config menu
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.config", type:"dummy", display: {"text":"Int","color":"gold"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.debug_panel", type:"dummy", display: {"text":"Info","color":"gold"}}

# World
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.sleep_time", type:"dummy", display: {"text":"Sleep Time","color":"red"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.day", type:"dummy", display: {"text":"Day","color":"aqua"}}

# Players
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.death", type:"deathCount", display: {"text":"Single_dead","color":"gold"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.dimension", type:"dummy", display: {"text":"Dimension","color":"dark_green"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.entity_hit", type:"dummy", display: {"text":"Hits on entity"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.grass_stealth", type:"dummy", display: {"text":"Grass Stealth","color":"green"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.left_game", type:"minecraft.custom:minecraft.leave_game", display: {"text":"Games Left","color":"white"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.spam_lectern", type:"dummy", display: {"text":"Lectern Spamming"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.spam_lectern_dismiss", type:"trigger", display: {"text":"Lectern Spam Message"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.phage_buildup", type:"dummy", display: {text:"Phage buildup",color:"dark_green"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.use_fungus", type:"minecraft.used:minecraft.warped_fungus_on_a_stick", display: {"text":"Use","color":"aqua"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.warped_food", type:"dummy", display: {"text":"Warped Food","color":"aqua"}}

# Items
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.config_cooldown", type:"dummy", display: {"text":"Config Cooldown","color":"gold"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.enchantment_reroll", type:"dummy", display: {"text":"Enchantment Reroll Data","color":"dark_purple"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.light_sensor_cooldown", type:"dummy", display: {"text":"Light Sensor Cooldown","color":"gold"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.stray_armor", type:"dummy", display: {"text":"Stray Armor","color":"aqua"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.tofu_boost", type:"dummy", display: {"text":"Boost Main","color": "red"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.tofu_boost_1", type:"dummy", display: {"text":"Boost 1","color": "red"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.tofu_boost_2", type:"dummy", display: {"text":"Boost 2","color": "red"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.tofu_boost_3", type:"dummy", display: {"text":"Boost 3","color": "red"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.tofu_boost_4", type:"dummy", display: {"text":"Boost 4","color": "red"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.tofu_boost_5", type:"dummy", display: {"text":"Boost 5","color": "red"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.use_goat_horn", type:"minecraft.used:minecraft.goat_horn", display: {"text":"Horn"}}

# Blocks
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.balancer", type:"dummy", display: {"text":"Tick Load Balancer"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.broth_data", type:"dummy", display: {"text":"Broth Data","color":"gold"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.broth_ingredients", type:"dummy", display: {"text":"Amount of Broth Ingredients","color":"gold"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.broth_temperature", type:"dummy", display: {"text":"Broth Temperature","color":"red"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.fire_spring", type:"dummy", display: {"text":"Fire Spring","color":"yellow"}}

# Entities
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.entity_health", type:"dummy", display: {"text":"Health","color":"red"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.item_frame_inv", type:"dummy", display: {"text":"Frame Invisibility","color":"aqua"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.rotting_mob", type:"dummy", display: {"text":"Rotting Mobs","color":"dark_green"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.trader_timer", type:"dummy", display: {"text":"Trader Pet Timer","color":"blue"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.withering", type:"dummy", display: {"text":"Withering","color":"dark_gray","font":"siscu_se:piglinalt"}}
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.zombifying", type:"dummy", display: {"text":"Zombifying","color":"dark_green"}}

# Enchantments
function siscu:technical/scoreboards/add_scoreboard {name:"siscu.sunburn", type:"dummy", display: {"text":"Sunburn","color":"gold"}}
