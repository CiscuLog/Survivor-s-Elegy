advancement revoke @s only siscu:entities/damaged_by_zombified_player
execute if entity @s[tag=siscu.zombie] run return 0
execute if predicate siscu:utils/50_percent if score phage_enabled siscu.integer matches 1 run function siscu:entities/phage/start_phage {value:1200}