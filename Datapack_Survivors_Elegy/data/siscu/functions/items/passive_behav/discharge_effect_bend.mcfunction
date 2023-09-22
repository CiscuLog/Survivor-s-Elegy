
execute store result score random siscu.volatile run random value 0..5
execute if entity @p[tag=discharging,distance=..2] run scoreboard players set server_randN siscu.volatile 0

execute if score random siscu.volatile matches 0..1 positioned ^ ^ ^0.1 run function siscu:items/passive_behav/discharge_effect
execute if score random siscu.volatile matches 2 rotated ~40 ~ positioned ^ ^ ^0.1 run function siscu:items/passive_behav/discharge_effect
execute if score random siscu.volatile matches 3 rotated ~-40 ~ positioned ^ ^ ^0.1 run function siscu:items/passive_behav/discharge_effect
execute if score random siscu.volatile matches 4 rotated ~ ~40 positioned ^ ^ ^0.1 run function siscu:items/passive_behav/discharge_effect
execute if score random siscu.volatile matches 5 rotated ~ ~-40 positioned ^ ^ ^0.1 run function siscu:items/passive_behav/discharge_effect
