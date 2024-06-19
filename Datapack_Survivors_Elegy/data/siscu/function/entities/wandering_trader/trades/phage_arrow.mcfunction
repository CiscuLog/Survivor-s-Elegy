
summon villager ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0b,ShowParticles:0b,Duration:10}],Tags:["new_trade"],Silent:1,Age:-100}
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run loot replace entity @s weapon loot siscu:gameplay/trading/phage_arrow_price
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run loot replace entity @s armor.head loot siscu:items/combat/phage_arrow

data merge storage siscu:volatile {Offers_mode:"prepend",Offers_maxUses:2,Offers_priceMultiplier:0.0f,Offers_specialPrice:0,Offers_demand:-2,Offers_xp:0,Offers_rewardExp:0}
function siscu:entities/villager/insert_trade_macro with storage siscu:volatile
function siscu:entities/villager/prepend_trade