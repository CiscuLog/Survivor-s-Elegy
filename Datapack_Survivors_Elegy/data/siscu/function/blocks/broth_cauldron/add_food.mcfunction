
scoreboard players set max_food_level siscu.broth_data 1400
scoreboard players set max_saturation_level siscu.broth_data 2560
scoreboard players operation max_food_level siscu.broth_data *= broth_level siscu.broth_data
scoreboard players operation max_saturation_level siscu.broth_data *= broth_level siscu.broth_data

# return if max nutrition or saturation reached
execute if score broth_food siscu.broth_data >= max_food_level siscu.broth_data run return 0
execute if score broth_saturation siscu.broth_data >= max_saturation_level siscu.broth_data run return 0


# get food value
execute if items entity @s weapon.mainhand #siscu:food/1 run scoreboard players set food siscu.broth_data 100
execute if items entity @s weapon.mainhand #siscu:food/2 run scoreboard players set food siscu.broth_data 200
execute if items entity @s weapon.mainhand #siscu:food/3 run scoreboard players set food siscu.broth_data 300
execute if items entity @s weapon.mainhand #siscu:food/4 run scoreboard players set food siscu.broth_data 400
execute if items entity @s weapon.mainhand #siscu:food/5 run scoreboard players set food siscu.broth_data 500
execute if items entity @s weapon.mainhand #siscu:food/6 run scoreboard players set food siscu.broth_data 600
execute if items entity @s weapon.mainhand #siscu:food/8 run scoreboard players set food siscu.broth_data 800
execute if items entity @s weapon.mainhand #siscu:food/10 run scoreboard players set food siscu.broth_data 1000
# get saturation value
execute if items entity @s weapon.mainhand #siscu:saturation/0.2 run scoreboard players set saturation siscu.broth_data 20
execute if items entity @s weapon.mainhand #siscu:saturation/0.4 run scoreboard players set saturation siscu.broth_data 40
execute if items entity @s weapon.mainhand #siscu:saturation/0.6 run scoreboard players set saturation siscu.broth_data 60
execute if items entity @s weapon.mainhand #siscu:saturation/0.8 run scoreboard players set saturation siscu.broth_data 80
execute if items entity @s weapon.mainhand #siscu:saturation/1.2 run scoreboard players set saturation siscu.broth_data 120
execute if items entity @s weapon.mainhand #siscu:saturation/1.8 run scoreboard players set saturation siscu.broth_data 180
execute if items entity @s weapon.mainhand #siscu:saturation/2.4 run scoreboard players set saturation siscu.broth_data 240
execute if items entity @s weapon.mainhand #siscu:saturation/3.2 run scoreboard players set saturation siscu.broth_data 320
execute if items entity @s weapon.mainhand #siscu:saturation/3.6 run scoreboard players set saturation siscu.broth_data 360
execute if items entity @s weapon.mainhand #siscu:saturation/4.8 run scoreboard players set saturation siscu.broth_data 480
execute if items entity @s weapon.mainhand #siscu:saturation/6 run scoreboard players set saturation siscu.broth_data 600
execute if items entity @s weapon.mainhand #siscu:saturation/7.2 run scoreboard players set saturation siscu.broth_data 720
execute if items entity @s weapon.mainhand #siscu:saturation/9.6 run scoreboard players set saturation siscu.broth_data 960
execute if items entity @s weapon.mainhand #siscu:saturation/12.8 run scoreboard players set saturation siscu.broth_data 1280
execute if items entity @s weapon.mainhand #siscu:saturation/12 run scoreboard players set saturation siscu.broth_data 1200
execute if items entity @s weapon.mainhand #siscu:saturation/14.4 run scoreboard players set saturation siscu.broth_data 1440

# get food and saturation if it's a special item
scoreboard players set x siscu.volatile 0
execute if predicate siscu:items/broth/special_items run scoreboard players set x siscu.volatile 1
execute if score x siscu.volatile matches 1 store result score food siscu.broth_data run data get entity @s SelectedItem.components."minecraft:food".nutrition 100
execute if score x siscu.volatile matches 1 store result score saturation siscu.broth_data run data get entity @s SelectedItem.components."minecraft:food".saturation 100

# add values to broth
scoreboard players operation broth_food siscu.broth_data += food siscu.broth_data
scoreboard players operation broth_saturation siscu.broth_data += saturation siscu.broth_data

# increase broth level (depends on interact.mcfunction)
scoreboard players operation broth_level siscu.broth_data += increase siscu.broth_data

# store data
execute as @e[type=marker,tag=siscu.broth_interacting] run function siscu:blocks/broth_cauldron/update/store_data
execute as @e[type=marker,tag=siscu.broth_interacting] at @s run function siscu:blocks/broth_cauldron/effects/add_food
execute as @e[type=marker,tag=siscu.broth_interacting] run tellraw @a[tag=siscu.broth_interacting] [{"nbt": "data","entity": "@s"}]

# lower temperature, divides current temperature by 2
scoreboard players operation @e[type=marker,tag=siscu.broth_interacting] siscu.broth_temperature /= 2 siscu.integer

# replace player's hand item (to fix)
scoreboard players set x siscu.volatile 0
execute if items entity @s weapon.mainhand #siscu:bowled_food run scoreboard players set x siscu.volatile 1
execute if items entity @s weapon.mainhand #siscu:bottled_food run scoreboard players set x siscu.volatile 2
item modify entity @s weapon.mainhand siscu:decrease_1
execute if score x siscu.volatile matches 1 run give @s bowl
execute if score x siscu.volatile matches 2 run give @s glass_bottle

return 1
