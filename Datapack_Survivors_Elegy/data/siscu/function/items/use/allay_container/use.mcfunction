advancement revoke @s only siscu:items/use/full_allay_container

playsound minecraft:entity.allay.ambient_without_item neutral
execute at @s positioned ~ ~1.4 ~ positioned ^ ^ ^1 run summon allay
execute at @s positioned ~ ~1.4 ~ positioned ^ ^ ^1 run loot spawn ~ ~ ~ loot siscu:items/tools/allay_container
execute at @s positioned ~ ~1.4 ~ positioned ^ ^ ^1 run particle minecraft:soul_fire_flame ~ ~0.1 ~ 0.2 0.2 0.2 0.01 10

scoreboard players set x siscu.volatile 0
execute if predicate siscu:items/allay_container_full_mainhand run scoreboard players set x siscu.volatile 1

execute if score x siscu.volatile matches 1 run return run item replace entity @s weapon.mainhand with air
execute if score x siscu.volatile matches 0 run item replace entity @s weapon.offhand with air