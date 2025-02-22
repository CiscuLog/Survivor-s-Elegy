# rain for 30 minutes
execute if predicate siscu:world/is_thundering run return 0
execute as @a at @s if predicate siscu:locations/check_infected_city run weather rain 1800s