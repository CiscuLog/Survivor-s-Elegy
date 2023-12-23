scoreboard players set day_minutes siscu.day 20
scoreboard players operation day_minutes siscu.day *= daytime_speed siscu.day
scoreboard players operation day_hours siscu.day = day_minutes siscu.day
scoreboard players operation day_hours_rem siscu.day = day_minutes siscu.day
scoreboard players operation day_hours siscu.day /= 60 siscu.integer
scoreboard players operation day_hours_rem siscu.day %= 60 siscu.integer

execute if score day_hours_rem siscu.day matches 0 run tellraw @a [{"translate":"One daylight cycle is now ","color":"gold","bold":true},{"score":{"name":"day_minutes","objective":"siscu.day"}},{"translate":" minutes ("},{"score":{"name":"day_hours","objective":"siscu.day"}},{"text":":"},{"score":{"name":"day_hours_rem","objective":"siscu.day"}},{"text":"0 hours)"}]
execute unless score day_hours_rem siscu.day matches 0 run tellraw @a [{"translate":"One daylight cycle is now ","color":"gold","bold":true},{"score":{"name":"day_minutes","objective":"siscu.day"}},{"translate":" minutes ("},{"score":{"name":"day_hours","objective":"siscu.day"}},{"text":":"},{"score":{"name":"day_hours_rem","objective":"siscu.day"}},{"text":" hours)"}]