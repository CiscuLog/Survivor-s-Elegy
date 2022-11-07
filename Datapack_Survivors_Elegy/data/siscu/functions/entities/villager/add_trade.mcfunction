
data modify entity @s Offers.Recipes[-1].buy set from entity @e[tag=new_trade,limit=1,sort=nearest] HandItems[0]
data modify entity @s Offers.Recipes[-1].buyB set from entity @e[tag=new_trade,limit=1,sort=nearest] HandItems[1]
data modify entity @s Offers.Recipes[-1].sell set from entity @e[tag=new_trade,limit=1,sort=nearest] ArmorItems[3]

tp @e[tag=new_trade] ~ -200 ~