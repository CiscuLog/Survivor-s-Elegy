tag @s add cartographer_lvl4

summon villager ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0b,ShowParticles:0b,Duration:10}],Tags:["new_trade"],Silent:1,Age:-100}
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run loot replace entity @s weapon loot siscu:gameplay/trading/cartographer_ancient_city_price
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run loot replace entity @s armor.head loot siscu:gameplay/trading/cartographer_ancient_city_map

data merge storage siscu:volatile {Offers_mode:"append",Offers_maxUses:12,Offers_priceMultiplier:0.2f,Offers_specialPrice:0,Offers_demand:0,Offers_xp:15,Offers_rewardExp:1}
function siscu:entities/villager/insert_trade_macro with storage siscu:volatile
function siscu:entities/villager/append_trade