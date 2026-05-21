
# Update old plantoid (last chance, we don't want to lose 100+ xp levels)
execute as @n[type=marker,tag=siscu.sculk_plantoid] at @s run function siscu:blocks/sculk_plantoid/update/old_plantoid_to_new

# Expulse all xp in the plantoid
function siscu:blocks/sculk_plantoid/update/xp_losion/main

playsound block.sculk.break block @a ~ ~ ~
#particle block_crumble{block_state:{Name:"sculk"}} ~ ~ ~ 0.3 0.5 0.3 0 20
particle item{item:{id:"beetroot",components:{item_model:"siscu_se:sculk_plantoid_0"}}}
execute at @s run kill @e[tag=siscu.sculk_plantoid,distance=..0.9]
