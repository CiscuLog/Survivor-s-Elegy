advancement revoke @s only siscu:entities/wolf_curing

execute at @s positioned ^ ^1 ^1 as @n[type=wolf,predicate=siscu:entities/weakened,predicate=siscu:entities/is_zombie_wolf,distance=..10] at @s run function siscu:entities/wolf/curing

item modify entity @s weapon.mainhand siscu:decrease_1