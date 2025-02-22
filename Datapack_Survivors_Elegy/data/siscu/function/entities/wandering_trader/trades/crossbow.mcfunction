
summon villager ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",amplifier:0b,show_particles:0b,duration:10}],Tags:["siscu.new_trade"],Silent:true,Age:-100}
execute as @n[tag=siscu.new_trade] at @s run loot replace entity @s weapon loot siscu:gameplay/trading/black_crossbow_price
execute as @n[tag=siscu.new_trade] at @s run loot replace entity @s armor.head loot siscu:entities/wandering_trader/black_crossbow

data merge storage siscu:volatile {Offers_mode:"prepend",Offers_maxUses:4,Offers_priceMultiplier:0.0f,Offers_specialPrice:0,Offers_demand:-2,Offers_xp:0,Offers_rewardExp:0}
function siscu:entities/villager/insert_trade_macro with storage siscu:volatile
function siscu:entities/villager/prepend_trade