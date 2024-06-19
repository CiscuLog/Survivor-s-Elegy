advancement revoke @a only siscu:entities/player_sleep
function siscu:world/day_features/get_player_percentage
execute if score sleep_module_on siscu.day matches 1 run schedule function siscu:world/day_features/sleeping 1t