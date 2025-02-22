tag @s add siscu.zombie_checked

execute store result score random siscu.volatile run random value 0..64

execute if score random siscu.volatile matches 0..31 run return 1
execute if predicate siscu:locations/check_village run return 0

execute if predicate siscu:utils/is_baby run return 0

data merge entity @s {VillagerData:{profession:"none","type":"plains"},DeathLootTable:"siscu:entities/illager_zombie_loot"}
execute if score random siscu.volatile matches 32..47 run return run function siscu:entities/zombified_illager/pillager
execute if score random siscu.volatile matches 48..55 run return run function siscu:entities/zombified_illager/wandering_trader
execute if score random siscu.volatile matches 56..59 run return run function siscu:entities/zombified_illager/vindicator
execute if score random siscu.volatile matches 60..61 run return run function siscu:entities/zombified_illager/evoker
execute if score random siscu.volatile matches 62 run return run function siscu:entities/zombified_illager/witch
