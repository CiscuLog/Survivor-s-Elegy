
scoreboard players set players_sleeping siscu.sleep_time 0
scoreboard players set conditions_met siscu.sleep_time 0
scoreboard players set SkipNight siscu.sleep_time 0

execute as @a[gamemode=!spectator] at @s if block ~ ~ ~ #beds[occupied=true] run scoreboard players add players_sleeping siscu.sleep_time 1

execute as @a[gamemode=!spectator] store result score @s siscu.sleep_time run data get entity @s SleepTimer
execute as @a[gamemode=!spectator] if score @s siscu.sleep_time matches 99.. run scoreboard players add conditions_met siscu.sleep_time 1

execute if score conditions_met siscu.sleep_time = players_sleeping siscu.sleep_time if score players_sleeping siscu.sleep_time >= player_percentage siscu.day run scoreboard players set SkipNight siscu.sleep_time 1

execute if score SkipNight siscu.sleep_time matches 1 run function siscu:world/day_features/day_set_morning
execute if score SkipNight siscu.sleep_time matches 1 run weather clear
execute as @a if score SkipNight siscu.sleep_time matches 1 if score day_announcement siscu.day matches 1 run function siscu:world/day_features/start_day
execute if predicate siscu:world/check_nighttime run schedule function siscu:world/day_features/sleeping 1t