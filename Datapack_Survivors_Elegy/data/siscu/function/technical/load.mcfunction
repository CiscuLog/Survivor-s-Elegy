#create scoreboards
execute unless data storage siscu:world {PackVersion:"alpha v0.9.3"} run function siscu:technical/load_first_time

#delete schedules
function siscu:technical/clear_schedules

#start functions
function siscu:technical/tick_1s
schedule function siscu:technical/tick_2s 2t
schedule function siscu:technical/tick_15s 4t
schedule function siscu:technical/tick_30s 6t
schedule function siscu:technical/tick_2m 8t
execute if score do_daylight_cycle siscu.day matches 1 unless score daytime_speed siscu.day matches 1 run function siscu:world/day_features/advance
# distribution of general schedules in a single tick:
# [1s,  ,2s,2s,15s,  ,30s,30s,2m,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ,  ]
# [  ,  ,  ,  ,XX ,  ,   ,   ,  ,XX,  ,  ,  ,  ,XX,  ,  ,  ,  ,XX] (Plantoid)
# [  ,  ,D ,  ,   ,  ,D  ,T  ,  ,  ,D ,  ,  ,  ,D ,  ,  ,  ,D ,  ] # Cauldron (data, temp)
# [  ,MD,  ,  ,   ,MD,   ,   ,  ,MD,  ,  ,  ,MD,  ,  ,  ,MD,  ,  ] # Mirage displays
# [  ,  ,  ,  ,XX ,XX,XX , ... ] (drowning zombie, ends between 1 and 300 ticks)

# Remove advancements
execute as @a run function siscu:technical/clear_advancements

# Others
function siscu:advancement/clear_connections