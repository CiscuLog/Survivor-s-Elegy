
# make rain in 20 seconds
schedule function siscu:world/infected_city/make_rain 20s append
execute if predicate siscu:world/is_thundering run schedule clear siscu:world/infected_city/make_rain
