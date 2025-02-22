
execute unless data entity @s {Item:{id:"minecraft:painting"}} run return run kill @s
function siscu:world/paintings/correct_rotation
data modify storage siscu:volatile String2 set from entity @s Item.components."minecraft:entity_data".variant
execute at @s run function siscu:world/paintings/macro with storage siscu:volatile
kill @s
