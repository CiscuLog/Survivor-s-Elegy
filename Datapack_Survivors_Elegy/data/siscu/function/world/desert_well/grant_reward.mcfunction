
tag @s remove siscu.well_unused
tag @s add siscu.well_used

execute as @n[type=item,predicate=siscu:entities/is_gold_ingot] run function siscu:entities/item/decrease_1

fill ~-1.5 ~ ~-1.5 ~1.5 ~ ~1.5 air replace water
particle minecraft:rain ~ ~ ~ 0.75 0 0.75 0 100

playsound minecraft:block.note_block.bell master @a ~ ~ ~

loot spawn ~ ~ ~ loot siscu:gameplay/desert_well

advancement grant @a[distance=..5] only siscu:minecraft/adventure/well_treasure