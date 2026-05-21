
# Return if it's a custom item
execute if data entity @s Item.components."minecraft:custom_data" run return fail

# Return if this is not the fish item
#data modify storage siscu:volatile Item set from entity @p EnderItems[{Slot:0}]
$summon item_frame ~ ~ ~ {Tags:["siscu.fishing_frame"],Item:$(Item)}
execute as @n[tag=siscu.fishing_frame] store success score x siscu.volatile if items entity @s contents #siscu:fish_replaceable
kill @n[type=item_frame,tag=siscu.fishing_frame]
execute if score x siscu.volatile matches 0 run return fail

# Replace
loot spawn ~ ~0.015 ~ fish siscu:gameplay/fishing/fish ~ ~ ~
$data merge entity @n[type=item,distance=0.01..0.02,nbt={Age:0s}] {Motion:$(Motion)}

execute unless entity @s[type=item] run return 1
kill @s[type=item]
return 1
