advancement revoke @s only siscu:entities/villager_librarian_mending_nerf
execute if score librarian_mending_nerf siscu.integer matches 0 run return 0
execute if score librarian_mending_nerf siscu.integer matches 1 as @e[type=villager,predicate=siscu:entities/is_librarian_trading_mending,predicate=siscu:entities/villager_no_xp] at @s run return run function siscu:entities/villager/librarian/mending_nerf
execute if score librarian_mending_nerf siscu.integer matches 1 as @e[type=villager,predicate=siscu:entities/is_librarian_trading_mending] run return 0
execute as @e[type=villager,predicate=siscu:entities/is_librarian_trading_mending] at @s run return run function siscu:entities/villager/librarian/mending_nerf
