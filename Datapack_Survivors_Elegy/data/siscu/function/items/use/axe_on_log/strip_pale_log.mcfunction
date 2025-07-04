
advancement revoke @s only siscu:items/use/axe_on_pale_log

# 5% chance
execute unless predicate siscu:utils/1_percent run return 0

# give resin
# check 5 blocks in front of the player, in increases of 0.1 blocks
scoreboard players set ray siscu.volatile 50
execute at @s anchored eyes rotated as @s positioned ^ ^ ^0.2 run function siscu:items/use/axe_on_log/raycast_strip_pale_log
