#create scoreboards
execute unless data storage siscu:world {PackVersion:"alpha v0.8.1"} run function siscu:technical/load_first_time

#delete schedules
function siscu:technical/clear_schedules

# Check for loot table server incompatibilities
scoreboard players set random_min siscu.volatile 1
scoreboard players set random_max siscu.volatile 1
execute store result score server_status siscu.integer run loot spawn ~ ~ ~ loot siscu:gameplay/generic_randomiser

#start functions
function siscu:technical/tick_1s
schedule function siscu:technical/tick_2s 2t
schedule function siscu:technical/tick_15s 4t
schedule function siscu:technical/tick_30s 6t
execute if score do_daylight_cycle siscu.day matches 1 unless score daytime_speed siscu.day matches 1 run function siscu:world/day_features/advance

# Remove advancements
advancement revoke @a only siscu:entities/player_sleep
advancement revoke @a only siscu:items/use/custom_armor_helmet
advancement revoke @a only siscu:items/use/custom_armor_chestplate
advancement revoke @a only siscu:items/use/custom_armor_leggings
advancement revoke @a only siscu:items/use/custom_armor_boots
advancement revoke @a only siscu:items/use/custom_weapon_mainhand
advancement revoke @a only siscu:items/use/config_hold
advancement revoke @a only siscu:items/use/config_use