
tag @s add trader_checked

#execute if predicate siscu:utils/50_percent run tag @s add dungeons_trader
#execute if entity @s[tag=dungeons_trader] run function siscu:entities/wandering_trader/dungeon_trader

execute if predicate siscu:utils/100_percent run data modify entity @s[tag=!dungeons_trader] Offers.Recipes prepend value {buy:{id:"minecraft:emerald",Count:2},maxUses:1,sell:{id:"minecraft:jigsaw",Count:1,tag:{display:{Name:'{"italic":false,"color":"aqua","font":"minecraft:alt","translate":"item.siscu.enchanter_guide"}',Lore:['{"italic":false,"color":"gray","translate":"text.siscu.enchanter_guide","extra":[{"translate":"block.minecraft.enchanting_table"}]}']},Damage:1}}}

execute at @s run playsound minecraft:item.goat_horn.sound.0 neutral @a ~ ~ ~ 8 1