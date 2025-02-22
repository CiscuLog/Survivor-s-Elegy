advancement revoke @s only siscu:entities/kill_wither_skeleton
execute unless score @s siscu.withering matches ..-40 run scoreboard players remove @s siscu.withering 20
execute if score @s siscu.withering matches ..-40 run scoreboard players set @s siscu.withering -41