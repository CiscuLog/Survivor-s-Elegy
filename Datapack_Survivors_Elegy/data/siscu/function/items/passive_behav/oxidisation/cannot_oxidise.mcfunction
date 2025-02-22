$execute if items entity @s $(Slot) shield run return 0
$execute if items entity @s $(Slot) *[custom_data~{SE_data:{id:"siscu:bee_counter"}}] run return 0
$execute if items entity @s $(Slot) *[custom_data~{SE_data:{id:"siscu:light_sensor"}}] run return 0
return 1