execute unless block ~ ~ ~ oak_log run kill @s
execute if block ~ ~ ~ oak_log run setblock ~ ~ ~ air
tp @s ~ ~-1 ~
execute if entity @e[tag=swamp_hut_pillar_clear] run schedule function siscu:world/swamp_hut/old_pillars_clear_schedule 5t