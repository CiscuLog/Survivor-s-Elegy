execute as @a store result score @s siscu.sleep_time run data get entity @s SleepTimer
execute as @a unless score @s siscu.sleep_time matches 99.. run scoreboard players add SkipNight siscu.sleep_time 1
execute as @a at @s if block ~ ~ ~ #beds[occupied=true] if score SkipNight siscu.sleep_time matches 0 run function siscu:world/day_features/day_set_morning
execute as @a at @s if block ~ ~ ~ #beds[occupied=true] if score SkipNight siscu.sleep_time matches 0 run function siscu:world/day_features/start_day
scoreboard players set SkipNight siscu.sleep_time 0
execute if predicate siscu:world/check_nighttime run schedule function siscu:world/day_features/sleeping 1t