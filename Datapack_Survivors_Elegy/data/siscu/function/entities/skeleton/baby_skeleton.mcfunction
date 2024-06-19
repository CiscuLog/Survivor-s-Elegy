data modify entity @s ArmorDropChances[3] set value 0.0f
item replace entity @s armor.head with bone[custom_model_data=548201]
item replace entity @s[tag=piglin] armor.head with bone[custom_model_data=548203]
item replace entity @s[tag=villager] armor.head with bone[custom_model_data=548202]
item replace entity @s[tag=husk_skeleton] armor.head with bone[custom_model_data=548201]
execute if entity @s[tag=converted] run return 0 
attribute @s[tag=!husk_skeleton] minecraft:generic.scale base set 0.5
attribute @s[tag=husk_skeleton] minecraft:generic.scale base set 0.53
function siscu:entities/zombie/baby_zombie