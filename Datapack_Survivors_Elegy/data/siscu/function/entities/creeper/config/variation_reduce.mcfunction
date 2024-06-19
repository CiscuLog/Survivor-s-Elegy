execute if score creeper_min siscu.integer < creeper_max siscu.integer run scoreboard players remove creeper_max siscu.integer 1
execute if score creeper_min siscu.integer < creeper_max siscu.integer run scoreboard players add creeper_min siscu.integer 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5
function siscu:entities/creeper/config/menu