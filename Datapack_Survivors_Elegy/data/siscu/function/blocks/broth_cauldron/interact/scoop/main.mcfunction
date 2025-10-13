
# return if it cannot scoop
execute unless score broth_level siscu.broth_data matches 1.. at @n[type=interaction,tag=siscu.broth_interacted] as @n[tag=siscu.broth_ladle] run return run function siscu:blocks/broth_cauldron/interact/stirr
execute if items entity @s weapon.mainhand bucket unless score broth_level siscu.broth_data matches 3.. at @n[type=interaction,tag=siscu.broth_interacted] as @n[tag=siscu.broth_ladle] run return run function siscu:blocks/broth_cauldron/interact/stirr

# fail if broth is mainly water or undercooked
scoreboard players set min_food siscu.broth_data 100
scoreboard players operation min_food siscu.broth_data *= broth_level siscu.broth_data
execute if score broth_food siscu.broth_data < min_food siscu.broth_data at @n[type=interaction,tag=siscu.broth_interacted] as @n[tag=siscu.broth_ladle] run return run function siscu:blocks/broth_cauldron/interact/stirr
execute as @n[type=interaction,tag=siscu.broth_interacted] at @s if score @s siscu.broth_temperature matches ..99 as @n[tag=siscu.broth_ladle] run return run function siscu:blocks/broth_cauldron/interact/stirr

scoreboard players operation div_factor siscu.broth_data = broth_level siscu.broth_data
execute if items entity @s weapon.mainhand bucket run scoreboard players set div_factor siscu.broth_data 1

## serving data calculation
# set resulting broth nutrition values
# serving_food = broth_food / div_factor
# broth_food = broth_food - serving_food
data merge storage siscu:volatile {BrothServingData:{food:1,saturation:1,effects:[],food_effects:[],recipient:"bowl",sound:"entity.generic.eat",consume_seconds:2,max_stack_size:1,model:"siscu_se:broth_bowl",name:"item.siscu.broth",has_consume_particles:false,command:"item replace entity @s weapon.mainhand with"}}
scoreboard players operation serving_food siscu.broth_data = broth_food siscu.broth_data
scoreboard players operation serving_saturation siscu.broth_data = broth_saturation siscu.broth_data
scoreboard players operation serving_food siscu.broth_data /= div_factor siscu.broth_data
scoreboard players operation serving_saturation siscu.broth_data /= div_factor siscu.broth_data
scoreboard players operation broth_food siscu.broth_data -= serving_food siscu.broth_data
scoreboard players operation broth_saturation siscu.broth_data -= serving_saturation siscu.broth_data
execute store result storage siscu:volatile BrothServingData.food int 0.01 run scoreboard players get serving_food siscu.broth_data
execute store result storage siscu:volatile BrothServingData.saturation int 0.01 run scoreboard players get serving_saturation siscu.broth_data

# calculate broth effect list
# keep remaining values for cauldron
execute if data storage siscu:volatile BrothCauldronData.effects[0] run function siscu:blocks/broth_cauldron/interact/scoop/potions_loop/main {list:"effects"}
execute if data storage siscu:volatile BrothCauldronData.food_effects[0] run function siscu:blocks/broth_cauldron/interact/scoop/potions_loop/main {list:"food_effects"}
# copy serving food effects to the serving effects list
execute if data storage siscu:volatile BrothServingData.food_effects[0] run function siscu:technical/merge_lists/main {objective:"storage siscu:volatile BrothServingData.effects",addition:"storage siscu:volatile BrothServingData.food_effects"}

scoreboard players set x siscu.volatile 0
execute if data storage siscu:volatile BrothServingData.effects[0] run scoreboard players set x siscu.volatile 1

# give player the item
execute if items entity @s weapon.mainhand glass_bottle run data merge storage siscu:volatile {BrothServingData:{recipient:"glass_bottle",sound:"entity.generic.drink",model:"siscu_se:broth_bottle",name:"item.siscu.broth_bottle",has_consume_particles:false}}
execute if items entity @s weapon.mainhand bucket run data merge storage siscu:volatile {BrothServingData:{recipient:"bucket",name:"item.siscu.broth_bucket",consume_seconds:8,model:"siscu_se:broth_bucket",has_consume_particles:true,max_stack_size:1}}

item modify entity @s[gamemode=!creative] weapon.mainhand siscu:decrease_1
execute if items entity @s weapon.mainhand * run data merge storage siscu:volatile {BrothServingData:{command:"give @s"}}
execute if score x siscu.volatile matches 0 run function siscu:blocks/broth_cauldron/interact/scoop/no_potions with storage siscu:volatile BrothServingData
execute if score x siscu.volatile matches 1 run function siscu:blocks/broth_cauldron/interact/scoop/has_potions with storage siscu:volatile BrothServingData

# stain
execute as @n[tag=siscu.broth_water] run function siscu:blocks/broth_cauldron/interact/scoop/stain

# remove water
execute if score div_factor siscu.broth_data matches 2.. run scoreboard players remove broth_level siscu.broth_data 1
execute if score div_factor siscu.broth_data matches 1 run scoreboard players set broth_level siscu.broth_data 0

# effects
execute at @n[type=interaction,tag=siscu.broth_interacted] run function siscu:blocks/broth_cauldron/effects/scoop

# end interaction
function siscu:blocks/broth_cauldron/interact/end

advancement grant @s only siscu:minecraft/husbandry/broth_scoop
