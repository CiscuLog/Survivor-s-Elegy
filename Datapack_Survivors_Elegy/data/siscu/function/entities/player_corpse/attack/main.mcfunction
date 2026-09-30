
scoreboard players add @s siscu.entity_hit 2
function siscu:entities/custom/damage/raise_flag

execute if score @s siscu.entity_hit matches 5.. run function siscu:entities/player_corpse/update/kill/kill

execute at @s run particle damage_indicator ~ ~0.2 ~ 0.2 0 0.2 0.05 1
function siscu:entities/player_corpse/attack/sound

data remove entity @s attack
