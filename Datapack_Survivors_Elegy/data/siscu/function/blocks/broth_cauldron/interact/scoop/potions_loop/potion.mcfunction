
# BrothServingData.$(list) += {id:"potion",level:lvl/div_factor,duration:duration/div_factor}
# BrothCauldronData.$(list)[x] = {id:"potion",level:level,duration: duration - BrothServingData.$(list)[x].duration}

# operations
$data modify storage siscu:volatile BrothServingData.$(list) prepend from storage siscu:volatile BrothCauldronData.$(list)[$(x)]
$execute store result score potion_duration siscu.broth_data run data get storage siscu:volatile BrothCauldronData.$(list)[$(x)].duration

scoreboard players operation potion_duration_serving siscu.broth_data = potion_duration siscu.broth_data
scoreboard players operation potion_duration_serving siscu.broth_data /= div_factor siscu.broth_data
scoreboard players operation potion_duration siscu.broth_data -= potion_duration_serving siscu.broth_data
$execute store result storage siscu:volatile BrothServingData.$(list)[0].duration int 1 run scoreboard players get potion_duration_serving siscu.broth_data

# remove potion from list if it's duration has run out
$execute if score potion_duration siscu.broth_data matches ..1 run return run data remove storage siscu:volatile BrothCauldronData.$(list)[$(x)]
$execute store result storage siscu:volatile BrothCauldronData.$(list)[$(x)].duration int 1 run scoreboard players get potion_duration siscu.broth_data