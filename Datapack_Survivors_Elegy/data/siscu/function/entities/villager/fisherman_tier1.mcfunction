tag @s add siscu.fisherman_lvl1

summon villager ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",amplifier:0b,show_particles:0b,duration:10}],Tags:["siscu.new_trade"],Silent:true,Age:-100}
execute as @n[tag=siscu.new_trade] at @s run loot replace entity @s armor.head loot siscu:groups/all_fish
execute as @n[tag=siscu.new_trade] at @s run loot replace entity @s weapon loot siscu:gameplay/trading/fish_price

data merge storage siscu:volatile {Offers_mode:"append",Offers_maxUses:5,Offers_priceMultiplier:0.2f,Offers_specialPrice:0,Offers_demand:-2,Offers_xp:30,Offers_rewardExp:1}
function siscu:entities/villager/insert_trade_macro with storage siscu:volatile
function siscu:entities/villager/append_trade