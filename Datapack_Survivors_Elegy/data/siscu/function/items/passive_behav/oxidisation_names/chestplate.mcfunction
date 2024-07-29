
scoreboard players add chestplate_ox siscu.volatile 1
execute if items entity @s armor.chest leather_chestplate if score chestplate_ox siscu.volatile matches 1 run return run data merge storage siscu:volatile {String:{"translate":"item.siscu.exposed_copper_chestplate"}}
execute if items entity @s armor.chest leather_chestplate if score chestplate_ox siscu.volatile matches 2 run return run data merge storage siscu:volatile {String:{"translate":"item.siscu.weathered_copper_chestplate"}}
execute if items entity @s armor.chest leather_chestplate if score chestplate_ox siscu.volatile matches 3 run return run data merge storage siscu:volatile {String:{"translate":"item.siscu.oxidised_copper_chestplate"}}
