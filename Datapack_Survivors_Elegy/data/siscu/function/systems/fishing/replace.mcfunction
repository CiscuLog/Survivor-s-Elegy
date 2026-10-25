
# Return if it's a custom item
execute if data entity @s Item.components."minecraft:custom_data" run return fail

# Replace if possible
execute store success score x siscu.volatile if items entity @s contents #siscu:fish_replaceable run loot replace entity @s contents fish siscu:gameplay/fishing/fish ~ ~ ~

execute if score x siscu.volatile matches 0 run return fail

return 1
