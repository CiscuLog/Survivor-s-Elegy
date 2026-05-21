
execute store result score @s siscu.entity_health run data get entity @s Health
execute if score @s siscu.entity_health matches 26.. run return 0
execute if data entity @s angry_at run return 0

execute unless entity @n[type=villager,predicate=siscu:entities/can_repair_iron_golem,distance=..50] run return fail

$execute unless data entity @s data.SE_data.home_pos run data merge entity @s {data:{SE_data:{home_pos:$(home_pos),home_radius:$(home_radius)}}

data modify entity @s home_pos set from entity @n[type=villager,predicate=siscu:entities/can_repair_iron_golem] Pos
data modify entity @s home_radius set value 2
scoreboard players set @s siscu.volatile 20
schedule function siscu:entities/iron_golem/villager_repair/schedule 2s
