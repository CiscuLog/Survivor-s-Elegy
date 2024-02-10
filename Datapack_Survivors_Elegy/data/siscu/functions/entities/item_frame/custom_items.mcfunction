
execute if predicate siscu:entities/item_frame/multicheck_items run tag @s add check_again
execute unless predicate siscu:entities/item_frame/multicheck_items run tag @s remove check_again

# Bee Counter #
execute if entity @s[nbt={Item:{id: "minecraft:raw_copper", tag:{CustomModelData:540000}}}] if entity @e[type=player,distance=..10] run execute at @s[type=#siscu:item_frames] run return run function siscu:entities/item_frame/bee_counter/bee_counter

# Shutters #
## unrolled
execute if entity @s[nbt={Item:{id: "minecraft:stick", tag:{CustomModelData:548103}}}] if predicate siscu:entities/item_frame/is_rotated run function siscu:entities/item_frame/shutters/roll_shutters
## rolled
execute if entity @s[nbt={Item:{id: "minecraft:stick", tag:{CustomModelData:548104}}}] if predicate siscu:entities/item_frame/is_rotated run function siscu:entities/item_frame/shutters/unroll_shutters