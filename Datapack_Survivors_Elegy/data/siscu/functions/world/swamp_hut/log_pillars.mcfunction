execute if entity @s[tag=!mangrove_hut] run setblock ~ ~ ~ oak_log
execute if entity @s[tag=mangrove_hut] run setblock ~ ~ ~ mangrove_log
tp @s ~ ~-1 ~
execute unless block ~ ~-1 ~ #siscu:swamp_hut_pillar_blocks run kill @s

execute if entity @e[tag=swamp_hut_pillar] run schedule function siscu:world/swamp_hut/log_pillars_schedule 5t