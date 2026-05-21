
# Failsafe
execute unless items entity @s armor.chest elytra run return 0
execute unless data entity @s equipment.chest.components.minecraft:custom_data.SE_data.shut_down_elytra run return 0

# Recover elytra 
item modify entity @s armor.chest {"function":"set_custom_data","tag":{"SE_data":{"shut_down_elytra":false}}}
item modify entity @s armor.chest {function:"set_components","components":{"glider":{}}}
return 0
