scoreboard players set world_day siscu.day 0
data merge storage siscu:volatile {x:0,y:0}
execute store result storage siscu:volatile y int 1 run time query day
function siscu:world/day_features/adjust_day/set_day with storage siscu:volatile

tellraw @a[gamemode=creative] [{text:"[Server] "},{selector:"@s"},{text:" set day to 0"}]