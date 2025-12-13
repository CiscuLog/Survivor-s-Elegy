data merge entity @s {drop_chances:{head:0.0}}
item replace entity @s armor.head with bone[item_model="siscu_se:baby_skull"]
item replace entity @s[tag=siscu.piglin] armor.head with bone[item_model="siscu_se:baby_skull_piglin"]
item replace entity @s[tag=siscu.villager] armor.head with bone[item_model="siscu_se:baby_skull_villager"]
item replace entity @s[tag=siscu.husk_skeleton] armor.head with bone[item_model="siscu_se:baby_skull"]
execute if entity @s[tag=siscu.converted] run return 0 
attribute @s[tag=!siscu.husk_skeleton] minecraft:scale base set 0.5
attribute @s[tag=siscu.husk_skeleton] minecraft:scale base set 0.53
function siscu:entities/zombie/baby_zombie