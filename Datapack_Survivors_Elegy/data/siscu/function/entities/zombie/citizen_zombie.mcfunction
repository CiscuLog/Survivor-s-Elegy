execute if predicate siscu:utils/is_baby run return 0

execute if predicate siscu:utils/20_percent run return run function siscu:entities/zombie/citizen_zombie_elegant

execute store result score random siscu.volatile run random value 1..6
execute unless score random siscu.volatile matches 3..4 run loot replace entity @s armor.head loot siscu:items/combat/brown_hat
execute if score random siscu.volatile matches 2..5 run loot replace entity @s armor.chest loot siscu:items/combat/brown_suit
execute if score random siscu.volatile matches 4..6 run loot replace entity @s armor.legs loot siscu:items/combat/brown_trousers

execute unless entity @s[tag=siscu.infected_zombie] run tag @s remove siscu.unequipped
