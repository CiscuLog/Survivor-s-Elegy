data remove entity @s Offers.Recipes[{sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}}]

summon villager ~ ~ ~ {active_effects:[{id:"minecraft:invisibility",amplifier:0b,show_particles:0b,duration:10}],Tags:["new_trade"],Silent:true,Age:-100}
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run item replace entity @s weapon.mainhand with emerald 3
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run item replace entity @s armor.head with book
data modify entity @s Offers.Recipes prepend value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:air",count:1},maxUses:12,uses:0,priceMultiplier:0.05f,demand:0,rewardExp:1,xp:2}
function siscu:entities/villager/prepend_trade

return 1