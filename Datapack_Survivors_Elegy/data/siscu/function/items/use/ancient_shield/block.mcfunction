
advancement revoke @s only siscu:items/use/ancient_shield_block

execute if predicate siscu:items/ancient_shield_offhand unless predicate siscu:items/ancient_shield_mainhand run data merge storage siscu:volatile {Slot:"weapon.offhand",Slot_raw:"equipment.offhand"}
execute if predicate siscu:items/ancient_shield_mainhand run data merge storage siscu:volatile {Slot:"weapon.mainhand",Slot_raw:"SelectedItem"}

execute at @s run return run function siscu:items/use/ancient_shield/add_charge
