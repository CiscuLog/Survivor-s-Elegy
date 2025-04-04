$scoreboard players remove charge siscu.volatile $(DischargeAmount)
execute unless score charge siscu.volatile matches 0.. run scoreboard players set charge siscu.volatile 0
execute store result storage siscu:volatile Charge int 1 run scoreboard players get charge siscu.volatile
$data merge storage siscu:volatile {Slot:"$(Slot)"}
function siscu:items/item_modifier/set_charge with storage siscu:volatile
function siscu:items/item_modifier/charge_lore with storage siscu:volatile

scoreboard players set N siscu.volatile 1