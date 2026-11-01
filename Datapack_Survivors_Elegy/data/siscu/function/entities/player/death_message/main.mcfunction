
data merge storage siscu:volatile {data:{x:0,y:0,z:0,dimension:[{text: "[",color:"gray"},{text:"Overworld"},{text:"]"}]}}
execute if data entity @s LastDeathLocation{dimension:"minecraft:overworld"} run data modify storage siscu:volatile data.dimension set value [{text: "[",color:"green"},{text:"Overworld"},{text:"]"}]
execute if data entity @s LastDeathLocation{dimension:"minecraft:the_nether"} run data modify storage siscu:volatile data.dimension set value [{text: "[",color:"red"},{text:"The Nether"},{text:"]"}]
execute if data entity @s LastDeathLocation{dimension:"minecraft:the_end"} run data modify storage siscu:volatile data.dimension set value [{text: "[",color:"purple"},{text:"The End"},{text:"]"}]

data modify storage siscu:volatile data.x set from entity @s LastDeathLocation.pos[0]
data modify storage siscu:volatile data.y set from entity @s LastDeathLocation.pos[1]
data modify storage siscu:volatile data.z set from entity @s LastDeathLocation.pos[2]

function siscu:entities/player/death_message/macro with storage siscu:volatile data
