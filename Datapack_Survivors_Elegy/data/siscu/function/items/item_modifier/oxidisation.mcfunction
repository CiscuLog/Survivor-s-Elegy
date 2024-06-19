$item modify entity @s $(Slot) {function:"set_components",components:{"minecraft:dyed_color":{"rgb":$(rgb),"show_in_tooltip":false,"minecraft:custom_model_data":$(CMD)}}}
$item modify entity @s $(Slot) {function:"set_custom_data",tag:{"SE_data":{"Oxidation":$(Oxidation)}}}
$execute if items entity @s $(Slot) *[minecraft:custom_name] run return 0
$item modify entity @s $(Slot) {function:"set_components",components:{"minecraft:item_name":"$(String)$(String2)"}}