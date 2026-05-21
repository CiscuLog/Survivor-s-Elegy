
# cures phage
execute if data storage siscu:volatile BrothServingData.effects[{id:"minecraft:weakness"}] if data storage siscu:volatile BrothServingData.effects[{id:"minecraft:absorption"}] run data modify storage siscu:volatile BrothServingData.flags append value {cures_phage:true}

execute if score serving_tp_diameter siscu.broth_data matches 1.. run data modify storage siscu:volatile BrothServingData.flags append value {teleports:true}
execute if score serving_tp_diameter siscu.broth_data matches 1.. run function siscu:blocks/broth_cauldron/interact/scoop/extra_components/tp_diameter with storage siscu:volatile BrothServingData
