
# Storages
## check if it's updating from pre 1.21.4
# warn if PackVersion exists but MajorUpdate doesn't
execute if data storage siscu:world PackVersion unless data storage siscu:world MajorUpdate run schedule function siscu:technical/load/warning 5s

# Update (siscu:world)
data merge storage siscu:world {PackVersion:"v1.0.8",RPVersion:6,MajorUpdate:1}
execute unless data storage siscu:world DragonSlayer run data merge storage siscu:world {DragonSlayer:"null"}
execute unless data storage siscu:world day_length run data merge storage siscu:world {day_length:3}

# Database (siscu:database)
function siscu:items/use/enchanter_book/enchantment_list/list
function siscu:entities/enderman/list

#set gamerules
gamerule advance_time false

#create scoreboards
scoreboard objectives add siscu.broth_data dummy {"text":"Broth Data","color":"gold"}
scoreboard objectives add siscu.broth_temperature dummy {"text":"Broth Temperature","color":"red"}
scoreboard objectives add siscu.config_cooldown dummy {"text":"Config Cooldown","color":"gold"}
scoreboard objectives add siscu.day dummy {"text":"Day","color":"aqua"}
scoreboard objectives add siscu.death deathCount {"text":"Single_dead","color":"gold"}
scoreboard objectives add siscu.debug_panel dummy {"text":"Info","color":"gold"}
scoreboard objectives add siscu.dimension dummy {"text":"Dimension","color":"dark_green"}
scoreboard objectives add siscu.enchantment_reroll dummy {"text":"Enchantment Reroll Data","color":"dark_purple"}
scoreboard objectives add siscu.grass_stealth dummy {"text":"Grass Stealth","color":"green"}
scoreboard objectives add siscu.integer dummy {"text":"Int","color":"gold"}
scoreboard objectives add siscu.left_game minecraft.custom:minecraft.leave_game {"text":"Games Left","color":"white"}
scoreboard objectives add siscu.light_sensor_cooldown dummy {"text":"Light Sensor Cooldown","color":"gold"}
scoreboard objectives add siscu.sleep_time dummy {"text":"Sleep Time","color":"red"}
scoreboard objectives add siscu.update_item trigger {"text":"Update item","color":"white"}
scoreboard objectives add siscu.use_fungus minecraft.used:minecraft.warped_fungus_on_a_stick {"text":"Use","color":"aqua"}
scoreboard objectives add siscu.use_goat_horn minecraft.used:minecraft.goat_horn {"text":"Horn"}
scoreboard objectives add siscu.volatile dummy {"text":"Volatile Data","color":"light_purple"}
scoreboard objectives add siscu.y_rotation dummy {"text":"Y rotation","color":"gold"}
scoreboard objectives add siscu.y_rotation_int dummy {"text":"Y rotation: int","color":"gold"}
scoreboard objectives add siscu.y_rotation_decimal dummy {"text":"Y rotation: decimal","color":"gold"}

scoreboard objectives add siscu.stray_armor dummy {"text":"Stray Armor","color":"aqua"}
scoreboard objectives add siscu.withering dummy {"text":"Withering","color":"dark_gray","font":"siscu_se:piglinalt"}
scoreboard objectives add siscu.warped_food dummy {"text":"Warped Food","color":"aqua"}

scoreboard objectives add siscu.entity_health dummy {"text":"Health","color":"red"}
scoreboard objectives add siscu.item_frame_inv dummy {"text":"Frame Invisibility","color":"aqua"}
scoreboard objectives add siscu.rotting_mob dummy {"text":"Rotting Mobs","color":"dark_green"}
scoreboard objectives add siscu.fire_spring dummy {"text":"Fire Spring","color":"yellow"}
scoreboard objectives add siscu.zombifying dummy {"text":"Zombifying","color":"dark_green"}
scoreboard objectives add siscu.trader_timer dummy {"text":"Trader Pet Timer","color":"blue"}

scoreboard objectives add siscu.tofu_boost dummy {"text":"Boost Main","color": "red"}
scoreboard objectives add siscu.tofu_boost_1 dummy {"text":"Boost 1","color": "red"}
scoreboard objectives add siscu.tofu_boost_2 dummy {"text":"Boost 2","color": "red"}
scoreboard objectives add siscu.tofu_boost_3 dummy {"text":"Boost 3","color": "red"}
scoreboard objectives add siscu.tofu_boost_4 dummy {"text":"Boost 4","color": "red"}
scoreboard objectives add siscu.tofu_boost_5 dummy {"text":"Boost 5","color": "red"}


#set scoreboards
execute unless score death_message siscu.integer matches 0.. run scoreboard players set death_message siscu.integer 1
## constants
scoreboard players set -1 siscu.integer -1
scoreboard players set 2 siscu.integer 2
scoreboard players set 8 siscu.integer 8
scoreboard players set 10 siscu.integer 10
scoreboard players set 20 siscu.integer 20
scoreboard players set 60 siscu.integer 60
scoreboard players set 100 siscu.integer 100
## daytime variables
execute unless score daytime_speed siscu.day matches 1.. run scoreboard players set daytime_speed siscu.day 3
execute unless score sleep_module_on siscu.day matches 0.. run scoreboard players set sleep_module_on siscu.day 1
execute unless score do_daylight_cycle siscu.day matches 0.. run scoreboard players set do_daylight_cycle siscu.day 1
execute unless score day_announcement siscu.day matches 0..1 run scoreboard players set day_announcement siscu.day 1
function siscu:world/day_features/config/normal_cycle
## entities
scoreboard players set enderman_block siscu.integer 117
execute unless score creeper_fuse siscu.integer matches 0.. run scoreboard players set creeper_fuse siscu.integer 1
scoreboard players set creeper_max siscu.integer 35
scoreboard players set creeper_min siscu.integer 25
execute unless score fletcher_stick_nerf siscu.integer matches 0.. run scoreboard players set fletcher_stick_nerf siscu.integer 1
execute unless score librarian_mending_nerf siscu.integer matches 0.. run scoreboard players set librarian_mending_nerf siscu.integer 1
execute unless score warden_retreat siscu.integer matches 0.. run scoreboard players set warden_retreat siscu.integer 1
execute unless score fire_springs_enabled siscu.integer matches 0.. run scoreboard players set fire_springs_enabled siscu.integer 1
## fire spring variables
scoreboard players set fire_spring_lava siscu.integer 0
scoreboard players set fire_spring_flame siscu.integer 50
scoreboard players set fire_spring_intense siscu.integer 280
scoreboard players set fire_spring_sound siscu.integer 298
scoreboard players set fire_spring_limit siscu.integer 300
# items
scoreboard players set vibrations_max siscu.integer 7
## phage
execute unless score phage_enabled siscu.integer matches 0..1 run scoreboard players set phage_enabled siscu.integer 1
execute unless score zombie_death_enabled siscu.integer matches 0..1 run scoreboard players set zombie_death_enabled siscu.integer 1
execute unless score zombie_timer_limit siscu.integer matches 0.. run scoreboard players set zombie_timer_limit siscu.integer 90
scoreboard players operation zombie_timer_limit_2 siscu.integer = zombie_timer_limit siscu.integer
scoreboard players operation zombie_timer_limit_2 siscu.integer += 60 siscu.integer
execute unless score zombie_min_health siscu.integer matches 0.. run scoreboard players set zombie_min_health siscu.integer 8
## withering
execute unless score withering siscu.integer matches 0.. run scoreboard players set withering siscu.integer 1
execute unless score withering_timer siscu.integer matches 0.. run scoreboard players set withering_timer siscu.integer 20
## rotting variables
execute unless score rotting siscu.integer matches 0.. run scoreboard players set rotting siscu.integer 1
execute unless score rotting_random_limit siscu.integer matches 0.. run scoreboard players set rotting_random_limit siscu.integer 10
execute unless score rotting_timer_limit siscu.integer matches 0.. run scoreboard players set rotting_timer_limit siscu.integer 15

# announce
tellraw @a [{"text":"   Survivor's Elegy","color":"gold","bold":true}]
tellraw @a [{"text":"Succesfully updated to version ","color":"yellow","bold":false},{"storage":"siscu:world","nbt":"PackVersion","bold":true}]
