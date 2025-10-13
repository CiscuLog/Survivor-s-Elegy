
# return if there's no potions
scoreboard players set x siscu.volatile 0
execute if data storage siscu:volatile BrothCauldronData.effects[0] run scoreboard players set x siscu.volatile 1
execute if data storage siscu:volatile BrothCauldronData.food_effects[0] run scoreboard players set x siscu.volatile 1
execute if score x siscu.volatile matches 0 run return run function siscu:blocks/broth_cauldron/interact/interrupt

execute as @n[type=interaction,tag=siscu.broth_interacted] at @s run function siscu:blocks/broth_cauldron/interact/misc/milk_2

item replace entity @s[gamemode=!creative] weapon.mainhand with bucket

function siscu:blocks/broth_cauldron/interact/end