execute unless block ~ ~ ~ minecraft:decorated_pot positioned ^ ^ ^0.01 run return run function siscu:entities/sculk_plantoid/place_raycast
execute align xyz positioned ~.5 ~.1 ~.5 unless items block ~ ~ ~ contents minecraft:beetroot[minecraft:custom_model_data=540000] run return 0
execute align xyz positioned ~.5 ~.1 ~.5 if entity @e[tag=siscu.sculk_plantoid,distance=..0.5] run return 0
function siscu:entities/sculk_plantoid/summon
advancement grant @s only siscu:minecraft/husbandry/plant_sculk_plantoid