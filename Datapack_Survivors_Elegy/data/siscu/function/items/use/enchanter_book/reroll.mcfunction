
# get xp
execute store result score @s siscu.volatile run xp query @s levels
execute if score @s siscu.volatile matches 30.. run scoreboard players set @s siscu.volatile 30

# Summon enchanted book
kill @e[type=item_frame,tag=siscu.enchantment]
execute at @s run summon item_frame ~ ~ ~ {Tags:["siscu.enchantment"],Silent:true}
execute at @s run scoreboard players operation @n[type=item_frame,tag=siscu.enchantment] siscu.volatile = @s siscu.volatile
execute at @s as @n[type=item_frame,tag=siscu.enchantment] run loot replace entity @s contents loot siscu:items/tools/enchanter_book_technical
execute as @n[type=item_frame,tag=siscu.enchantment] run data modify entity @s data.stored_enchantments set from entity @s Item.components.minecraft:stored_enchantments
item replace entity @n[type=item_frame,tag=siscu.enchantment] contents from entity @s weapon.mainhand
execute as @n[type=item_frame,tag=siscu.enchantment] run data modify entity @s Item.components.minecraft:stored_enchantments set from entity @s data.stored_enchantments

# Remove ingredients
execute if score @s siscu.volatile matches 30.. run function siscu:items/use/enchanter_book/clear_materials {amount:3}
execute if score @s siscu.volatile matches 20..29 run function siscu:items/use/enchanter_book/clear_materials {amount:2}
execute if score @s siscu.volatile matches 0..19 run function siscu:items/use/enchanter_book/clear_materials {amount:1}
#function siscu:items/use/enchanter_book/clear_materials {amount:1}

# Replace Item
item replace entity @s weapon.mainhand from entity @n[type=item_frame,tag=siscu.enchantment] contents

# kill enchanted book
kill @e[type=item_frame,tag=siscu.enchantment]
# Announce enchantment
function siscu:items/use/enchanter_book/announce_enchantment/start

scoreboard players reset @s siscu.volatile
