
execute store result score xp_plantoid siscu.volatile run data get entity @s data.Xp

# reduce xp
execute if score xp_plantoid siscu.volatile matches ..6 run return 0

scoreboard players remove xp_plantoid siscu.volatile 7

execute store result storage siscu:volatile XpStored int 1 run scoreboard players get xp_plantoid siscu.volatile

data modify entity @s data.Xp set from storage siscu:volatile XpStored

# effects
execute as @n[tag=siscu.sculk_plantoid,type=item_display] run function siscu:entities/sculk_plantoid/update_texture
playsound item.bottle.fill_dragonbreath block @a ~ ~ ~
particle happy_villager ~ ~1.3 ~ 0.2 0.2 0.2 0 1 normal

# give bottle
item modify entity @n[type=player,tag=siscu.plantoid_feeding] weapon.mainhand siscu:decrease_1
execute if items entity @s weapon.mainhand air run return run item replace entity @s weapon with experience_bottle

give @n[type=player,tag=siscu.plantoid_feeding] experience_bottle
