execute if entity @s[type=zombie] run return run particle item{item:"rotten_flesh"} ~ ~1.3 ~ 0 0.3 0 0.06 30
execute if entity @s[type=zombie_villager] run return run particle item{item:"rotten_flesh"} ~ ~1.3 ~ 0 0.3 0 0.06 30
execute if entity @s[type=drowned] run return run particle item{item:{"id":"rotten_flesh","components":{"item_model":"siscu_se:drowned_flesh"}}} ~ ~1.3 ~ 0 0.3 0 0.06 30
execute if entity @s[type=husk] run return run particle item{item:{"id":"rotten_flesh","components":{"item_model":"siscu_se:husk_flesh"}}} ~ ~1.3 ~ 0 0.3 0 0.06 30
execute if entity @s[type=zombified_piglin] run return run particle item{item:"rotten_flesh"} ~ ~1.3 ~ 0 0.3 0 0.06 30
execute if entity @s[type=zombie_horse] run return run particle item{item:"rotten_flesh"} ~ ~1.3 ~ 0.3 0.3 0.3 0.06 30
# else
particle item{item:"rotten_flesh"} ~ ~1.3 ~ 0.3 0.3 0.3 0.06 30