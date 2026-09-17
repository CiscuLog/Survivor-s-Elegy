
advancement revoke @s from siscu:items/generate_loot/root

execute if predicate siscu:locations/check_outpost run function siscu:blocks/loot_blocks/technical/start {loot_table:"pillager_outpost"}
execute if predicate siscu:locations/check_stronghold run function siscu:blocks/loot_blocks/technical/start {loot_table:"stronghold_library"}
execute if predicate siscu:locations/check_mansion run function siscu:blocks/loot_blocks/technical/start {loot_table:"woodland_mansion"}
