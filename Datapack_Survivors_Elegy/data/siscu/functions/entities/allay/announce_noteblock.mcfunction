
summon marker ~ ~ ~ {Tags:["siscu.noteblock_marker"]}
effect give @s glowing 1 0 true

execute store result entity @e[type=marker,tag=siscu.noteblock_marker,limit=1] Pos[0] double 1 run data get entity @s Brain.memories.minecraft:liked_noteblock.value.pos[0]
execute store result entity @e[type=marker,tag=siscu.noteblock_marker,limit=1] Pos[1] double 1 run data get entity @s Brain.memories.minecraft:liked_noteblock.value.pos[1]
execute store result entity @e[type=marker,tag=siscu.noteblock_marker,limit=1] Pos[2] double 1 run data get entity @s Brain.memories.minecraft:liked_noteblock.value.pos[2]
execute as @e[type=marker,tag=siscu.noteblock_marker] at @s run tp ~0.5 ~0.5 ~0.5

#execute as @e[type=marker,tag=siscu.noteblock_marker] at @s if predicate siscu:utils/20_percent run function siscu:entities/allay/noteblock_particles
execute as @e[type=marker,tag=siscu.noteblock_marker] at @s run particle wax_off ~ ~ ~ 0.25 0.25 0.25 0 5


execute at @s positioned ~ ~0.3 ~ facing entity @e[tag=siscu.noteblock_marker] feet run function siscu:entities/allay/raycast

kill @e[tag=siscu.noteblock_marker]