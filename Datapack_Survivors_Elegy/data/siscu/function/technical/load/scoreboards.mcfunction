
# Technical
# mutable and reusable scores
scoreboard objectives add siscu.volatile dummy {"text":"Volatile Data","color":"light_purple"}
# fixed scores, read-only
scoreboard objectives add siscu.integer dummy {"text":"Int","color":"gold"}
# config data, writable via config menu
scoreboard objectives add siscu.config dummy {"text":"Int","color":"gold"}
scoreboard objectives add siscu.debug_panel dummy {"text":"Info","color":"gold"}

# World
scoreboard objectives add siscu.sleep_time dummy {"text":"Sleep Time","color":"red"}
scoreboard objectives add siscu.day dummy {"text":"Day","color":"aqua"}

# Players
scoreboard objectives add siscu.death deathCount {"text":"Single_dead","color":"gold"}
scoreboard objectives add siscu.dimension dummy {"text":"Dimension","color":"dark_green"}
scoreboard objectives add siscu.entity_hit dummy {"text":"Hits on entity"}
scoreboard objectives add siscu.grass_stealth dummy {"text":"Grass Stealth","color":"green"}
scoreboard objectives add siscu.left_game minecraft.custom:minecraft.leave_game {"text":"Games Left","color":"white"}
scoreboard objectives add siscu.spam_lectern dummy {"text":"Lectern Spamming"}
scoreboard objectives add siscu.spam_lectern_dismiss trigger {"text":"Lectern Spam Message"}
scoreboard objectives add siscu.phage_buildup dummy {text:"Phage buildup",color:"dark_green"}
scoreboard objectives add siscu.use_fungus minecraft.used:minecraft.warped_fungus_on_a_stick {"text":"Use","color":"aqua"}
scoreboard objectives add siscu.warped_food dummy {"text":"Warped Food","color":"aqua"}

# Items
scoreboard objectives add siscu.config_cooldown dummy {"text":"Config Cooldown","color":"gold"}
scoreboard objectives add siscu.enchantment_reroll dummy {"text":"Enchantment Reroll Data","color":"dark_purple"}
scoreboard objectives add siscu.light_sensor_cooldown dummy {"text":"Light Sensor Cooldown","color":"gold"}
scoreboard objectives add siscu.stray_armor dummy {"text":"Stray Armor","color":"aqua"}
scoreboard objectives add siscu.tofu_boost dummy {"text":"Boost Main","color": "red"}
scoreboard objectives add siscu.tofu_boost_1 dummy {"text":"Boost 1","color": "red"}
scoreboard objectives add siscu.tofu_boost_2 dummy {"text":"Boost 2","color": "red"}
scoreboard objectives add siscu.tofu_boost_3 dummy {"text":"Boost 3","color": "red"}
scoreboard objectives add siscu.tofu_boost_4 dummy {"text":"Boost 4","color": "red"}
scoreboard objectives add siscu.tofu_boost_5 dummy {"text":"Boost 5","color": "red"}
scoreboard objectives add siscu.update_item trigger {"text":"Update item","color":"white"}
scoreboard objectives add siscu.use_goat_horn minecraft.used:minecraft.goat_horn {"text":"Horn"}

# Blocks
scoreboard objectives add siscu.balancer dummy {"text":"Tick Load Balancer"}
scoreboard objectives add siscu.broth_data dummy {"text":"Broth Data","color":"gold"}
scoreboard objectives add siscu.broth_ingredients dummy {"text":"Amount of Broth Ingredients","color":"gold"}
scoreboard objectives add siscu.broth_temperature dummy {"text":"Broth Temperature","color":"red"}
scoreboard objectives add siscu.fire_spring dummy {"text":"Fire Spring","color":"yellow"}

# Entities
scoreboard objectives add siscu.entity_health dummy {"text":"Health","color":"red"}
scoreboard objectives add siscu.item_frame_inv dummy {"text":"Frame Invisibility","color":"aqua"}
scoreboard objectives add siscu.rotting_mob dummy {"text":"Rotting Mobs","color":"dark_green"}
scoreboard objectives add siscu.trader_timer dummy {"text":"Trader Pet Timer","color":"blue"}
scoreboard objectives add siscu.withering dummy {"text":"Withering","color":"dark_gray","font":"siscu_se:piglinalt"}
scoreboard objectives add siscu.zombifying dummy {"text":"Zombifying","color":"dark_green"}
