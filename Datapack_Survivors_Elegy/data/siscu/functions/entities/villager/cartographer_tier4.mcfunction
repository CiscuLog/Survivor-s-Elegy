tag @s add cartographer_lvl4

summon villager ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0b,ShowParticles:0b,Duration:10}],Tags:["new_trade"],Silent:1,Age:-100}
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run loot replace entity @s weapon loot siscu:gameplay/trading/cartographer_ancient_city_price
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run loot replace entity @s armor.head loot siscu:gameplay/trading/cartographer_ancient_city_map

data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:15b},sell:{id:"minecraft:air",Count:1b},maxUses:12,uses:0,priceMultiplier:0.2f,specialPrice:0,demand:0,rewardExp:1,xp:15}
function siscu:entities/villager/add_trade