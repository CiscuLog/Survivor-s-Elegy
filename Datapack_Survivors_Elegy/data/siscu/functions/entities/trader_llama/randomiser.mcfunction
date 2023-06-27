# Tag the entity as checked

tag @s add llama_checked

# Run the randomiser

execute if predicate siscu:utils/75_percent unless predicate siscu:utils/is_baby run data merge entity @s {ChestedHorse:1}

execute unless score server_status siscu.integer matches 0 unless predicate siscu:utils/is_baby run function siscu:entities/trader_llama/carpet