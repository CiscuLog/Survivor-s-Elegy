scoreboard players set phage_enabled siscu.integer 0
effect clear @e unluck
execute as @a run function siscu:systems/phage/cure/player
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
function siscu:systems/phage/config/menu