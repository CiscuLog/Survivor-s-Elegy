data merge entity @s {drop_chances:{head:0.0}}
item replace entity @s armor.head with bone[item_model="siscu_se:baby_skull_withered"]
item replace entity @s[tag=piglin] armor.head with bone[item_model="siscu_se:baby_skull_piglin_withered"]
item replace entity @s[tag=villager] armor.head with bone[item_model="siscu_se:baby_skull_villager_withered"]
attribute @s minecraft:scale base set 0.5
function siscu:entities/zombie/baby_zombie