
# bee counter
scoreboard players set x siscu.volatile 0
execute store result score x siscu.volatile run data get block ^ ^ ^-1 bees
scoreboard players add x siscu.volatile 6

execute store result storage siscu:volatile bees byte 1 run scoreboard players get x siscu.volatile

# honey counter
execute positioned ^ ^ ^-1 run function siscu:entities/item_frame/bee_counter/get_honey_level

# title
execute positioned ~ ~-0.8 ~ run function siscu:entities/item_frame/bee_counter/text_macro with storage siscu:volatile