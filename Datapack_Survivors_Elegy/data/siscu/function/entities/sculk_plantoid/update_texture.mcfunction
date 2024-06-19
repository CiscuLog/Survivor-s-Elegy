execute if score xp_plantoid siscu.volatile matches 30000.. run advancement grant @a[tag=siscu.plantoid_feeding] only siscu:minecraft/adventure/bloom_plantoid
execute if score xp_plantoid siscu.volatile matches ..1300 run return run data merge entity @s {item:{components:{"minecraft:custom_model_data":540100}}}
execute if score xp_plantoid siscu.volatile matches 1301..10867 run return run data merge entity @s {item:{components:{"minecraft:custom_model_data":540101}}}
execute if score xp_plantoid siscu.volatile matches 10867..20433 run return run data merge entity @s {item:{components:{"minecraft:custom_model_data":540102}}}
execute if score xp_plantoid siscu.volatile matches 20433..29999 run return run data merge entity @s {item:{components:{"minecraft:custom_model_data":540103}}}
execute if score xp_plantoid siscu.volatile matches 30000.. run data merge entity @s {item:{components:{"minecraft:custom_model_data":540104}}}
advancement grant @p[tag=siscu.plantoid_feeding] only siscu:minecraft/husbandry/bloom_plantoid