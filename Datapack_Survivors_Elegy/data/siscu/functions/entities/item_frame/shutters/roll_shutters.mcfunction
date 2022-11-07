data merge entity @s {Item:{tag:{CustomModelData:548104}},ItemRotation: 4b}
execute at @s positioned ~ ~1 ~ as @e[type=item_frame,distance=..0.5,nbt={Item:{id: "minecraft:stick", tag:{CustomModelData:548103}}}] run function siscu:entities/item_frame/shutters/roll_up_sequence
execute at @s positioned ~ ~-1 ~ as @e[type=item_frame,distance=..0.5,nbt={Item:{id: "minecraft:stick", tag:{CustomModelData:548103}}}] run function siscu:entities/item_frame/shutters/roll_down_sequence
execute at @s run playsound minecraft:entity.painting.place master @a ~ ~ ~ 1 0.7