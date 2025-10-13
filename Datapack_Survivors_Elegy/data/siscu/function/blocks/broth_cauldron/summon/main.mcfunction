scoreboard players set x siscu.volatile -1
# interaction
execute align xyz run summon minecraft:interaction ~0.5 ~0.2 ~0.5 {width:0.8,height:0.8,response:true,Tags:["siscu.broth_cauldron"],data:{broth_level:3,broth_food:0,broth_saturation:0,effects:[],food_effects:[]}}
# display (water)
execute align xyz run summon minecraft:item_display ~0.5 ~0.2 ~0.5 {Tags:["siscu.broth_cauldron","siscu.broth_water","siscu.new_water"],item:{id:"minecraft:leather_horse_armor",count:1,components:{"item_model":"siscu_se:block/broth_water",custom_model_data:{floats:[0]}}}}
# display (ladle)
execute align xyz run summon minecraft:item_display ~0.5 ~0.2 ~0.5 {Tags:["siscu.broth_cauldron","siscu.broth_ladle","siscu.new_ladle"],item:{id:"minecraft:stick",count:1,components:{"item_model":"siscu_se:ladle"}},data:{resting_pos:0}}

# cauldron naming. Only relevant for debugging
execute if score cauldron_amount siscu.volatile matches 9999 run scoreboard players set cauldron_amount siscu.volatile 0
scoreboard players add cauldron_amount siscu.volatile 1
execute store result storage siscu:volatile cauldron_amount int 1 run scoreboard players get cauldron_amount siscu.volatile
execute as @e[type=interaction,tag=siscu.broth_cauldron] unless score @s siscu.broth_temperature matches 0.. run function siscu:blocks/broth_cauldron/summon/set_name with storage siscu:volatile

# Playsound
playsound siscu_se:item.ladle.place block @a

schedule function siscu:blocks/broth_cauldron/summon/main_2 2t
schedule function siscu:blocks/broth_cauldron/update/check_schedule 1t append
