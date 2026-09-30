data merge entity @s {drop_chances:{head:0.0}}
item replace entity @s armor.head with bone[item_model="siscu_se:baby_skull"]
item replace entity @s[tag=siscu.piglin] armor.head with bone[item_model="siscu_se:baby_skull_piglin"]
item replace entity @s[tag=siscu.villager] armor.head with bone[item_model="siscu_se:baby_skull_villager"]
item replace entity @s[type=parched] armor.head with bone[item_model="siscu_se:baby_skull_parched"]
item modify entity @s armor.head {type:"set_enchantments","enchantments":{"siscu:sunburn":1}}
item modify entity @s armor.head {type:"set_components",components:{"enchantment_glint_override":false}}
execute if entity @s[tag=siscu.converted] run return 0 
attribute @s minecraft:scale base set 0.5
function siscu:entities/zombie/baby_zombie