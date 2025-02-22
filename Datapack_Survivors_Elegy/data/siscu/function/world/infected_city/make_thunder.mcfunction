# thunder for 10 minutes, then trigger 30 minutes of rain
execute if predicate siscu:world/is_thundering run schedule clear siscu:world/infected_city/make_rain
execute as @a at @s if predicate siscu:locations/check_infected_city run weather thunder 600s
schedule function siscu:world/infected_city/make_rain 601s