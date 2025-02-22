advancement revoke @s only siscu:entities/player_flies_wearing_netherite
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return 0
execute if predicate siscu:utils/0_5_percent at @s run function siscu:entities/player/elytra_shootdown/lightning_strike