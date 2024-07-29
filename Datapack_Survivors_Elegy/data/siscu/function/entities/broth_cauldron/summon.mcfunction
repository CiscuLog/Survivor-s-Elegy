scoreboard players set x siscu.volatile -1
# interaction
execute align xyz run summon minecraft:interaction ~0.5 ~0.2 ~0.5 {width:0.8,height:0.8,Tags:["siscu.broth_cauldron"]}
# marker
execute align xyz run summon minecraft:marker ~0.5 ~0.2 ~0.5 {Tags:["siscu.broth_cauldron"],data:{broth_level:0,broth_food:0,broth_saturation:0,effects:[{effect:{id:"minecraft:water",amplifier:0, duration:0},probability:1}]}}
# display (water)
execute align xyz run summon minecraft:item_display ~0.5 ~0.2 ~0.5 {Tags:["siscu.broth_cauldron","siscu.broth_water","siscu.new_water"],item:{id:"minecraft:leather_horse_armor",count:1,components:{"custom_model_data":540000}}}
# display (ladle)
execute align xyz run summon minecraft:item_display ~0.5 ~0.2 ~0.5 {Tags:["siscu.broth_cauldron","siscu.broth_ladle","siscu.new_ladle"],item:{id:"minecraft:stick",count:1,components:{"custom_model_data":540010}}}

# cauldron naming
execute if score cauldron_amount siscu.volatile matches 9999 run scoreboard players set cauldron_amount siscu.volatile 0
scoreboard players add cauldron_amount siscu.volatile 1
execute store result storage siscu:volatile cauldron_amount int 1 run scoreboard players get cauldron_amount siscu.volatile
execute as @e[type=marker,tag=siscu.broth_cauldron] unless score @s siscu.broth_temperature matches 0.. run function siscu:entities/broth_cauldron/summon/set_name with storage siscu:volatile

schedule function siscu:entities/broth_cauldron/summon2 1t
schedule function siscu:entities/broth_cauldron/update/check_cauldron_schedule 1t
