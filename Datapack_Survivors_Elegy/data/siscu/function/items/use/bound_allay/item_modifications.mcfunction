
$item modify entity @s $(Slot) {type:"set_components",components:{"!consumable":{},"item_name":{"translate":"item.minecraft.enchanted_book"},"repair_cost":$(cost)}}
$item modify entity @s $(Slot) {type:"set_custom_data",tag:{SE_data:{id:""}}}
$item modify entity @s $(Slot) {type:"set_lore",mode:"replace_section",offset:0,size:3,lore:[]}