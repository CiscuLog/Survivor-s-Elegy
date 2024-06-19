advancement revoke @s only siscu:entities/damaged_by_zombified_player
execute if predicate siscu:entities/has_phage run return 0
execute if predicate siscu:utils/50_percent if score phage_enabled siscu.integer matches 1 run effect give @s unluck 1200 10