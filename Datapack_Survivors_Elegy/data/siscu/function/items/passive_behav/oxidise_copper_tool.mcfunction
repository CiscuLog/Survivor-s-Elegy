execute unless items entity @s weapon.mainhand #siscu:iron_tools run return 0
scoreboard players add tool_ox siscu.volatile 1
execute if score tool_ox siscu.volatile matches 1 run data merge storage siscu:volatile {String:"exposed_copper_",rgb:9464656,Oxidation:1}
execute if score tool_ox siscu.volatile matches 2 run data merge storage siscu:volatile {String:"weathered_copper_",rgb:7107420,Oxidation:2}
execute if score tool_ox siscu.volatile matches 3 run data merge storage siscu:volatile {String:"oxidised_copper_",rgb:3506031,Oxidation:3}

execute if items entity @s weapon #minecraft:axes run data merge storage siscu:volatile {String2:"axe"}
execute if items entity @s weapon #minecraft:hoes run data merge storage siscu:volatile {String2:"hoe"}
execute if items entity @s weapon #minecraft:pickaxes run data merge storage siscu:volatile {String2:"pickaxe"}
execute if items entity @s weapon #minecraft:shovels run data merge storage siscu:volatile {String2:"shovel"}
execute if items entity @s weapon #minecraft:swords run data merge storage siscu:volatile {String2:"sword"}

data merge storage siscu:volatile {Slot:"weapon.mainhand"}
scoreboard players add tool_ox siscu.volatile 548101
execute store result storage siscu:volatile CMD int 1 run scoreboard players get tool_ox siscu.volatile

function siscu:items/item_modifier/oxidisation with storage siscu:volatile