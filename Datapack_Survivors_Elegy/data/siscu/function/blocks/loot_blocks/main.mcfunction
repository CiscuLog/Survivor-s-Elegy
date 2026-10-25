
execute if entity @s[advancements={siscu:items/generate_loot/main={pillager_outpost=true}}] run return run function siscu:blocks/loot_blocks/technical/start {loot_table:"pillager_outpost"}
execute if entity @s[advancements={siscu:items/generate_loot/main={stronghold_library=true}}] run return run function siscu:blocks/loot_blocks/technical/start {loot_table:"stronghold_library"}
execute if entity @s[advancements={siscu:items/generate_loot/main={woodland_mansion=true}}] run return run function siscu:blocks/loot_blocks/technical/start {loot_table:"woodland_mansion"}
execute if entity @s[advancements={siscu:items/generate_loot/main={nether_fortress_farm=true}}] run advancement grant @s only cnk:chili_pepper_loot

advancement revoke @s from siscu:items/generate_loot/main