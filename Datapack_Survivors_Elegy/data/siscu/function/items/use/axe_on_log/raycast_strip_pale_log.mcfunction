scoreboard players remove ray siscu.volatile 1
execute unless score ray siscu.volatile matches 0..50 run return 0

# when hitting a stem, summon gall
execute if block ~ ~ ~ #pale_oak_logs positioned ^ ^ ^-0.3 align xyz run return run loot spawn ~0.5 ~0 ~0.5 loot siscu:blocks/pale_oak_log_strip

execute positioned ^ ^ ^0.1 run function siscu:items/use/axe_on_log/raycast_strip_pale_log
