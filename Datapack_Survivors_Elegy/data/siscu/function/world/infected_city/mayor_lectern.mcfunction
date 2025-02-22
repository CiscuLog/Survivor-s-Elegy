# return if chunk is not fully loaded
execute unless block ~ ~ ~ lectern run return 0

# set town name
summon marker ~ ~ ~ {Tags:["siscu.mayor_lectern_name"],data:{City1:"City",City2:"Seee",Mayor1:"Mayor",Mayor2:"Naisse"}}
execute as @n[tag=siscu.mayor_lectern_name] run function siscu:world/infected_city/name_randomiser/main

# place book
function siscu:world/infected_city/mayor_lectern_macro with entity @n[type=marker,tag=siscu.mayor_lectern_name] data

# kill entities
kill @e[type=marker,tag=siscu.mayor_lectern_name]
kill @s