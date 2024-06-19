data modify entity @s Leash.UUID set from entity @e[type=wandering_trader,limit=1,sort=nearest] UUID
execute store result score @s siscu.trader_timer run data get entity @e[type=minecraft:wandering_trader,limit=1,sort=nearest] DespawnDelay
scoreboard players remove @s siscu.trader_timer 1
data merge entity @s {CollarColor:11b}
tag @s add siscu.trader_entity
schedule function siscu:entities/wandering_trader/companions/despawn_schedule 1t