function siscu:world/swamp_hut/log_pillars_schedule
function siscu:world/swamp_hut/old_pillars_clear_schedule

execute as @e[tag=swamp_hut_bedroom_cabinet] at @s run data merge block ~ ~ ~ {LootTable:"siscu:chests/swamp_hut_bedroom_cabinet"}
execute as @e[tag=swamp_hut_bedroom_chest] at @s run data merge block ~ ~ ~ {LootTable:"siscu:chests/swamp_hut_bedroom_chest"}
execute as @e[tag=swamp_hut_cabinet] at @s run data merge block ~ ~ ~ {LootTable:"siscu:chests/swamp_hut_cabinet"}
execute as @e[tag=swamp_hut_entrance_cabinet] at @s run data merge block ~ ~ ~ {LootTable:"siscu:chests/swamp_hut_entrance_cabinet"}
execute as @e[tag=swamp_hut_entrance_chest] at @s run data merge block ~ ~ ~ {LootTable:"siscu:chests/swamp_hut_entrance_chest"}
execute as @e[tag=swamp_hut_potion_chest] at @s run data merge block ~ ~ ~ {LootTable:"siscu:chests/swamp_hut_potion_chest"}
execute as @e[tag=swamp_hut_stairs_cabinet] at @s run data merge block ~ ~ ~ {LootTable:"siscu:chests/swamp_hut_stairs_cabinet"}
execute as @e[tag=swamp_hut_storage] at @s run data merge block ~ ~ ~ {LootTable:"siscu:chests/swamp_hut_storage"}

kill @e[tag=swamp_hut_loot_markers]