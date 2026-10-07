advancement revoke @s only siscu:items/use/bound_allay

execute if items entity @s weapon.mainhand *[custom_data~{SE_data:{id:"siscu:bound_allay"}}] run return run function siscu:items/use/bound_allay/main {Slot:"weapon.mainhand",Slot_raw:"SelectedItem"}
function siscu:items/use/bound_allay/main {Slot:"weapon.offhand",Slot_raw:"equipment.offhand"}