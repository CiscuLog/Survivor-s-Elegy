advancement revoke @s only siscu:entities/player_flies_wearing_netherite
execute if predicate siscu:utils/0_5_percent run tag @s add struck_flying
execute unless entity @s[tag=struck_flying] at @s run return 0
execute at @s run summon lightning_bolt ^ ^ ^1
tag @s remove struck_flying