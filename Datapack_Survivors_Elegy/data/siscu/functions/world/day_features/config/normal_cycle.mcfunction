execute if score daytime_speed siscu.day matches 1 if score do_daylight_cycle siscu.day matches 1 run gamerule doDaylightCycle true
execute unless score daytime_speed siscu.day matches 1 run gamerule doDaylightCycle false
execute if score do_daylight_cycle siscu.day matches 0 run gamerule doDaylightCycle false
execute unless score daytime_speed siscu.day matches 1 if score do_daylight_cycle siscu.day matches 1 run schedule function siscu:world/day_features/advance 1t
execute if score daytime_speed siscu.day matches 1 run schedule clear siscu:world/day_features/advance