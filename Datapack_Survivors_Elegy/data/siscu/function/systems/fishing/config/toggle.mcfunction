
scoreboard players set x siscu.volatile 0

execute store success score x siscu.volatile if score custom_fishing siscu.integer matches 1.. store result storage siscu:world config.custom_fishing int 1 run scoreboard players set custom_fishing siscu.integer 0
execute unless score x siscu.volatile matches 1 store result storage siscu:world config.custom_fishing int 1 run scoreboard players set custom_fishing siscu.integer 1

execute if score custom_fishing siscu.integer matches 1.. run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1
execute if score custom_fishing siscu.integer matches 0 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5

$function $(menu)
