
data modify entity @s Offers.Recipes[0].buy set from entity @n[tag=siscu.new_trade] HandItems[0]
data modify entity @s Offers.Recipes[0].buyB set from entity @n[tag=siscu.new_trade] HandItems[1]
data modify entity @s Offers.Recipes[0].sell set from entity @n[tag=siscu.new_trade] ArmorItems[3]
tag @n[tag=siscu.new_trade] add siscu.dead
function siscu:world/kill_dead