advancement revoke @a only siscu:items/use/instrument_hold

execute if score @s siscu.use_goat_horn matches 1.. run function siscu:entities/warden/instant_anger
scoreboard players set @s siscu.use_goat_horn 0