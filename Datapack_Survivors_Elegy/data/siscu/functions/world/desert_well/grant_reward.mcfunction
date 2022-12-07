
tag @s remove siscu.well_unused
tag @s add siscu.well_used

kill @e[type=item,limit=1,sort=nearest,predicate=siscu:entities/is_gold_ingot]

fill ~-1.5 ~ ~-1.5 ~1.5 ~ ~1.5 air replace water
particle minecraft:rain ~ ~ ~ 0.75 0 0.75 0 100

playsound minecraft:block.note_block.bell master @a ~ ~ ~

loot spawn ~ ~ ~ loot siscu:gameplay/desert_well

#say thank you for the ingot, hope you choke on this treasure