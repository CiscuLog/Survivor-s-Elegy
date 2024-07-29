
scoreboard players set @s siscu.bees 0
execute store result score @s siscu.bees run data get block ^ ^ ^-1 bees

execute if score @s siscu.bees matches 0 positioned ~ ~-0.8 ~ run return run summon minecraft:area_effect_cloud ^ ^ ^0.1 {WaitTime:0,Duration:21,CustomName:'[{"text":"0","color":"red"}]',CustomNameVisible:true}
execute if score @s siscu.bees matches 1 positioned ~ ~-0.8 ~ run return run summon minecraft:area_effect_cloud ^ ^ ^0.1 {WaitTime:0,Duration:25,CustomName:'[{"text":"1","color":"gold"}]',CustomNameVisible:true}
execute if score @s siscu.bees matches 2 positioned ~ ~-0.8 ~ run return run summon minecraft:area_effect_cloud ^ ^ ^0.1 {WaitTime:0,Duration:25,CustomName:'[{"text":"2","color":"yellow"}]',CustomNameVisible:true}
execute if score @s siscu.bees matches 3 positioned ~ ~-0.8 ~ run return run summon minecraft:area_effect_cloud ^ ^ ^0.1 {WaitTime:0,Duration:25,CustomName:'[{"text":"3","color":"green"}]',CustomNameVisible:true}