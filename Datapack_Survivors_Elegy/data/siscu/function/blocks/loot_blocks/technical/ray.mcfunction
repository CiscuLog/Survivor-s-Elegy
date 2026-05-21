
# if it has book already, check which one and then update
$execute if block ~ ~ ~ #siscu:loot_containers run return run summon marker ~ ~ ~ {Tags:["smithed.strict","siscu.worldgen","siscu.loot_table_insertion"],data:{loot_table:"$(loot_table)"}}

execute if score ray siscu.volatile matches 0 run return fail
scoreboard players remove ray siscu.volatile 1

$execute positioned ^ ^ ^0.1 run function siscu:blocks/loot_blocks/technical/ray {loot_table:"$(loot_table)"}