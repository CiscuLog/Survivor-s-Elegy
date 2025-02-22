# save data
$item modify entity @s armor.chest {"function":"set_custom_data","tag":{"SE_data":{"old_durability":$(x),"shut_down_elytra":true}}}
# break elytra
item modify entity @s armor.chest siscu:set_broken