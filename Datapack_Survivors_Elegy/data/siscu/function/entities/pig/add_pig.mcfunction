# Summon baby pig
summon pig ~0.01 ~ ~0.01 {Age:-24000,Tags:["siscu.pig_checked"]}
# For future versions
#execute as @e[type=pig,tag=siscu.new_pig] at @s run data modify entity @s variant set from entity @n[type=pig,tag=!siscu.new_pig,predicate=!siscu:utils/is_baby] variant
tag @e[tag=siscu.new_pig] remove siscu.new_pig
