
# ingredient 1
data modify entity @s Offers.Recipes[-1].buy set from entity @n[tag=siscu.new_trade] equipment.mainhand

# ingredient 2
data modify entity @s Offers.Recipes[-1].buyB set from entity @n[tag=siscu.new_trade] equipment.offhand
scoreboard players set x siscu.volatile 0
execute unless data entity @n[tag=siscu.new_trade] equipment.offhand run scoreboard players set x siscu.volatile 1
execute if score x siscu.volatile matches 1 run data remove entity @s Offers.Recipes[-1].buyB

# sold item
data modify entity @s Offers.Recipes[-1].sell set from entity @n[tag=siscu.new_trade] equipment.head

execute as @n[tag=siscu.new_trade] run function siscu:world/kill_dead