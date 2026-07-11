
item modify entity @s armor.chest siscu:use/reduce_stray_armor_1
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"armor.body":{"predicates":{"minecraft:damage":{"durability":0}}}}}} run item replace entity @s armor.body with air

execute at @s if score @s siscu.withering matches 10.. run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.05 5

execute unless entity @s[type=player] run return 0

execute store result storage siscu:volatile stray_advancement int 1 run scoreboard players add @s siscu.stray_armor 1
function siscu:world/withering/stray_armor_effects_macro with storage siscu:volatile
data remove storage siscu:volatile stray_advancement
