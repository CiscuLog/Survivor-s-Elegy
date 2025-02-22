advancement revoke @s only siscu:items/update/dragon_egg
execute if items entity @s inventory.* minecraft:dragon_egg[minecraft:custom_data~{SE_data:{Lorified:true}}] run return 0
execute if items entity @s hotbar.* minecraft:dragon_egg[minecraft:custom_data~{SE_data:{Lorified:true}}] run return 0

execute store result score x siscu.volatile run data get entity @s Inventory[{id:"minecraft:dragon_egg",count:1}].Slot

execute if score x siscu.volatile matches ..8 run data merge storage siscu:volatile {Slot:"hotbar."}
execute unless score x siscu.volatile matches ..8 run data merge storage siscu:volatile {Slot:"inventory."}
execute unless score x siscu.volatile matches ..8 run scoreboard players remove x siscu.volatile 9

execute store result storage siscu:volatile x int 1 run scoreboard players get x siscu.volatile
data modify storage siscu:volatile Player set from storage siscu:world DragonSlayer

function siscu:items/item_modifier/dragon_egg_lore with storage siscu:volatile