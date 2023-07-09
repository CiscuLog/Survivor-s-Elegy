#create scoreboards
execute unless data storage siscu:world {PackVersion:"alpha v0.7.3"} run function siscu:technical/load_first_time

#delete schedules
function siscu:technical/clear_schedules

# Check for loot table server incompatibilities
scoreboard players set random_min siscu.volatile 1
scoreboard players set random_max siscu.volatile 1
execute store result score server_status siscu.integer run loot spawn ~ ~ ~ loot siscu:gameplay/generic_randomiser

#start functions
function siscu:technical/tick_1s_schedule
schedule function siscu:technical/tick_2s 3t
schedule function siscu:technical/tick_15s 5t
schedule function siscu:technical/tick_30s 6t
execute if score do_daylight_cycle siscu.day matches 1 unless score daytime_speed siscu.day matches 1 run function siscu:world/day_features/advance

# Remove advancements
advancement revoke @a only siscu:entities/player_sleep