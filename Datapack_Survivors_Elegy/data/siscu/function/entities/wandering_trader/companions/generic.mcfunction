data modify entity @s leash.UUID set from entity @n[type=wandering_trader] UUID
execute store result score @s siscu.trader_timer run data get entity @n[type=wandering_trader] DespawnDelay
scoreboard players remove @s siscu.trader_timer 1
data merge entity @s {CollarColor:11b}
tag @s add siscu.trader_entity
schedule function siscu:entities/wandering_trader/companions/despawn_schedule 1t