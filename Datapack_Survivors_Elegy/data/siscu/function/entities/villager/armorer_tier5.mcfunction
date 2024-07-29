tag @s add armorer_lvl5

summon villager ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",amplifier:0b,show_particles:0b,duration:10}],Tags:["new_trade"],Silent:true,Age:-100}
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run loot replace entity @s weapon loot siscu:gameplay/trading/chainmail_horse_armor_price
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run loot replace entity @s armor.head loot siscu:items/combat/chainmail_horse_armor

data merge storage siscu:volatile {Offers_mode:"append",Offers_maxUses:3,Offers_priceMultiplier:0.2f,Offers_specialPrice:0,Offers_demand:-2,Offers_xp:30,Offers_rewardExp:1}
function siscu:entities/villager/insert_trade_macro with storage siscu:volatile
function siscu:entities/villager/append_trade