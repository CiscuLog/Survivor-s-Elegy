
# ingredient 1
data modify entity @s Offers.Recipes[0].buy set from entity @n[tag=siscu.new_trade] equipment.mainhand

# ingredient 2
data modify entity @s Offers.Recipes[0].buyB set from entity @n[tag=siscu.new_trade] equipment.offhand
scoreboard players set x siscu.volatile 0
execute unless data entity @n[tag=siscu.new_trade] equipment.offhand run scoreboard players set x siscu.volatile 1
execute if score x siscu.volatile matches 1 run data remove entity @s Offers.Recipes[0].buyB

# sold item
data modify entity @s Offers.Recipes[0].sell set from entity @n[tag=siscu.new_trade] equipment.head

tag @n[tag=siscu.new_trade] add siscu.dead
function siscu:world/kill_dead