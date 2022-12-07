execute store result score @s siscu.x_pos run data get entity @s LastDeathLocation.pos[0]
execute store result score @s siscu.y_pos run data get entity @s LastDeathLocation.pos[1]
execute store result score @s siscu.z_pos run data get entity @s LastDeathLocation.pos[2]

execute at @s if predicate siscu:player/died_in_the_overworld run scoreboard players set @s siscu.dimension 0
execute at @s if predicate siscu:player/died_in_the_nether run scoreboard players set @s siscu.dimension 1
execute at @s if predicate siscu:player/died_in_the_end run scoreboard players set @s siscu.dimension 2