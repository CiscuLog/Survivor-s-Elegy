tag @s add elegant_zombie
execute store result score random siscu.volatile run random value 1..6
execute unless score random siscu.volatile matches 3..4 run loot replace entity @s armor.head loot siscu:items/combat/elegant_hat
execute if score random siscu.volatile matches 2..5 run loot replace entity @s armor.chest loot siscu:items/combat/elegant_suit
execute if score random siscu.volatile matches 4..6 run loot replace entity @s armor.legs loot siscu:items/combat/elegant_trousers

data merge entity @s {ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],DeathLootTable:"siscu:entities/special_zombie_loot"}

execute if score phage_enabled siscu.integer matches 1 if predicate siscu:utils/10_percent run tag @s add infected_zombie
execute unless entity @s[tag=infected_zombie] run tag @s remove unequipped