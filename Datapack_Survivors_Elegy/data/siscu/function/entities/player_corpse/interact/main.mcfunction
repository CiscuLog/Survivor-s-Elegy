
data remove entity @s interaction

return fail

# Future module, to test
# Assume: {data:{stuck_item:{item:"minecraft:iron_axe",components:[],entity:[UUID]}}
# [UUID] being an entity that will be removed when interacting
execute unless data entity @s data.stuck_item run return fail
execute unless data entity @s data.stuck_item.id run return fail
execute unless data entity @s data.stuck_item.entity run return fail
execute unless data entity @s data.stuck_item.count run data merge entity @s {data:{stuck_item:{count:1}}}
execute unless data entity @s data.stuck_item.components run data merge entity @s {data:{stuck_item:{components:[]}}}

execute at @s run function siscu:entities/player_corpse/interact/stuck_item_macro with entity @s data.stuck_item
data remove entity @s data.stuck_item
