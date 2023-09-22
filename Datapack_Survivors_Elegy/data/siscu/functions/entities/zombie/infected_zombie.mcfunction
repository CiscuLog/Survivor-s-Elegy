
execute store result score random siscu.volatile run random value 0..2

execute if score random siscu.volatile matches 0 run loot replace entity @s armor.head loot siscu:groups/zombie_arrows
execute if score random siscu.volatile matches 1 run loot replace entity @s weapon.mainhand loot siscu:groups/zombie_arrows
execute if score random siscu.volatile matches 2 run loot replace entity @s weapon.offhand loot siscu:groups/zombie_arrows

execute if predicate siscu:utils/50_percent unless score random siscu.volatile matches 1 run loot replace entity @s weapon.mainhand loot siscu:groups/zombie_weapons
execute if predicate siscu:utils/10_percent unless score random siscu.volatile matches 2 run loot replace entity @s weapon.offhand loot siscu:groups/zombie_shields

data merge entity @s {ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],DeathLootTable:"siscu:entities/special_zombie_loot"}

effect give @s unluck 1000000 1

tag @s remove unequipped