scoreboard players reset @s siscu.trader_timer
tag @s remove siscu.trader_entity
# Horses
#execute if entity @s[type=donkey,tag=!siscu.bremen_donkey] if data entity @s {Tame:1b} run return 0
execute if entity @s[type=#can_equip_saddle,type=!camel] if data entity @s {Tame:1b} run return 0
# Pets
execute if entity @s[type=wolf] on owner unless entity @s[type=wandering_trader] run return 0
execute if entity @s[type=cat] on owner unless entity @s[type=wandering_trader] run return 0
#Others
scoreboard players set x siscu.volatile 0
execute store result score x siscu.volatile on leasher if entity @s[type=wandering_trader]
execute if score x siscu.volatile matches 0 run return 0
execute on passengers if entity @s[type=minecraft:player] run return 0

execute on passengers run ride @s dismount
tag @s[type=!player] add siscu.dead
function siscu:world/kill_dead