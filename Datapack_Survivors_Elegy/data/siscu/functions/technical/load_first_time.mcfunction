# Storages
data merge storage siscu:world {PackVersion:"alpha v0.8.0"}
execute unless data storage siscu:world DragonSlayer run data merge storage siscu:world {DragonSlayer:"null"}

#set gamerules
gamerule doInsomnia true
gamerule doDaylightCycle false

#delete old scoreboards

#create scoreboards
scoreboard objectives add siscu.bees dummy {"text":"Bees","color":"gold"}
scoreboard objectives add siscu.day dummy {"text":"Day","color":"cyan"}
scoreboard objectives add siscu.death deathCount {"text":"Single_dead","color":"gold"}
scoreboard objectives add siscu.dimension dummy {"text":"Dimension","color":"dark_green"}
scoreboard objectives add siscu.grass_stealth dummy {"text":"Grass Stealth","color":"green"}
scoreboard objectives add siscu.integer dummy {"text":"Int","color":"gold"}
scoreboard objectives add siscu.sleep_time dummy {"text":"Sleep Time","color":"red"}
scoreboard objectives add siscu.use_carrot minecraft.used:minecraft.carrot_on_a_stick {"text":"Use","color":"gold"}
scoreboard objectives add siscu.use_goat_horn minecraft.used:minecraft.goat_horn {"text":"Horn"}
scoreboard objectives add siscu.volatile dummy {"text":"Volatile Data","color":"purple"}
scoreboard objectives add siscu.y_rotation dummy {"text":"Y rotation","color":"gold"}
scoreboard objectives add siscu.y_rotation_int dummy {"text":"Y rotation: int","color":"gold"}
scoreboard objectives add siscu.y_rotation_decimal dummy {"text":"Y rotation: decimal","color":"gold"}

scoreboard objectives add siscu.withering dummy {"text":"Withering","color":"dark_gray","font":"siscu_se:piglinalt"}
scoreboard objectives add siscu.warped_food dummy {"text":"Warped Food","color":"aqua"}

scoreboard objectives add siscu.entity_health dummy {"text":"Health","color":"red"}
scoreboard objectives add siscu.item_frame_inv dummy {"text":"Frame Invisibility","color":"cyan"}
scoreboard objectives add siscu.rotting_mob dummy {"text":"Rotting Mobs","color":"dark_green"}
scoreboard objectives add siscu.fire_spring dummy {"text":"Fire Spring","color":"yellow"}
scoreboard objectives add siscu.zombifying dummy {"text":"Zombifying","color":"dark_green"}

#set scoreboards
scoreboard players set @a siscu.use_carrot 0
execute unless score death_message siscu.integer matches 0.. run scoreboard players set death_message siscu.integer 1
scoreboard players set server_randN siscu.volatile 0
## constants
scoreboard players set -1 siscu.integer -1
scoreboard players set 1 siscu.integer 1
scoreboard players set 2 siscu.integer 2
scoreboard players set 3 siscu.integer 3
scoreboard players set 5 siscu.integer 5
scoreboard players set 7 siscu.integer 7
scoreboard players set 10 siscu.integer 10
scoreboard players set 16 siscu.integer 16
scoreboard players set 20 siscu.integer 20
scoreboard players set 30 siscu.integer 30
scoreboard players set 40 siscu.integer 40
scoreboard players set 60 siscu.integer 60
scoreboard players set 100 siscu.integer 100
scoreboard players set 200 siscu.integer 200
## daytime variables
execute unless score daytime_speed siscu.day matches 1.. run scoreboard players set daytime_speed siscu.day 3
execute unless score sleep_module_on siscu.day matches 0.. run scoreboard players set sleep_module_on siscu.day 1
execute unless score do_daylight_cycle siscu.day matches 0.. run scoreboard players set do_daylight_cycle siscu.day 1
execute unless score day_announcement siscu.day matches 0..1 run scoreboard players set day_announcement siscu.day 1
function siscu:world/day_features/config/normal_cycle
## entities
scoreboard players set enderman_block siscu.integer 117
scoreboard players set creeper_max siscu.integer 35
scoreboard players set creeper_min siscu.integer 25
## fire spring variables
scoreboard players set fire_spring_lava siscu.integer 0
scoreboard players set fire_spring_flame siscu.integer 50
scoreboard players set fire_spring_intense siscu.integer 280
scoreboard players set fire_spring_sound siscu.integer 298
scoreboard players set fire_spring_limit siscu.integer 300
## phage
execute unless score phage_enabled siscu.integer matches 0..1 run scoreboard players set phage_enabled siscu.integer 1
execute unless score zombie_death_enabled siscu.integer matches 0..1 run scoreboard players set zombie_death_enabled siscu.integer 1
execute unless score zombie_timer_limit siscu.integer matches 0.. run scoreboard players set zombie_timer_limit siscu.integer 120
scoreboard players operation zombie_timer_limit_2 siscu.integer = zombie_timer_limit siscu.integer
scoreboard players operation zombie_timer_limit_2 siscu.integer += 60 siscu.integer
## withering
execute unless score withering siscu.integer matches 0.. run scoreboard players set withering siscu.integer 1
execute unless score withering_timer siscu.integer matches 0.. run scoreboard players set withering_timer siscu.integer 20
function siscu:world/withering/config/set_all_scores
## rotting variables
execute unless score rotting siscu.integer matches 0.. run scoreboard players set rotting siscu.integer 1
execute unless score rotting_random_limit siscu.integer matches 0.. run scoreboard players set rotting_random_limit siscu.integer 10
execute unless score rotting_timer_limit siscu.integer matches 0.. run scoreboard players set rotting_timer_limit siscu.integer 15

# announce
tellraw @a [{"text":"   Survivor's Elegy","color":"gold","bold":"true"}]
tellraw @a [{"text":"Succesfully updated to version ","color":"yellow","bold":"false"},{"storage":"siscu:world","nbt":"PackVersion","bold":"true"}]