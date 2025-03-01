
scoreboard players set players_sleeping siscu.sleep_time 0
scoreboard players set conditions_met siscu.sleep_time 0
scoreboard players set SkipNight siscu.sleep_time 0

execute as @a[gamemode=!spectator] store result score @s siscu.sleep_time run data get entity @s SleepTimer

execute as @a[gamemode=!spectator] if score @s siscu.sleep_time matches 1.. run scoreboard players add players_sleeping siscu.sleep_time 1
execute as @a[gamemode=!spectator] if score @s siscu.sleep_time matches 99.. run scoreboard players add conditions_met siscu.sleep_time 1

execute if score conditions_met siscu.sleep_time = players_sleeping siscu.sleep_time if score players_sleeping siscu.sleep_time >= player_percentage siscu.day run scoreboard players set SkipNight siscu.sleep_time 1

execute if score SkipNight siscu.sleep_time matches 1 run function siscu:world/day_features/day_set_morning
execute if score SkipNight siscu.sleep_time matches 1 run weather clear
execute if score SkipNight siscu.sleep_time matches 1 as @a run function siscu:world/day_features/announce_day/split
execute unless score SkipNight siscu.sleep_time matches 0 run return run scoreboard players set SkipNight siscu.sleep_time 0
execute if predicate siscu:world/check_nighttime run schedule function siscu:world/day_features/sleeping 1t