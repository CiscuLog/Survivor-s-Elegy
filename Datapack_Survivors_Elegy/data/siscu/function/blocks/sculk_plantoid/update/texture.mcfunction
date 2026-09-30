data merge entity @s {item:{components:{"item_model":"siscu_se:sculk_plantoid_block"}}}
execute if score xp_plantoid siscu.volatile matches ..0 run return run function siscu:blocks/sculk_plantoid/update/texture_macro {x:0}
execute if score xp_plantoid siscu.volatile matches ..6000 run return run function siscu:blocks/sculk_plantoid/update/texture_macro {x:1}
execute if score xp_plantoid siscu.volatile matches ..12000 run return run function siscu:blocks/sculk_plantoid/update/texture_macro {x:2}
execute if score xp_plantoid siscu.volatile matches ..24000 run return run function siscu:blocks/sculk_plantoid/update/texture_macro {x:3}
execute unless score xp_plantoid siscu.volatile matches 30000.. run return run function siscu:blocks/sculk_plantoid/update/texture_macro {x:4}

# final stage
function siscu:blocks/sculk_plantoid/update/texture_macro {x:5}
advancement grant @p[tag=siscu.plantoid_interacting] only siscu:minecraft/husbandry/bloom_plantoid