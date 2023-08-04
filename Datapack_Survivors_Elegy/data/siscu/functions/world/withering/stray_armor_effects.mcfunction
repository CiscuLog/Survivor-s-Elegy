
scoreboard players set siscu.added_damage siscu.volatile 1
function siscu:items/use/custom_armor_chest

scoreboard players add @s[type=player] siscu.stray_armor 1
execute at @s if score @s siscu.withering matches 10.. run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.05 5

execute if score siscu.damage siscu.volatile = siscu.durability siscu.volatile at @s run particle minecraft:item leather_chestplate{CustomModelData:540010} ~ ~1.1 ~ 0.2 0.2 0.2 0.03 10
execute if score siscu.damage siscu.volatile = siscu.durability siscu.volatile at @s run playsound minecraft:entity.item.break player @a ~ ~ ~ 1 1
execute if score siscu.damage siscu.volatile = siscu.durability siscu.volatile run item replace entity @s armor.chest with air