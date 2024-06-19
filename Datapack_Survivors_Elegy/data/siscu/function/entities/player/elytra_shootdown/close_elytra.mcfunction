tag @s add struck
execute store result score @s siscu.elytra_durability run data get entity @s Inventory[{Slot:102b}].components.minecraft:damage
scoreboard players remove @s siscu.elytra_durability 432
scoreboard players operation @s siscu.elytra_durability *= -1 siscu.integer
scoreboard players operation @s siscu.elytra_durability *= 100 siscu.integer
scoreboard players operation @s siscu.elytra_durability /= 432 siscu.integer
item modify entity @s armor.chest siscu:set_broken
schedule function siscu:entities/player/elytra_shootdown/return_elytra_schedule 2t