
data modify entity @s Offers.Recipes prepend value {maxUses:1,buy:{id:"minecraft:emerald_block",Count:9},sell:{id:"minecraft:iron_sword",Count:1}}

execute if predicate siscu:utils/50_percent run data modify entity @s Offers.Recipes[0] set value {maxUses:1,buy:{id:"minecraft:emerald_block",Count:10},buyB:{id:"minecraft:bone",Count:1,tag:{CustomModelData:548102}},sell:{id:"minecraft:iron_sword",Count:1,tag:{CustomModelData:548102}}}
