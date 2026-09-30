#create scoreboards
execute unless data storage siscu:world {PackVersion:"v1.1.0"} run function siscu:technical/load/load_first_time

#delete schedules
function siscu:technical/clear_schedules

#start functions
function siscu:technical/clocks/tick_1s
schedule function siscu:technical/clocks/tick_2s 2t
schedule function siscu:technical/clocks/tick_15s 4t
schedule function siscu:technical/clocks/tick_30s 6t
schedule function siscu:technical/clocks/tick_1m 8t
schedule function siscu:technical/clocks/tick_2m 10t
execute if score do_daylight_cycle siscu.day matches 1 unless score daytime_speed siscu.day matches 1 run function siscu:world/day_features/advance
# distribution of general schedules in a second:
# [1s,  ,2s,2s,15s,  ,30s,30s,1m,  ,2m,  ,  ,  ,  ,  ,  ,  ,  ,  ] # Clocks
# [ *,  , x,  , X ,  ,  *,   , x,  ,X ,  , *,  , x,  ,X ,  , *,  ] # (Plantoid, varies between X, x, *)
# [  ,MD,  ,  ,   ,MD,   ,   ,  ,MD,  ,  ,  ,MD,  ,  ,  ,MD,  ,  ] # Mirage displays
# [  ,  ,  ,  , X ,X , X , X , (···) ] # (drowning zombie, lasts between 1 and 300 ticks. Always starts at tick 5)

# Remove advancements
execute as @a run function siscu:technical/clear_advancements

# Others
function siscu:advancement/clear_connections
tellraw @a[gamemode=creative] [{text:""},{translate:"text.siscu.tooltip",font:"siscu_se:sprites",fallback:"Survivor's Elegy (missing resourcepack)"},{text:" loaded!"}]
