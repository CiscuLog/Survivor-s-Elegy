data remove entity @s Offers.Recipes[{sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:protection"}]}}}]

summon villager ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0b,ShowParticles:0b,Duration:10}],Tags:["new_trade"],Silent:1,Age:-100}
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run item replace entity @s weapon.mainhand with emerald 3
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run item replace entity @s armor.head with book
data modify entity @s Offers.Recipes prepend value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:air",Count:1b},maxUses:12,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0,rewardExp:1,xp:2}
function siscu:entities/villager/prepend_trade

return 1