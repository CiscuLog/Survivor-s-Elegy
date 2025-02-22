data modify entity @s ArmorDropChances[3] set value 0.0f
item replace entity @s armor.head with bone[item_model="siscu_se:baby_skull_bogged"]
execute if entity @s[tag=converted] run return 0
attribute @s minecraft:scale base set 0.5
function siscu:entities/zombie/baby_zombie