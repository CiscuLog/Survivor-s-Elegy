# We will have one of the 8 next enchantments on the 10 enchs enchantment list. This ensures the player doesn't get the same enchantment after a reroll
execute store result score x siscu.volatile run random value 1..20
execute store result score y siscu.volatile run data get entity @s SelectedItem.components.minecraft:custom_data.SE_data.last_roll
scoreboard players set z siscu.volatile 58

# Get last roll, add 5 so it's not the same enchantment, apply offset, constrain index within the list
scoreboard players add x siscu.volatile 5
scoreboard players operation x siscu.volatile += y siscu.volatile
scoreboard players operation x siscu.volatile %= z siscu.volatile

# Store the index so we can store it in the item data. Thus, in following rerolls we will know at which point of the list we are
execute store result storage siscu:volatile x int 1 run scoreboard players get x siscu.volatile

# Choose an enchantment from the global list
function siscu:items/use/enchanter_book/get_enchantment with storage siscu:volatile
function siscu:items/use/enchanter_book/enchantment_list_macro with storage siscu:volatile

# Set data
function siscu:items/use/enchanter_book/enchant with storage siscu:volatile
