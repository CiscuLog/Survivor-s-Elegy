execute if score xp_plantoid siscu.volatile matches ..1300 run return run data merge entity @s {item:{components:{"item_model":"siscu_se:sculk_plantoid_0"},id:leather,count:1}}
execute if score xp_plantoid siscu.volatile matches 1301..10867 run return run data merge entity @s {item:{components:{"item_model":"siscu_se:sculk_plantoid_1"},id:leather,count:1}}
execute if score xp_plantoid siscu.volatile matches 10867..20433 run return run data merge entity @s {item:{components:{"item_model":"siscu_se:sculk_plantoid_2"},id:leather,count:1}}
execute if score xp_plantoid siscu.volatile matches 20433..29999 run return run data merge entity @s {item:{components:{"item_model":"siscu_se:sculk_plantoid_3"},id:leather,count:1}}
execute if score xp_plantoid siscu.volatile matches 30000.. run data merge entity @s {item:{components:{"item_model":"siscu_se:sculk_plantoid_4"},id:leather,count:1}}
advancement grant @p[tag=siscu.plantoid_feeding] only siscu:minecraft/husbandry/bloom_plantoid