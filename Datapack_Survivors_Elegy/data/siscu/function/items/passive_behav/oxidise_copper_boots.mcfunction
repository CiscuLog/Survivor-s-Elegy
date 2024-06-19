scoreboard players add boots_ox siscu.volatile 1
execute if score boots_ox siscu.volatile matches 1 run data merge storage siscu:volatile {String:"exposed_copper_boots",rgb:9464656,Oxidation:1}
execute if score boots_ox siscu.volatile matches 2 run data merge storage siscu:volatile {String:"weathered_copper_boots",rgb:7107420,Oxidation:2}
execute if score boots_ox siscu.volatile matches 3 run data merge storage siscu:volatile {String:"oxidised_copper_boots",rgb:3506031,Oxidation:3}
data merge storage siscu:volatile {Slot2:""}

data merge storage siscu:volatile {Slot:"armor.feet"}
scoreboard players add boots_ox siscu.volatile 548101
execute store result storage siscu:volatile CMD int 1 run scoreboard players get boots_ox siscu.volatile

function siscu:items/item_modifier/oxidisation with storage siscu:volatile