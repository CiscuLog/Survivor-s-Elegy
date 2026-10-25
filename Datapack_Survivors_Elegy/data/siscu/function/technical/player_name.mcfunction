
# returns player name in $(output) --> (storage foo:bar data.path)

execute unless entity @s[type=player] run return fail

loot replace entity @s saddle loot siscu:items/functional/player_head
$data modify $(output) set from entity @s equipment.saddle.components.minecraft:profile.name
item replace entity @s saddle with air

return 1
