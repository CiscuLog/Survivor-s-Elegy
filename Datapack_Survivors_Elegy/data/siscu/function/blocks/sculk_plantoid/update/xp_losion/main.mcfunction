
# xplosion (get it? hehe)
# Creates an explosion of xp orbs, each containing 4/5 of the remaining xp on the plantoid
# orb 1: 80%, orb 2: 16%, orb 3: 3.2% ... until remaining xp is 0
# This usually results on 6 orbs of exponentially decreasing value 

execute store result score xp_plantoid siscu.volatile run data get entity @s data.Xp
function siscu:blocks/sculk_plantoid/update/xp_losion/loop
