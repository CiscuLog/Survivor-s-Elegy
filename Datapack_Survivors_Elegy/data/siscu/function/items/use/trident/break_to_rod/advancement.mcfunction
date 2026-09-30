
advancement revoke @s only siscu:items/update/broken_trident

execute at @s run summon item ~ ~ ~ {Item:{id:"lightning_rod"},Tags:["siscu.new_item"]}
execute at @s as @n[type=item,tag=siscu.new_item] run function siscu:items/use/trident/break_to_rod/item with entity @p SelectedItem
execute at @s run item replace entity @s weapon.mainhand from entity @n[type=item,tag=siscu.new_item] contents
kill @e[type=item,tag=siscu.new_item]

execute at @s run playsound minecraft:entity.item.break player @a ~ ~ ~
execute at @s run particle minecraft:item{item:"trident"} ~ ~1.5 ~ 0 0 0 0.1 5

advancement grant @s only siscu:minecraft/adventure/break_trident