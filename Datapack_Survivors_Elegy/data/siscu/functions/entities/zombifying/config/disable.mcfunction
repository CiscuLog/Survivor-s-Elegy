scoreboard players set phage_enabled siscu.integer 0
effect clear @e unluck
execute as @a run function siscu:entities/zombifying/unzombify_player
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
function siscu:entities/zombifying/config/menu