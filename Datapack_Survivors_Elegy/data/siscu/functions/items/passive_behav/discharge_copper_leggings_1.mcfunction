scoreboard players remove charge siscu.volatile 1
execute store result storage siscu:volatile Charge int 1 run scoreboard players get charge siscu.volatile
item modify entity @s armor.legs siscu:charge/copper_armor_charge
item modify entity @s armor.legs siscu:charge/copper_armor_charge_lore

scoreboard players set N siscu.volatile 1