execute align xyz positioned ~.5 ~.1 ~.5 run summon item_display ~ ~ ~ {Tags:["siscu.sculk_plantoid"],item:{id:"minecraft:leather",count:1,components:{"item_model":"siscu_se:sculk_plantoid_0"}}}
execute align xyz positioned ~.5 ~.1 ~.5 run summon interaction ~ ~ ~ {Tags:["siscu.sculk_plantoid"],width:0.8, height:1.5, response:1b}
execute align xyz positioned ~.5 ~.1 ~.5 run summon marker ~ ~ ~ {Tags:["siscu.sculk_plantoid"],data:{Xp:0,BloomingStage:0}}
schedule function siscu:blocks/sculk_plantoid/summon2 1t