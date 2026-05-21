
scoreboard players remove @s siscu.entity_hit 1
execute if score @s siscu.entity_hit matches 1.. run return 1
execute if score @s siscu.entity_hit matches ..0 run scoreboard players reset @s siscu.entity_hit
return fail