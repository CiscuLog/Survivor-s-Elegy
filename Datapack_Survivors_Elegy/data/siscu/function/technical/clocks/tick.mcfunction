
# Load balancer
scoreboard players add tick siscu.balancer 1
execute if score tick siscu.balancer matches 20.. run scoreboard players set tick siscu.balancer 0

# Broth Cauldrons
execute as @e[type=interaction,tag=siscu.broth_cauldron] at @s run function siscu:blocks/broth_cauldron/maintain/check

execute as @e[type=arrow,tag=!siscu.entity_checked] at @s run function siscu:entities/arrow/main