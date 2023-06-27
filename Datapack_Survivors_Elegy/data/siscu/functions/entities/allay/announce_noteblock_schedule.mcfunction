
execute as @e[type=allay] if data entity @s Brain.memories.minecraft:liked_noteblock.value.pos at @s run function siscu:entities/allay/announce_noteblock

scoreboard players remove allay_counter siscu.volatile 1
execute if score allay_counter siscu.volatile matches 1.. run schedule function siscu:entities/allay/announce_noteblock_schedule 2t