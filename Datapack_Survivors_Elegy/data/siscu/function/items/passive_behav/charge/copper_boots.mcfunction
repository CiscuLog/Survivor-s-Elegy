execute store result score charge siscu.volatile run data get entity @s equipment.feet.components."minecraft:custom_data".SE_data.Charge
execute if score charge siscu.volatile matches 512.. run return 0
scoreboard players add charge siscu.volatile 3
execute store result storage siscu:volatile Charge int 1 run scoreboard players get charge siscu.volatile
data merge storage siscu:volatile {Slot:"armor.feet"}
function siscu:items/item_modifier/set_charge with storage siscu:volatile
function siscu:items/item_modifier/charge_lore with storage siscu:volatile