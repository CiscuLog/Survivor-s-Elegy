
# kill marker bloat (v1.1.2)
tag @s add siscu.marker_protected
kill @e[type=marker,tag=siscu.city_name,tag=!siscu.marker_protected,distance=..1]
tag @s remove siscu.marker_protected

# return if chunk is not fully loaded
execute unless block ~ ~ ~ lectern run return 0

# set town name
summon marker ~ ~ ~ {Tags:["siscu.city_name","siscu.mayor_lectern_name"],data:{City1:"City",City2:"Seee",Mayor1:"Mayor",Mayor2:"Naisse"}}
execute as @n[tag=siscu.city_name] run function siscu:world/infected_city/name_randomiser/main

# place book
function siscu:world/infected_city/mayor_lectern/macro with entity @n[type=marker,tag=siscu.mayor_lectern_name] data
tag @s remove siscu.worldgen
kill @s