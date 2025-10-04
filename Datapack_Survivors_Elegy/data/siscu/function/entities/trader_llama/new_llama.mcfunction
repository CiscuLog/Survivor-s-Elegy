#execute at @s summon trader_llama at @s run data modify entity @s DespawnDelay set from entity @n[type=wandering_trader] DespawnDelay
$execute at @s run summon trader_llama ~ ~ ~ {DespawnDelay:$(DespawnDelay),Variant:$(Variant),Tame:$(Tame),Strength:$(Strength)}
function siscu:world/kill_dead