
execute store result score stains siscu.broth_data run data get entity @s data.stains

#exit if it cannot clean the bottom
execute if score broth_level siscu.broth_data matches 1.. if score stains siscu.broth_data matches ..20 run return run function siscu:blocks/broth_cauldron/interact/interrupt

# clean
execute if score stains siscu.broth_data matches 31.. run scoreboard players set stains siscu.broth_data 30
scoreboard players remove stains siscu.broth_data 10
execute if score stains siscu.broth_data matches ..0 run scoreboard players set stains siscu.broth_data 0
execute store result entity @s data.stains int 1 run scoreboard players get stains siscu.broth_data


function siscu:blocks/broth_cauldron/effects/scrub

execute if score stains siscu.broth_data matches 11.. run return run data merge entity @s {item:{components:{"minecraft:custom_model_data":{strings:["dirty"]}}}}
execute if score stains siscu.broth_data matches 1.. run return run data merge entity @s {item:{components:{"minecraft:custom_model_data":{strings:["stained"]}}}}
data merge entity @s {item:{components:{"minecraft:custom_model_data":{strings:["clean"]}}}}

advancement grant @p[tag=siscu.broth_interacting] only siscu:minecraft/husbandry/broth_clean