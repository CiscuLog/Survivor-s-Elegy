
# replace item
$data merge storage siscu:volatile {data:{Slot:"$(Slot)"}}
$execute store result score x siscu.volatile run data get entity @s $(Slot_raw).components."minecraft:repair_cost"
execute store result storage siscu:volatile data.cost int 1 run scoreboard players remove x siscu.volatile 100
function siscu:items/use/bound_allay/item_modifications with storage siscu:volatile data

# summon and effects

$execute at @s positioned ~ ~1.4 ~ positioned ^ ^ ^1 run loot spawn ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:"slots",slot_source:[{type:"slot_range",slots:"$(Slot)",source:"this"}]}]}]}
$item modify entity @s $(Slot) siscu:decrease_1

execute at @s positioned ~ ~1.4 ~ positioned ^ ^ ^1 run summon allay

playsound minecraft:entity.allay.ambient_without_item neutral
execute at @s positioned ~ ~1.4 ~ positioned ^ ^ ^1 run particle minecraft:soul_fire_flame ~ ~0.1 ~ 0.2 0.2 0.2 0.01 10