data modify entity @s ArmorDropChances[3] set value 0.0f
item replace entity @s armor.head with bone[custom_model_data=548204]
item replace entity @s[tag=piglin] armor.head with bone[custom_model_data=548206]
item replace entity @s[tag=villager] armor.head with bone[custom_model_data=548205]
attribute @s minecraft:generic.scale base set 0.5
function siscu:entities/zombie/baby_zombie