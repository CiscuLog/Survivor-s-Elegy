
# If unset corpse, set random/conditional pose
execute if entity @s[tag=siscu.player_corpse_random] align xyz positioned ~0.5 ~ ~0.5 run function siscu:entities/player_corpse/summon/models/random/true_random
execute if entity @s[tag=siscu.player_corpse_unset] align xyz positioned ~0.5 ~ ~0.5 run return run function siscu:entities/player_corpse/summon/models/random/environmental_check

# Summon
execute align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:["siscu.entity_checked","siscu.player_corpse","siscu.player_corpse_new"],width:1,height:1,Passengers:[{id:"item_display",Tags:["siscu.player_corpse"],\
item:{id:"zombie_head",components:{item_model:"siscu_se:player_corpse",\
custom_model_data:{\
\
strings:["standing","skeleton","none","none"],\
floats:[0]\
\
}}},transformation:{translation:[0,0.5,0],scale:[1,1,1],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]}}]}

# Transfer some tags
execute if entity @s[tag=siscu.infected_model] run tag @n[type=interaction,tag=siscu.player_corpse_new] add siscu.infected_model
execute if entity @s[tag=siscu.zombie_model] run tag @n[type=interaction,tag=siscu.player_corpse_new] add siscu.zombie_model
execute if entity @s[tag=siscu.skeleton_model] run tag @n[type=interaction,tag=siscu.player_corpse_new] add siscu.skeleton_model
execute if entity @s[tag=siscu.corpse_fleeing] run tag @n[type=interaction,tag=siscu.player_corpse_new] add siscu.corpse_fleeing
execute if entity @s[tag=siscu.corpse_infected] run tag @n[type=interaction,tag=siscu.player_corpse_new] add siscu.corpse_infected

# Set model
execute as @n[type=interaction,tag=siscu.player_corpse_new] at @s run function siscu:entities/player_corpse/summon/select_model

# Delete entity
kill @s[type=#siscu:item_frames]

return fail