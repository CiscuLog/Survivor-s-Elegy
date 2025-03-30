advancement revoke @s only siscu:items/use/enchanter_book

# return if not in mainhand
execute unless predicate siscu:items/enchanter_guide/mainhand run return 0

## reroll
# return if not enough lapis
execute unless predicate siscu:items/in_inventory/lapis_lazuli if entity @s[gamemode=!creative] run return run scoreboard players set @s siscu.enchantment_reroll 0
# return if not enough xp
execute store result score x siscu.volatile run xp query @s levels
execute unless score x siscu.volatile matches 1.. if entity @s[gamemode=!creative] run return run scoreboard players set @s siscu.enchantment_reroll 0
# ooh magic particles ooh (undergoing reroll)
execute at @s anchored eyes run particle enchant ^ ^ ^ 0.3 0.5 0.3 1 1

# buildup
schedule function siscu:items/use/enchanter_book/reset 2t replace
scoreboard players add @s siscu.enchantment_reroll 1
execute if score @s siscu.enchantment_reroll matches ..59 run return 0

# reroll!
scoreboard players set @s siscu.enchantment_reroll 0
clear @s[gamemode=!creative] lapis_lazuli 1
xp add @s[gamemode=!creative] -1 levels
execute at @s run playsound block.enchantment_table.use player @a ~ ~ ~

function siscu:items/use/enchanter_book/reroll