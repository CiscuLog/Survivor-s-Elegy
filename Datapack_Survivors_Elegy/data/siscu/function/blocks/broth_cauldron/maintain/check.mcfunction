
# kill if it's not in a cauldron
execute unless block ~ ~ ~ #siscu:broth_cauldrons_allow_ladle run return run function siscu:blocks/broth_cauldron/update/kill

execute if score @s siscu.balancer = tick siscu.balancer run function siscu:blocks/broth_cauldron/temperature/check
