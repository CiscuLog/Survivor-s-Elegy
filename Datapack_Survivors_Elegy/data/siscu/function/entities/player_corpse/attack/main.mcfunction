
scoreboard players add @s siscu.entity_hit 1

execute if score @s siscu.entity_hit matches 2.. run function siscu:entities/player_corpse/update/kill/kill

execute at @s run particle damage_indicator ~ ~0.2 ~ 0.2 0 0.2 0.05 1
playsound entity.generic.hurt block @a ~ ~ ~

data remove entity @s attack
schedule function siscu:entities/player_corpse/attack/recover_schedule 1s append
