
execute if score @s siscu.use_fungus matches 1.. run function siscu:items/use/fungus_on_a_stick_use

scoreboard players set @s siscu.use_fungus 0
advancement revoke @s only siscu:items/use/warped_fungus_on_a_stick_hold