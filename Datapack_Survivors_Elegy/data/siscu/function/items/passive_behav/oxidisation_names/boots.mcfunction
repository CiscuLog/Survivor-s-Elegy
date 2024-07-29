
scoreboard players add boots_ox siscu.volatile 1
execute if items entity @s armor.feet leather_boots if score boots_ox siscu.volatile matches 1 run return run data merge storage siscu:volatile {String:{"translate":"item.siscu.exposed_copper_boots"}}
execute if items entity @s armor.feet leather_boots if score boots_ox siscu.volatile matches 2 run return run data merge storage siscu:volatile {String:{"translate":"item.siscu.weathered_copper_boots"}}
execute if items entity @s armor.feet leather_boots if score boots_ox siscu.volatile matches 3 run return run data merge storage siscu:volatile {String:{"translate":"item.siscu.oxidised_copper_boots"}}
