
scoreboard players set @s siscu.dimension 3
execute if predicate siscu:entities/died_in_the_overworld run scoreboard players set @s siscu.dimension 0
execute if predicate siscu:entities/died_in_the_nether run scoreboard players set @s siscu.dimension 1
execute if predicate siscu:entities/died_in_the_end run scoreboard players set @s siscu.dimension 2

execute if score @s siscu.dimension matches 0 run tellraw @s [{"text":"Last Death: ","color":"red","bold":true},{"entity":"@s","nbt":"LastDeathLocation.pos[0]","color":"white"},{"text":" "},{"entity":"@s","nbt":"LastDeathLocation.pos[1]","color":"white"},{"text":" "},{"entity":"@s","nbt":"LastDeathLocation.pos[2]","color":"white"},{"text":" [Overworld]","color":"green"}]
execute if score @s siscu.dimension matches 1 run tellraw @s [{"text":"Last Death: ","color":"red","bold":true},{"entity":"@s","nbt":"LastDeathLocation.pos[0]","color":"white"},{"text":" "},{"entity":"@s","nbt":"LastDeathLocation.pos[1]","color":"white"},{"text":" "},{"entity":"@s","nbt":"LastDeathLocation.pos[2]","color":"white"},{"text":" [The Nether]","color":"red"}]
execute if score @s siscu.dimension matches 2 run tellraw @s [{"text":"Last Death: ","color":"red","bold":true},{"entity":"@s","nbt":"LastDeathLocation.pos[0]","color":"white"},{"text":" "},{"entity":"@s","nbt":"LastDeathLocation.pos[1]","color":"white"},{"text":" "},{"entity":"@s","nbt":"LastDeathLocation.pos[2]","color":"white"},{"text":" [The End]","color":"light_purple"}]
execute if score @s siscu.dimension matches 3 run tellraw @s [{"text":"Last Death: ","color":"red","bold":true},{"entity":"@s","nbt":"LastDeathLocation.pos[0]","color":"white"},{"text":" "},{"entity":"@s","nbt":"LastDeathLocation.pos[1]","color":"white"},{"text":" "},{"entity":"@s","nbt":"LastDeathLocation.pos[2]","color":"white"},{"text":"[","color":"gray"},{"entity":"@s","nbt":"LastDeathLocation.dimension","color":"gray"},{"text":"]","color":"gray"}]
