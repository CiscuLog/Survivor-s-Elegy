
tag @s add siscu.elegant_zombie
execute store result score random siscu.volatile run random value 1..6
execute unless score random siscu.volatile matches 3..4 run loot replace entity @s armor.head loot siscu:items/combat/black_hat
execute if score random siscu.volatile matches 2..5 run loot replace entity @s armor.chest loot siscu:items/combat/black_suit
execute if score random siscu.volatile matches 4..6 run loot replace entity @s armor.legs loot siscu:items/combat/black_trousers

execute if score phage_enabled siscu.integer matches 1 if predicate siscu:utils/10_percent run tag @s add siscu.infected_zombie
execute unless entity @s[tag=siscu.infected_zombie] run tag @s remove siscu.unequipped
