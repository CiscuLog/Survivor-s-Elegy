
# remove flight
item modify entity @s armor.chest {"type":"set_custom_data","tag":{"SE_data":{"shut_down_elytra":true}}}
item modify entity @s armor.chest {type:"set_components","components":{"!glider":{}}}
# enable recovery
advancement revoke @s only siscu:entities/elytra_recover
