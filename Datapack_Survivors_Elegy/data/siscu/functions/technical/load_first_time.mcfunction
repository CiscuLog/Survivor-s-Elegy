# Storages
data merge storage siscu:world {PackVersion:"0.4.3"}
execute unless data storage siscu:world DragonSlayer run data merge storage siscu:world {DragonSlayer:"null"}

#set gamerules
gamerule doInsomnia false
gamerule doDaylightCycle false

#delete old scoreboards

#create scoreboards
scoreboard objectives add siscu.bees dummy {"text":"Bees","color":"gold"}
scoreboard objectives add siscu.day dummy {"text":"Day","color":"cyan"}
scoreboard objectives add siscu.death deathCount {"text":"Single_dead","color":"gold"}
scoreboard objectives add siscu.dimension dummy {"text":"Dimension","color":"dark_green"}
scoreboard objectives add siscu.integer dummy {"text":"Int","color":"gold"}
scoreboard objectives add siscu.sleep_time dummy {"text":"Sleep Time","color":"red"}
scoreboard objectives add siscu.test dummy {"text":"Weapon Data","color":"white"}
scoreboard objectives add siscu.UseCarrot minecraft.used:minecraft.carrot_on_a_stick {"text":"Use","color":"gold"}
scoreboard objectives add siscu.volatile dummy {"text":"Volatile Data","color":"purple"}
scoreboard objectives add siscu.x_pos dummy {"text":"X position","color":"red"}
scoreboard objectives add siscu.y_pos dummy {"text":"Y position","color":"red"}
scoreboard objectives add siscu.y_rotation dummy {"text":"Y rotation","color":"gold"}
scoreboard objectives add siscu.y_rotation_int dummy {"text":"Y rotation: int","color":"gold"}
scoreboard objectives add siscu.y_rotation_decimal dummy {"text":"Y rotation: decimal","color":"gold"}
scoreboard objectives add siscu.z_pos dummy {"text":"Z position","color":"red"}

scoreboard objectives add siscu.withering dummy {"text":"Withering","color":"dark_gray","font":"siscu_se:piglinalt"}
scoreboard objectives add siscu.warped_food dummy {"text":"Warped Food","color":"aqua"}

scoreboard objectives add siscu.block_holding dummy {"text":"Enderman Blocks","color":"light_purple"}
scoreboard objectives add siscu.pig_count dummy {"text":"Pig Breeding","color":"red"}
scoreboard objectives add siscu.skeleton_class dummy {"text":"Skeleton Class","color":"gray"}
scoreboard objectives add siscu.llama_color dummy {"text":"Llama Carpet","color":"purple"}
scoreboard objectives add siscu.item_frame_inv dummy {"text":"Frame Invisibility","color":"cyan"}
scoreboard objectives add siscu.rotting_mob dummy {"text":"Rotting Mobs","color":"dark_green"}
scoreboard objectives add siscu.fire_spring dummy {"text":"Fire Spring","color":"yellow"}
scoreboard objectives add siscu.zombifying dummy {"text":"Zombifying","color":"dark_green"}

#set scoreboards
scoreboard players set @a UseCarrot 0
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
## daytime variables
execute unless score daytime_speed siscu.day matches 1.. run scoreboard players set daytime_speed siscu.day 3
execute unless score sleep_module_on siscu.day matches 0.. run scoreboard players set sleep_module_on siscu.day 1
## fire spring variables
scoreboard players set fire_spring_lava siscu.integer 0
scoreboard players set fire_spring_flame siscu.integer 50
scoreboard players set fire_spring_intense siscu.integer 280
scoreboard players set fire_spring_sound siscu.integer 298
scoreboard players set fire_spring_limit siscu.integer 300
## withering
execute unless score withering siscu.integer matches 0..1 run scoreboard players set withering siscu.integer 1
## rotting variables
scoreboard players set rotting_random_limit siscu.integer 10
scoreboard players set rotting_timer_limit siscu.integer 15
scoreboard players set zombie_timer_limit siscu.integer 120
## entities
scoreboard players set select_block siscu.integer 117
## seed (unspecified pourposes)
scoreboard players set seed siscu.integer 3659

tellraw @a [{"text":"   Survivor's Elegy","color":"gold","bold":"true"}]
tellraw @a [{"text":"succesfully loaded for the first time","color":"yellow","bold":"false"}]