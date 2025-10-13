
execute store result score stains siscu.broth_data run data get entity @s data.stains

execute store result entity @s data.stains int 1 run scoreboard players add stains siscu.broth_data 1

execute if score stains siscu.broth_data matches 0 run return fail
execute if score stains siscu.broth_data matches 1..10 run return run data merge entity @n[type=item_display,tag=siscu.broth_water] {item:{components:{"minecraft:custom_model_data":{strings:["stained"]}}}}
execute if score stains siscu.broth_data matches 11..20 run return run data merge entity @n[type=item_display,tag=siscu.broth_water] {item:{components:{"minecraft:custom_model_data":{strings:["dirty"]}}}}
execute if score stains siscu.broth_data matches 21.. run return run data merge entity @n[type=item_display,tag=siscu.broth_water] {item:{components:{"minecraft:custom_model_data":{strings:["filthy"]}}}}