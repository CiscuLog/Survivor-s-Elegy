
# this function removes 1 oxidation level!
# a clensed shield will never oxidise, so this is a one-way process

# if it's not oxidised, return
execute if score oxidisation siscu.volatile matches 0 run return 100

# Sound of shield cleansing
## CHANGE to item.axe.wax_off
execute at @s run playsound siscu_se:item.ancient_shield.cleanse player @a ~ ~ ~ 1 1

# change texture and data
data merge storage siscu:volatile {Vibrations:0,Charge:0,CMD:0}
execute if score oxidisation siscu.volatile matches 3 run data merge storage siscu:volatile {String:"siscu_se:ancient_shield/base_weathered",Oxidation:2}
execute if score oxidisation siscu.volatile matches 2 run data merge storage siscu:volatile {String:"siscu_se:ancient_shield/base_exposed",Oxidation:1}
execute if score oxidisation siscu.volatile matches 1 run data merge storage siscu:volatile {String:"siscu_se:ancient_shield/base",Oxidation:0}

execute if score oxidisation siscu.volatile matches 1 run advancement grant @s only siscu:minecraft/adventure/clean_ancient_shield

function siscu:items/item_modifier/ancient_shield_cleanse with storage siscu:volatile
