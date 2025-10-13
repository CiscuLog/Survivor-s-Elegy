
$execute unless data storage siscu:volatile BrothCauldronData.food_effects[{id:"$(id)",amplifier:$(amplifier)}] run return run data modify storage siscu:volatile BrothCauldronData.food_effects append value {id:"$(id)",amplifier:$(amplifier),duration:$(duration)}

$execute store result score potion_duration siscu.broth_data run data get storage siscu:volatile BrothCauldronData.food_effects[{id:"$(id)",amplifier:$(amplifier)}].duration
$scoreboard players add potion_duration siscu.broth_data $(duration)
$execute store result storage siscu:volatile BrothCauldronData.food_effects[{id:"$(id)",amplifier:$(amplifier)}].duration int 1 run scoreboard players get potion_duration siscu.broth_data
return 1