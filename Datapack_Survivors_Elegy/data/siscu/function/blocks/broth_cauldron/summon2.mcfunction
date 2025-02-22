execute as @e[type=item_display,tag=siscu.new_ladle] run data merge entity @s {transformation:{translation:[-0.1,0.6,0.0],scale:[0.8,1.0,0.8],right_rotation:{angle:0.4,axis:[0.0,0.0,1.0]}}}
execute as @e[type=item_display,tag=siscu.new_water] run data merge entity @s {item_display:"ground"}
tag @e[tag=siscu.new_ladle] remove siscu.new_ladle
tag @e[tag=siscu.new_water] remove siscu.new_water
