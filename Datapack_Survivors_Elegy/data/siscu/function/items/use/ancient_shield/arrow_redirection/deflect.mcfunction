
# tag deflected projectile
execute at @s as @n[type=#siscu:deflectable_projectiles,nbt={inGround:0b},distance=..5] run tag @s add siscu.deflected_projectile

# get rotation
data modify storage siscu:volatile data.rotation set from entity @s Rotation
data modify storage siscu:volatile data.rotation[0] set compute default float {type:"mul",inputs:[{type:"storage","storage":"siscu:volatile",path:"data.rotation[0]",fallback:0},-0.0174532]}
data modify storage siscu:volatile data.rotation[1] set compute default float {type:"mul",inputs:[{type:"storage","storage":"siscu:volatile",path:"data.rotation[1]",fallback:0},-0.0174532]}
data modify storage siscu:volatile data.motion set value [0f,0f,0f]
data modify storage siscu:volatile data.speed set value 3

# set motion facing direction
# x = cos(x)cos(y)
# y = sin(y)
# z = sin(x)cos(y)
data modify storage siscu:volatile data.motion[0] set compute entity @s float {type:"mul",inputs:[\
  {type:"storage",storage:"siscu:volatile","path":"data.speed"},\
  {type:"sin",input:{type:"storage",storage:"siscu:volatile","path":"data.rotation[0]"}},\
  {type:"cos",input:{type:"storage",storage:"siscu:volatile",path:"data.rotation[1]"}}\
]}
data modify storage siscu:volatile data.motion[1] set compute entity @s float {type:"mul",inputs:[\
  {type:"storage",storage:"siscu:volatile","path":"data.speed"},\
  {type:"sin",input:{type:"storage",storage:"siscu:volatile","path":"data.rotation[1]"}}\
]}
data modify storage siscu:volatile data.motion[2] set compute entity @s float {type:"mul",inputs:[\
  {type:"storage",storage:"siscu:volatile","path":"data.speed"},\
  {type:"cos",input:{type:"storage",storage:"siscu:volatile","path":"data.rotation[0]"}},\
  {type:"cos",input:{type:"storage",storage:"siscu:volatile",path:"data.rotation[1]"}}\
]}

# store data
data modify entity @n[type=#siscu:deflectable_projectiles,tag=siscu.deflected_projectile] data.Motion set from storage siscu:volatile data.motion
data modify entity @n[type=#siscu:deflectable_projectiles,tag=siscu.deflected_projectile] data.Owner set from entity @s UUID

# end function
schedule function siscu:items/use/ancient_shield/arrow_redirection/schedule 1t append

return 1





## Old implementation
# motion in 1 axis = (x1-x2)/5

execute as @n[type=#siscu:deflectable_projectiles,tag=siscu.deflected_projectile] store result score x siscu.volatile run data get entity @s Pos[0] 10
execute as @n[type=#siscu:deflectable_projectiles,tag=siscu.deflected_projectile] store result score y siscu.volatile run data get entity @s Pos[1] 10
execute as @n[type=#siscu:deflectable_projectiles,tag=siscu.deflected_projectile] store result score z siscu.volatile run data get entity @s Pos[2] 10

# set endpoint
execute positioned ^ ^1 ^8 run summon area_effect_cloud ~ ~ ~ {Tags:["siscu.vector_endpoint"],Duration:1,Radius:0,Age:20}
execute positioned ^ ^1.8 ^10 store result score x1 siscu.volatile run data get entity @n[type=area_effect_cloud,tag=siscu.vector_endpoint] Pos[0] 10
execute positioned ^ ^1.8 ^10 store result score y1 siscu.volatile run data get entity @n[type=area_effect_cloud,tag=siscu.vector_endpoint] Pos[1] 10
execute positioned ^ ^1.8 ^10 store result score z1 siscu.volatile run data get entity @n[type=area_effect_cloud,tag=siscu.vector_endpoint] Pos[2] 10

# get vector
scoreboard players operation x1 siscu.volatile -= x siscu.volatile
scoreboard players operation y1 siscu.volatile -= y siscu.volatile
scoreboard players operation z1 siscu.volatile -= z siscu.volatile

# set motion
scoreboard players add y1 siscu.volatile 10

data merge entity @n[type=#siscu:deflectable_projectiles,tag=siscu.deflected_projectile] {data:{Motion:[0.0d,0.0d,0.0d]}}
execute store result entity @n[type=#siscu:deflectable_projectiles,tag=siscu.deflected_projectile] data.Motion[0] double 0.02 run scoreboard players get x1 siscu.volatile
execute store result entity @n[type=#siscu:deflectable_projectiles,tag=siscu.deflected_projectile] data.Motion[1] double 0.02 run scoreboard players get y1 siscu.volatile
execute store result entity @n[type=#siscu:deflectable_projectiles,tag=siscu.deflected_projectile] data.Motion[2] double 0.02 run scoreboard players get z1 siscu.volatile

data modify entity @n[type=#siscu:deflectable_projectiles,tag=siscu.deflected_projectile] data.Owner set from entity @s UUID

# debug motion announcements
#tellraw @a [{"text":"Motion (entity):"},{"nbt": "data.Motion","source":"entity","entity": "@n[type=#siscu:deflectable_projectiles,tag=siscu.deflected_projectile]"}]

# end function
kill @e[type=area_effect_cloud,tag=siscu.vector_endpoint]
schedule function siscu:items/use/ancient_shield/arrow_redirection/schedule 1t

return 1
