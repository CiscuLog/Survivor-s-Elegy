advancement revoke @s only siscu:entities/villager_fletcher_stick_nerf
execute if score fletcher_stick_nerf siscu.integer matches 0 run return 0
execute if score fletcher_stick_nerf siscu.integer matches 1 as @e[type=villager,predicate=siscu:entities/is_fletcher_trading_sticks,predicate=siscu:entities/villager_no_xp] run return run function siscu:entities/villager/fletcher_nerf
execute if score fletcher_stick_nerf siscu.integer matches 1 as @e[type=villager,predicate=siscu:entities/is_fletcher_trading_sticks] run return 0
execute as @e[type=villager,predicate=siscu:entities/is_fletcher_trading_sticks] run return run function siscu:entities/villager/fletcher_nerf
