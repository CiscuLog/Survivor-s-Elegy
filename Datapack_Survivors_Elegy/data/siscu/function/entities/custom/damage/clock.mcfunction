
execute store success score success siscu.volatile as @e[type=#siscu:tech_block_bases,scores={siscu.entity_hit=1..}] run scoreboard players remove @s siscu.entity_hit 1

execute if score success siscu.volatile matches 0 run scoreboard players set damaged_entities siscu.volatile 0
