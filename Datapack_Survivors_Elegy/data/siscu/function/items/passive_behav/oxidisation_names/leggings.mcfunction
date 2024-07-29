
scoreboard players add leggings_ox siscu.volatile 1
execute if items entity @s armor.legs leather_leggings if score leggings_ox siscu.volatile matches 1 run return run data merge storage siscu:volatile {String:{"translate":"item.siscu.exposed_copper_leggings"}}
execute if items entity @s armor.legs leather_leggings if score leggings_ox siscu.volatile matches 2 run return run data merge storage siscu:volatile {String:{"translate":"item.siscu.weathered_copper_leggings"}}
execute if items entity @s armor.legs leather_leggings if score leggings_ox siscu.volatile matches 3 run return run data merge storage siscu:volatile {String:{"translate":"item.siscu.oxidised_copper_leggings"}}
