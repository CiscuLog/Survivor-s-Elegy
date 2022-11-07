# First Day Check #
execute unless data storage siscu:world {FirstLogin:1} run function siscu:world/day_features/day_set_morning
execute unless data storage siscu:world {FirstLogin:1} run data modify storage siscu:world FirstLogin set value 1
execute if entity @s[tag=!breach_spawned] run function siscu:world/day_features/announce_day

# Summon breach #
execute if entity @s[tag=!breach_spawned] run function siscu:world/breach_spawn2