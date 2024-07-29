
summon item_display ~ ~0.5 ~ {Tags:["siscu.mirage"],billboard:"vertical",item_display:"fixed"}
summon interaction ~ ~0.3 ~ {width:0.4,height:0.4,response:true,Tags:["siscu.mirage"]}
schedule function siscu:entities/mirage_display/empty_effects 2t
execute if entity @s[gamemode=!creative] run summon item ~ ~0.3 ~ {Item:{id:"minecraft:glass_bottle",count:1}}
#playsound minecraft:block.trial_spawner.spawn_item_begin block @a ~ ~0.5 ~ 1 1.7
playsound siscu_se:item.mirage_bottle.deploy block @a ~ ~0.5 ~ 1 1.7
