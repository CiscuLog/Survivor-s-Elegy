
execute if score @s siscu.use_carrot matches 1.. run function siscu:items/use/carrot_on_a_stick_use

scoreboard players set @s siscu.use_carrot 0
advancement revoke @s only siscu:items/use/carrot_on_a_stick_hold