
# update purposes, to remove in upcoming update
execute if entity @s[tag=withering_invulnerable] run return run tag @s add siscu.withering_invulnerable

execute if dimension the_nether run return run function siscu:world/withering/withering_add
execute if score @s siscu.withering matches 1.. run function siscu:world/withering/withering_recover
