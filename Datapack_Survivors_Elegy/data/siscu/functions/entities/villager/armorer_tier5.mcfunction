tag @s add armorer_lvl5
scoreboard players remove armorer_5_amount siscu.volatile 1

summon villager ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0b,ShowParticles:0b,Duration:10}],Tags:["new_trade"],Silent:1,Age:-100}
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run loot replace entity @s weapon loot siscu:gameplay/trading/chainmail_horse_armor_price
execute as @e[tag=new_trade,limit=1,sort=nearest] at @s run loot replace entity @s armor.head loot siscu:items/misc/chainmail_horse_armor

data modify entity @s Offers.Recipes append value {sell:{id:"minecraft:air",Count:1},buy:{id:"minecraft:emerald",Count:2},maxUses:3,xp:30,rewardExp:1,priceMultiplier:0.2f}

function siscu:entities/villager/add_trade