
summon villager ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0b,ShowParticles:0b,Duration:10}],Tags:["new_trade"],Silent:1,Age:-100}
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run loot replace entity @s weapon loot siscu:gameplay/trading/black_crossbow_price
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run loot replace entity @s armor.head loot siscu:items/weapons/black_crossbow

data modify entity @s Offers.Recipes prepend value {buy:{id:"minecraft:emerald",Count:1},maxUses:4,sell:{id:"minecraft:air",Count:1}}

function siscu:entities/villager/prepend_trade