
# save the amount of potions there are
$execute store result score potion_amount siscu.broth_data run data get storage siscu:volatile BrothCauldronData.$(list)
#tellraw @p [{"text":"Serving has "},{"score":{name:"potion_amount",objective:"siscu.broth_data"}},{"text":" effect(s)"}]

scoreboard players remove potion_amount siscu.broth_data 1

$data modify storage siscu:volatile BrothServingData.$(list) set value []

# store serving duration, keep broth remainder (replace original list)

# for (x in potion_amount)
    # BrothServingData.effects = {id:"potion",level:lvl/div_factor,duration:duration/div_factor} + BrothServingData.effects
    # BrothCauldronData.effects[x] = {id:"potion",level:level,duration: duration - BrothServingData.effects[x].duration}

$data merge storage siscu:volatile {list:"$(list)"}
function siscu:blocks/broth_cauldron/interact/scoop/potions_loop/loop

# clear unneeded data
data remove storage siscu:volatile x