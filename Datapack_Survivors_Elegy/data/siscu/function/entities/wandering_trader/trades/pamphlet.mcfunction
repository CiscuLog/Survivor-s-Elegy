
summon villager ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",amplifier:0b,show_particles:0b,duration:10}],Tags:["siscu.new_trade"],Silent:true,Age:-100}
execute as @n[tag=siscu.new_trade] at @s run item replace entity @s weapon with emerald 2
execute as @n[tag=siscu.new_trade] at @s run loot replace entity @s armor.head loot siscu:gameplay/trading/pamphlet

data merge storage siscu:volatile {Offers_mode:"append",Offers_maxUses:1,Offers_priceMultiplier:0.0f,Offers_specialPrice:0,Offers_demand:-2,Offers_xp:0,Offers_rewardExp:0}
function siscu:entities/villager/insert_trade_macro with storage siscu:volatile
function siscu:entities/villager/append_trade