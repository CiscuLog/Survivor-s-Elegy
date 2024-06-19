execute as @e[type=marker,tag=siscu.trader_tent_glass] at @s run fill ~-10 ~1 ~-10 ~10 ~1 ~10 air replace barrier
execute unless block ~ ~ ~ barrier if entity @e[type=marker,tag=wandering_trader] run function siscu:world/trader_camp/summon_trader
execute unless block ~ ~ ~ barrier if entity @e[type=marker,tag=siscu.trader_tent_llama] run function siscu:world/trader_camp/summon_llama
execute unless block ~ ~ ~ barrier run kill @e[type=marker,tag=siscu.trader_tent_glass]