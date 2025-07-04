
advancement revoke @s only siscu:items/use/ancient_shield_block_arrow

# detect slot
execute if predicate siscu:items/ancient_shield_offhand unless predicate siscu:items/ancient_shield_mainhand run data merge storage siscu:volatile {Slot:"weapon.offhand",Slot_raw:"equipment.offhand"}
execute if predicate siscu:items/ancient_shield_mainhand run data merge storage siscu:volatile {Slot:"weapon.mainhand",Slot_raw:"SelectedItem"}

# check if crouching, if not: add charge and return
execute unless predicate siscu:entities/is_sneaking at @s run return run function siscu:items/use/ancient_shield/add_charge

# else
# check for charge, if none: add charge and return
function siscu:items/use/ancient_shield/get_data
execute unless score charges siscu.volatile matches 1.. at @s run return run function siscu:items/use/ancient_shield/add_charge
#say charged!

# else
# decrease charge
scoreboard players remove charges siscu.volatile 1
#scoreboard players set vibrations siscu.volatile 0
scoreboard players operation CMD siscu.volatile = charges siscu.volatile
execute store result storage siscu:volatile Vibrations byte 1 run scoreboard players get vibrations siscu.volatile
execute store result storage siscu:volatile Charge byte 1 run scoreboard players get charges siscu.volatile
execute store result storage siscu:volatile CMD int 1 run scoreboard players get CMD siscu.volatile
#tellraw @s [{"text":"Vibrations / Charges: "},{"score":{"name": "vibrations","objective": "siscu.volatile"}},{"text":" / "},{"score": {"name": "charges","objective": "siscu.volatile"}}]

function siscu:items/item_modifier/ancient_shield with storage siscu:volatile

# shoot arrow back
execute at @s run function siscu:items/use/ancient_shield/arrow_redirection/deflect