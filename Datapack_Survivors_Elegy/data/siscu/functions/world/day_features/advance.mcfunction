scoreboard players add daytime_speed_counter siscu.day 1
execute if score daytime_speed_counter siscu.day >= daytime_speed siscu.day run scoreboard players set daytime_speed_counter siscu.day 0
execute if score daytime_speed_counter siscu.day matches 0 run time add 1t

schedule function siscu:world/day_features/advance 1t