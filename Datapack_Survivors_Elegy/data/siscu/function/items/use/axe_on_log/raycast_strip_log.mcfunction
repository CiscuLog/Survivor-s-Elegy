scoreboard players remove ray siscu.volatile 1
execute unless score ray siscu.volatile matches 0..50 run return 0

# when hitting a log, summon sticks
execute if block ~ ~ ~ #logs_that_burn positioned ^ ^ ^-0.3 align xyz run return run loot spawn ~0.5 ~0 ~0.5 loot siscu:blocks/wooden_logs_strip

execute positioned ^ ^ ^0.1 run function siscu:items/use/axe_on_log/raycast_strip_log
