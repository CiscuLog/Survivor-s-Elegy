
function siscu:entities/wandering_trader/companions/chested
data merge entity @s {Tame:1b}

# Passengers
summon wolf ~ ~ ~ {Tags:["siscu.bremen_dog","siscu.bremen"],Passengers:[{id:cat,Tags:["siscu.bremen"],Passengers:[{id:chicken,Tags:["siscu.bremen"]}]}]}
ride @e[tag=siscu.bremen_dog,limit=1] mount @s

tag @e[tag=siscu.bremen] remove siscu.bremen