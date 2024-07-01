
scoreboard players set @s siscu.bees 0
execute if data block ^ ^ ^-1 bees[0] run scoreboard players add @s siscu.bees 1
execute if data block ^ ^ ^-1 bees[1] run scoreboard players add @s siscu.bees 1
execute if data block ^ ^ ^-1 bees[2] run scoreboard players add @s siscu.bees 1

execute if score @s siscu.bees matches 0 positioned ~ ~-0.8 ~ run summon minecraft:area_effect_cloud ^ ^ ^0.1 {WaitTime:0,Duration:21,CustomName:'[{"text":"0","color":"red"}]',CustomNameVisible:1}
execute if score @s siscu.bees matches 1 positioned ~ ~-0.8 ~ run summon minecraft:area_effect_cloud ^ ^ ^0.1 {WaitTime:0,Duration:25,CustomName:'[{"text":"1","color":"gold"}]',CustomNameVisible:1}
execute if score @s siscu.bees matches 2 positioned ~ ~-0.8 ~ run summon minecraft:area_effect_cloud ^ ^ ^0.1 {WaitTime:0,Duration:25,CustomName:'[{"text":"2","color":"yellow"}]',CustomNameVisible:1}
execute if score @s siscu.bees matches 3 positioned ~ ~-0.8 ~ run summon minecraft:area_effect_cloud ^ ^ ^0.1 {WaitTime:0,Duration:25,CustomName:'[{"text":"3","color":"green"}]',CustomNameVisible:1}