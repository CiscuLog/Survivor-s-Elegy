
advancement revoke @s only siscu:entities/cure_player

# Only trigger if zombified
scoreboard players set x siscu.volatile 0
execute if entity @s[tag=siscu.zombifying] run scoreboard players add x siscu.volatile 1
execute if entity @s[tag=siscu.zombie] run scoreboard players add x siscu.volatile 1
execute if score x siscu.volatile matches 0 run return 0

function siscu:entities/phage/buildup/cure/reset
execute unless entity @s[tag=siscu.respawning] run function siscu:entities/phage/cure/player_cure_text

tag @s remove siscu.zombie
tag @s remove siscu.zombifying
effect clear @s unluck
attribute @s minecraft:attack_damage base reset
attribute @s minecraft:movement_speed base reset
attribute @s minecraft:max_health base reset
attribute @s block_break_speed base reset
#gamemode survival @s[gamemode=adventure]

# remove burning enchantment
function siscu:technical/body_item/sunburn_remove

scoreboard players reset @s siscu.zombifying

execute if entity @s[advancements={siscu:entities/cure_player=true}] at @s run function siscu:entities/phage/cure/player_cure_effects
execute at @s anchored eyes positioned ^ ^ ^ run particle entity_effect{color:[0.752,0.643,0.302,1]} ~ ~-0.5 ~ 0 0.5 0 0.3 20 normal
