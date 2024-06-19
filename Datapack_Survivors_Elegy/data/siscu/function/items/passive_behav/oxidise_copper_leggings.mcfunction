scoreboard players add leggings_ox siscu.volatile 1
execute if score leggings_ox siscu.volatile matches 1 run data merge storage siscu:volatile {String:"exposed_copper_leggings",rgb:9464656,Oxidation:1}
execute if score leggings_ox siscu.volatile matches 2 run data merge storage siscu:volatile {String:"weathered_copper_leggings",rgb:7107420,Oxidation:2}
execute if score leggings_ox siscu.volatile matches 3 run data merge storage siscu:volatile {String:"oxidised_copper_leggings",rgb:3506031,Oxidation:3}
data merge storage siscu:volatile {Slot2:""}

data merge storage siscu:volatile {Slot:"armor.legs"}
scoreboard players add leggings_ox siscu.volatile 548101
execute store result storage siscu:volatile CMD int 1 run scoreboard players get leggings_ox siscu.volatile

function siscu:items/item_modifier/oxidisation with storage siscu:volatile