execute if score creeper_min siscu.integer matches 2.. if score creeper_max siscu.integer matches ..500 run scoreboard players add creeper_max siscu.integer 1
execute if score creeper_min siscu.integer matches 2.. if score creeper_max siscu.integer matches ..500 run scoreboard players remove creeper_min siscu.integer 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
function siscu:entities/creeper/config/menu