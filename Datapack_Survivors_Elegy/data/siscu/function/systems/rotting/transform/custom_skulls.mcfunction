data merge entity @s {drop_chances:{head:0.0}}
loot replace entity @s[type=zombified_piglin] armor.head loot siscu:entities/piglin/piglin_skeleton_heads
loot replace entity @s[type=zombie_villager,tag=!siscu.zombified_witch] armor.head loot siscu:entities/skeleton/villager_skeleton_heads
execute if items entity @s[tag=siscu.bogged_zombie] armor.head *[item_model="siscu_se:bogged_shrooms"] run item replace entity @s armor.head with air