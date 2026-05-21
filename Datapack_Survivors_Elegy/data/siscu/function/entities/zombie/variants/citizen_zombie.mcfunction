
# Summon Phantom (only on citadels)
execute store result score y siscu.volatile if predicate siscu:locations/infected_citadel if predicate siscu:world/phantoms_survive
execute store result score x siscu.volatile positioned over motion_blocking if entity @e[type=phantom,distance=..50]
execute if score y siscu.volatile matches 1 if score x siscu.volatile matches ..4 if predicate siscu:locations/infected_citadel positioned over motion_blocking run summon phantom ~ ~10 ~

# If it's a baby it won't be wearing a suit
execute if predicate siscu:utils/is_baby run return 0

# Otherwise, maybe it can be elegant?
execute if predicate siscu:utils/20_percent run return run function siscu:entities/zombie/variants/citizen_zombie_elegant

execute store result score random siscu.volatile run random value 1..6
execute unless score random siscu.volatile matches 3..4 run loot replace entity @s armor.head loot siscu:items/combat/brown_hat
execute if score random siscu.volatile matches 2..5 run loot replace entity @s armor.chest loot siscu:items/combat/brown_suit
execute if score random siscu.volatile matches 4..6 run loot replace entity @s armor.legs loot siscu:items/combat/brown_trousers

execute unless entity @s[tag=siscu.infected_zombie] run tag @s remove siscu.unequipped
