
# Entity data
data modify storage siscu:volatile data.Motion set from entity @s Motion
data modify storage siscu:volatile data.Rotation set from entity @s Rotation
data modify storage siscu:volatile data.Fire set from entity @s Fire
execute if data entity @s CustomName run data modify storage siscu:volatile data.CustomName set from entity @s CustomName
execute if data entity @s CustomNameVisible run data modify storage siscu:volatile data.CustomNameVisible set from entity @s CustomNameVisible
execute if data entity @s Silent run data modify storage siscu:volatile data.Silent set from entity @s Silent
execute if data entity @s data run data modify storage siscu:volatile data.data set from entity @s data

# Mob data
data modify storage siscu:volatile data.equipment set from entity @s equipment
execute if data entity @s NoAI run data modify storage siscu:volatile data.NoAI set from entity @s NoAI
