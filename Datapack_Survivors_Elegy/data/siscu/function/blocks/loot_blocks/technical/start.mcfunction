
advancement revoke @s from siscu:items/generate_loot/main
execute store result score ray siscu.volatile run attribute @s block_interaction_range get 10
$execute anchored eyes positioned ^ ^ ^0.1 run function siscu:blocks/loot_blocks/technical/ray {loot_table:"$(loot_table)"}
schedule function siscu:blocks/loot_blocks/technical/schedule 1t
