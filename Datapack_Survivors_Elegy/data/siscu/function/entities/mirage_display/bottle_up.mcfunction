
data remove entity @s interaction
execute if entity @p[tag=siscu.mirage_interacting,gamemode=!creative] run loot spawn ~ ~0.2 ~ loot siscu:items/functional/mirage_bottle
kill @e[distance=..0.4,tag=siscu.mirage]
particle end_rod ~ ~0.5 ~ 0 0 0 0.05 3
#playsound minecraft:item.bottle.fill_dragonbreath block @a
playsound siscu_se:item.mirage_bottle.retrieve block @a
