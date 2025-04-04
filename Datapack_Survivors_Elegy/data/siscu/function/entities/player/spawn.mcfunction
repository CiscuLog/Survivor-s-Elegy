# First Day Check #
execute store result score Day siscu.day run time query day
execute unless data storage siscu:world {FirstLogin:1} if score Day siscu.day matches 0 run function siscu:world/day_features/day_set_morning
# Give Config Book
execute unless data storage siscu:world {FirstLogin:1} run loot give @s loot siscu:items/operator_utilities/config
execute unless data storage siscu:world {FirstLogin:1} run data modify storage siscu:world FirstLogin set value 1
execute if entity @s[tag=!siscu.breach_spawned] run function siscu:world/day_features/announce_day

# Give Pamphlet
loot give @s loot siscu:items/tools/pamphlet

# Summon breach #
execute if entity @s[tag=!siscu.breach_spawned] run function siscu:world/breach_spawn

# Reload if the pack has not loaded for some reason
execute unless data storage siscu:world PackVersion run function siscu:technical/load/load