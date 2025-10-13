
execute if block ~ ~ ~ #fire run return run setblock ~ ~ ~ air
execute if block ~ ~ ~ campfire run return run setblock ~ ~ ~ campfire[lit=false]
execute if block ~ ~ ~ soul_campfire run return run setblock ~ ~ ~ soul_campfire[lit=false]
execute if block ~ ~ ~ magma_block run return run setblock ~ ~ ~ netherrack
execute if block ~ ~ ~ lava run return run setblock ~ ~ ~ obsidian
execute if block ~ ~ ~ #siscu:torches run return run fill ~ ~ ~ ~ ~ ~ air destroy