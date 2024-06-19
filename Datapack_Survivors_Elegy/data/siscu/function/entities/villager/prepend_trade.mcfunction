
data modify entity @s Offers.Recipes[0].buy set from entity @e[tag=new_trade,limit=1,sort=nearest] HandItems[0]
data modify entity @s Offers.Recipes[0].buyB set from entity @e[tag=new_trade,limit=1,sort=nearest] HandItems[1]
data modify entity @s Offers.Recipes[0].sell set from entity @e[tag=new_trade,limit=1,sort=nearest] ArmorItems[3]
tag @e[tag=new_trade,limit=1,sort=nearest] add dead
function siscu:world/kill_dead