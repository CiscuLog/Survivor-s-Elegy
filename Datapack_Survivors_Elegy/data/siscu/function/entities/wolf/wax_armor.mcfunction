
# data change
tag @s add siscu.rotting_protected
item replace entity @s armor.body with air
scoreboard players reset @s siscu.rotting_mob

# effects
particle block{block_state:{Name:"honeycomb_block"}} ~ ~0.5 ~ 0.5 0.3 0.5 0.03 30
playsound block.honey_block.break player @a ~ ~ ~
