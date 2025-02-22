data modify entity @s ArmorDropChances[3] set value 0.0f
item replace entity @s armor.head with bone[item_model="siscu_se:baby_skull"]
item replace entity @s[tag=piglin] armor.head with bone[item_model="siscu_se:baby_skull_piglin"]
item replace entity @s[tag=villager] armor.head with bone[item_model="siscu_se:baby_skull_villager"]
item replace entity @s[tag=siscu.husk_skeleton] armor.head with bone[item_model="siscu_se:baby_skull"]
execute if entity @s[tag=converted] run return 0 
attribute @s[tag=!siscu.husk_skeleton] minecraft:scale base set 0.5
attribute @s[tag=siscu.husk_skeleton] minecraft:scale base set 0.53
function siscu:entities/zombie/baby_zombie