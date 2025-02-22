
tag @s add siscu.bremen_donkey
function siscu:entities/wandering_trader/companions/chested
data merge entity @s {Tame:1b}

# Passengers
summon wolf ~ ~ ~ {Tags:["siscu.trader_entity","siscu.bremen_dog","siscu.bremen"],Passengers:[{id:cat,Tags:["siscu.trader_entity","siscu.bremen"],Passengers:[{id:chicken,Tags:["siscu.trader_entity","siscu.bremen"]}]}]}
ride @e[tag=siscu.bremen_dog,limit=1] mount @s

# Scoreboards
scoreboard players operation @e[tag=siscu.bremen] siscu.trader_timer = @n[type=donkey] siscu.trader_timer

tag @e[tag=siscu.bremen] remove siscu.bremen