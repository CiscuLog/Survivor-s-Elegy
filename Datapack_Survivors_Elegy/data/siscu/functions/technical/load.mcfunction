#create scoreboards
execute unless data storage siscu:world {PackVersion:"0.4.4"} run function siscu:technical/load_first_time

#delete schedules
function siscu:technical/clear_schedules

#start functions
function siscu:technical/tick_1s_schedule
schedule function siscu:technical/tick_2s 3t
schedule function siscu:technical/tick_15s 5t
schedule function siscu:technical/tick_30s 6t
function siscu:world/day_features/advance