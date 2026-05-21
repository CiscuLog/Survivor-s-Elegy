
# Random situation
execute if predicate siscu:locations/check_infected_city run tag @s add siscu.corpse_fleeing

# Random variant
execute unless entity @s[tag=siscu.player_model] unless entity @s[tag=siscu.zombie_model] unless entity @s[tag=siscu.skeleton_model] if predicate siscu:utils/50_percent run tag @s add siscu.infected_model
execute unless entity @s[tag=siscu.player_model] unless entity @s[tag=siscu.zombie_model] unless entity @s[tag=siscu.skeleton_model] if predicate siscu:utils/50_percent run tag @s add siscu.zombie_model
execute unless entity @s[tag=siscu.player_model] unless entity @s[tag=siscu.zombie_model] unless entity @s[tag=siscu.skeleton_model] if predicate siscu:utils/50_percent run tag @s add siscu.skeleton_model

tag @s remove siscu.player_corpse_unset
function siscu:entities/player_corpse/summon/main
