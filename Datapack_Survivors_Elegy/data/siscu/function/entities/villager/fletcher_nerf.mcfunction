data remove entity @s Offers.Recipes[{buy:{id:"minecraft:stick"}}]

summon villager ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",amplifier:0b,show_particles:0b,duration:10}],Tags:["new_trade"],Silent:true,Age:-100}
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run item replace entity @s weapon.mainhand with feather 6
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run item replace entity @s weapon.offhand with stick 4
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run item replace entity @s armor.head with arrow 16

#data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:air",Count:1b},maxUses:12,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1,xp:2}

data merge storage siscu:volatile {Offers_mode:"append",Offers_maxUses:12,Offers_priceMultiplier:0.05f,Offers_specialPrice:0,Offers_demand:-2,Offers_xp:2,Offers_rewardExp:1}
function siscu:entities/villager/insert_trade_macro with storage siscu:volatile
function siscu:entities/villager/append_trade

return 1