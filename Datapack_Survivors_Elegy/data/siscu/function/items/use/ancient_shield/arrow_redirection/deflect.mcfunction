
# tag deflected projectile
execute as @e[type=#siscu:deflectable_projectiles,nbt={inGround:0b},distance=..5] run tag @s add siscu.deflected_projectile

execute as @e[type=#siscu:deflectable_projectiles,tag=siscu.deflected_projectile] store result score x siscu.volatile run data get entity @s Pos[0] 10
execute as @e[type=#siscu:deflectable_projectiles,tag=siscu.deflected_projectile] store result score y siscu.volatile run data get entity @s Pos[1] 10
execute as @e[type=#siscu:deflectable_projectiles,tag=siscu.deflected_projectile] store result score z siscu.volatile run data get entity @s Pos[2] 10

# set endpoint
execute positioned ^ ^1 ^8 run summon area_effect_cloud ~ ~ ~ {Tags:["siscu.vector_endpoint"]}
execute positioned ^ ^1.8 ^10 store result score x1 siscu.volatile run data get entity @n[type=area_effect_cloud,tag=siscu.vector_endpoint] Pos[0] 10
execute positioned ^ ^1.8 ^10 store result score y1 siscu.volatile run data get entity @n[type=area_effect_cloud,tag=siscu.vector_endpoint] Pos[1] 10
execute positioned ^ ^1.8 ^10 store result score z1 siscu.volatile run data get entity @n[type=area_effect_cloud,tag=siscu.vector_endpoint] Pos[2] 10

# get vector
scoreboard players operation x1 siscu.volatile -= x siscu.volatile
scoreboard players operation y1 siscu.volatile -= y siscu.volatile
scoreboard players operation z1 siscu.volatile -= z siscu.volatile

# set motion
scoreboard players add y1 siscu.volatile 10

data merge storage siscu:volatile {Motion:[0.0d,0.0d,0.0d]}
execute store result storage siscu:volatile Motion[0] double 0.02 run scoreboard players get x1 siscu.volatile
execute store result storage siscu:volatile Motion[1] double 0.02 run scoreboard players get y1 siscu.volatile
execute store result storage siscu:volatile Motion[2] double 0.02 run scoreboard players get z1 siscu.volatile

# debug motion announcements
#tellraw @a [{"text":"Motion (storage):"},{"nbt": "Motion","source": "storage","storage": "siscu:volatile"}]

# end function
kill @e[type=area_effect_cloud,tag=siscu.vector_endpoint]
schedule function siscu:items/use/ancient_shield/arrow_redirection/schedule 1t

return 1
