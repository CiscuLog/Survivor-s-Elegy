
data merge storage siscu:volatile {data:{x:0,y:0,z:0,player:"steve"}}
data modify storage siscu:volatile data.x set from entity @s LastDeathLocation.pos[0]
data modify storage siscu:volatile data.y set from entity @s LastDeathLocation.pos[1]
data modify storage siscu:volatile data.z set from entity @s LastDeathLocation.pos[2]

function siscu:technical/player_name {output:"storage siscu:volatile data.player"}

function siscu:systems/phage/zombified/summon_dead_player/summon with storage siscu:volatile data
data remove storage siscu:volatile data
