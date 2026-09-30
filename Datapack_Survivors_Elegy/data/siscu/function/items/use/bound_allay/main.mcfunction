
# replace item
$function siscu:items/use/bound_allay/item_modifications {Slot:"$(Slot)"}

# summon and effects

$execute at @s positioned ~ ~1.4 ~ positioned ^ ^ ^1 run loot spawn ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:"slots",slot_source:[{type:"slot_range",slots:"$(Slot)",source:"this"}]}]}]}
$item modify entity @s $(Slot) siscu:decrease_1

execute at @s positioned ~ ~1.4 ~ positioned ^ ^ ^1 run summon allay

playsound minecraft:entity.allay.ambient_without_item neutral
execute at @s positioned ~ ~1.4 ~ positioned ^ ^ ^1 run particle minecraft:soul_fire_flame ~ ~0.1 ~ 0.2 0.2 0.2 0.01 10