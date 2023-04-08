
data modify entity @s Offers.Recipes prepend value {maxUses:10,buy:{id:"minecraft:emerald",Count:9},sell:{id:"minecraft:iron_sword",Count:1}}

execute if predicate siscu:utils/100_percent run data modify entity @s Offers.Recipes[0] set value {maxUses:2,buy:{id:"minecraft:emerald",Count:10},buyB:{id:"minecraft:bone",Count:1,tag:{CustomModelData:548102}},sell:{id:"minecraft:stone_sword",Count:1,tag:{CustomModelData:548101,display:{Name:'{"italic":"false","translate":"item.siscu.boneclub"}'}}}}

data modify entity @s Offers.Recipes prepend value {buy:{id:"minecraft:emerald",Count:2},maxUses:1,sell:{id:"minecraft:jigsaw",Count:1,tag:{display:{Name:'{"italic":false,"color":"aqua","font":"minecraft:alt","translate":"item.siscu.enchanter_guide"}',Lore:['{"italic":false,"color":"gray","translate":"text.siscu.enchanter_guide","extra":[{"translate":"block.minecraft.enchanting_table"}]}']},Damage:1}}}