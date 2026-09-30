
# Stop if there are too many baby pigs already
execute at @s store result score x siscu.volatile if entity @e[type=pig,predicate=siscu:utils/is_baby,distance=..1]
execute if score x siscu.volatile matches 4.. run return fail

# Summon baby pig
$summon pig ~ ~ ~ {Age:-23999,Tags:["siscu.pig_checked"],variant:"$(variant)"}
